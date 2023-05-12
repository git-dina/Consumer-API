using POS_Server.Controllers;
using POS_Server.Models.VM;
using LinqKit;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Web;
using System.Web.Http;
using System.Data.Entity.Validation;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/SupplierGroup")]
    public class SupplierGroupController : ApiController
    {
        CountriesController cc = new CountriesController();
        // GET api/<controller>
        [HttpPost]
        [Route("Get")]
        public string Get(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            bool? isActive = null;
  
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "isActive")
                    {
                        if (c.Value != "")
                            isActive = bool.Parse(c.Value);
                    }
                }

                var supplierList = GetSupllierGroups(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<SupplierGroupModel> GetSupllierGroups(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<LST_SUPPLIER_GROUP>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var supplierGroupList = entity.LST_SUPPLIER_GROUP
                                    .Where(searchPredicate)
                                .Select(p => new SupplierGroupModel
                                {
                                    SupplierGroupId=p.SupplierGroupId,
                                    Name=p.Name,
                                    ParentGroupId = p.ParentGroupId,
                                    Notes= p.Notes,
                                    IsBlocked = p.IsBlocked,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();


                foreach(var row in supplierGroupList)
                {
                    var hasSupplier = entity.GEN_SUPPLIER.Where(x => x.IsActive == true).FirstOrDefault();
                    if (hasSupplier != null)
                        row.HasSuppliers = true;
                }
                return supplierGroupList;
            }
        }

        [HttpPost]
        [Route("Save")]
        public string Save(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string groupObject = "";
                LST_SUPPLIER_GROUP subObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        groupObject = c.Value.Replace("\\", string.Empty);
                        groupObject = groupObject.Trim('"');
                        subObj = JsonConvert.DeserializeObject<LST_SUPPLIER_GROUP>(groupObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    LST_SUPPLIER_GROUP sup;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var supEntity = entity.Set<LST_SUPPLIER_GROUP>();
                        if (subObj.SupplierGroupId == 0)
                        {
                            subObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            subObj.UpdateDate = subObj.CreateDate;
                            subObj.UpdateUserId = subObj.CreateUserId;
                            subObj.IsActive = true;

                            sup = supEntity.Add(subObj);
                        }
                        else
                        {
                            sup = entity.LST_SUPPLIER_GROUP.Find(subObj.SupplierGroupId);
                            sup.Name = subObj.Name;
                            sup.ParentGroupId = subObj.ParentGroupId;
                            sup.IsBlocked = subObj.IsBlocked;
                            sup.Notes = subObj.Notes;
                            sup.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            sup.UpdateUserId = subObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var supList = GetSupllierGroups(true);
                    return TokenManager.GenerateToken(supList);
                }
                catch (DbEntityValidationException e)
                {
                    return TokenManager.GenerateToken(null);
                }
            }
        }

        [HttpPost]
        [Route("Delete")]
        public string Delete(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string message = "";
            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long supGroupId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        supGroupId = long.Parse(c.Value);
                    }
                    else if (c.Type == "userId")
                    {
                        userId = long.Parse(c.Value);
                    }
                }
                try
                {
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var tmpAgent = entity.LST_SUPPLIER_GROUP.Where(p => p.SupplierGroupId == supGroupId).First();
                        tmpAgent.IsActive = false;
                        tmpAgent.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpAgent.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var supList = GetSupllierGroups(true);
                    return TokenManager.GenerateToken(supList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}