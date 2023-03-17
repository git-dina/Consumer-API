using LinqKit;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Models;
using POS_Server.Models.VM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Web;
using System.Web.Http;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/SupplierDocType")]
    public class SupplierDocTypeController : ApiController
    {
        CountriesController cc = new CountriesController();
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

                var supplierList = GetTypes(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<SupplierDocTypeModel> GetTypes(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<LST_SUPPLIER_DOCUMENT_TYPE>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var countriesList = entity.LST_SUPPLIER_DOCUMENT_TYPE
                                    .Where(searchPredicate)
                                .Select(p => new SupplierDocTypeModel
                                {
                                    TypeId = p.TypeId,
                                    Name = p.Name,
                                    Notes = p.Notes,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                    DocumentsNumber = entity.GEN_SUPPLIER_DOCUMENT.Where(x => x.TypeId == p.TypeId && x.IsActive == true).Count(),
                                }).ToList();


                return countriesList;
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
                string Object = "";
                LST_SUPPLIER_DOCUMENT_TYPE typeObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        typeObj = JsonConvert.DeserializeObject<LST_SUPPLIER_DOCUMENT_TYPE>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    LST_SUPPLIER_DOCUMENT_TYPE sup;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var typeEntity = entity.Set<LST_SUPPLIER_DOCUMENT_TYPE>();
                        if (typeObj.TypeId == 0)
                        {
                            typeObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            typeObj.UpdateDate = typeObj.CreateDate;
                            typeObj.UpdateUserId = typeObj.CreateUserId;
                            typeObj.IsActive = true;

                            sup = typeEntity.Add(typeObj);
                        }
                        else
                        {
                            sup = entity.LST_SUPPLIER_DOCUMENT_TYPE.Find(typeObj.TypeId);
                            sup.Name = typeObj.Name;
                            sup.Notes = typeObj.Notes;
                            sup.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            sup.UpdateUserId = typeObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var supList = GetTypes(true);
                    return TokenManager.GenerateToken(supList);
                }
                catch
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
                long typeId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        typeId = long.Parse(c.Value);
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
                        var tmpAgent = entity.LST_SUPPLIER_DOCUMENT_TYPE.Where(p => p.TypeId == typeId).First();
                        tmpAgent.IsActive = false;
                        tmpAgent.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpAgent.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var supList = GetTypes(true);
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