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
    [RoutePrefix("api/PhoneType")]
    public class PhoneTypeController : ApiController
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

                var supplierList = GetPhoneTypes(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<PhoneTypeModel> GetPhoneTypes(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<LST_PHONE_TYPE>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var phoneTypeList = entity.LST_PHONE_TYPE
                                    .Where(searchPredicate)
                                .Select(p => new PhoneTypeModel
                                {
                                    PhoneTypeId = p.PhoneTypeId,
                                    Name = p.Name,                                 
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();


                return phoneTypeList;
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
                LST_PHONE_TYPE phoneObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value.Replace("\\", string.Empty);
                        Object = Object.Trim('"');
                        phoneObj = JsonConvert.DeserializeObject<LST_PHONE_TYPE>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    LST_PHONE_TYPE phone;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var phoneEntity = entity.Set<LST_PHONE_TYPE>();
                        if (phoneObj.PhoneTypeId == 0)
                        {
                            phoneObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            phoneObj.UpdateDate = phoneObj.CreateDate;
                            phoneObj.UpdateUserId = phoneObj.CreateUserId;
                            phoneObj.IsActive = true;

                            phone = phoneEntity.Add(phoneObj);
                        }
                        else
                        {
                            phone = entity.LST_PHONE_TYPE.Find(phoneObj.PhoneTypeId);
                            phone.Name = phoneObj.Name;
                            phone.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            phone.UpdateUserId = phoneObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var phoneList = GetPhoneTypes(true);
                    return TokenManager.GenerateToken(phoneList);
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
                long phoneTypeId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        phoneTypeId = long.Parse(c.Value);
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
                        var tmpPhone = entity.LST_PHONE_TYPE.Where(p => p.PhoneTypeId == phoneTypeId).First();
                        tmpPhone.IsActive = false;
                        tmpPhone.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpPhone.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var phoneList = GetPhoneTypes(true);
                    return TokenManager.GenerateToken(phoneList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}