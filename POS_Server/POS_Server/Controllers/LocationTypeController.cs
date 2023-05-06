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
    [RoutePrefix("api/LocationType")]
    public class LocationTypeController : ApiController
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

                var typeList = GetLocationTypes(isActive);
                return TokenManager.GenerateToken(typeList);
            }
        }

        public List<LocationTypeModel> GetLocationTypes(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<LST_LOCATION_TYPE>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var locationTypeList = entity.LST_LOCATION_TYPE
                                    .Where(searchPredicate)
                                .Select(p => new LocationTypeModel
                                {
                                    LocationTypeId = p.LocationTypeId,
                                    Name = p.Name,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();


                return locationTypeList;
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
                LST_LOCATION_TYPE typeObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value.Replace("\\", string.Empty);
                        Object = Object.Trim('"');
                        typeObj = JsonConvert.DeserializeObject<LST_LOCATION_TYPE>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    LST_LOCATION_TYPE type;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var typeEntity = entity.Set<LST_LOCATION_TYPE>();
                        if (typeObj.LocationTypeId == 0)
                        {
                            typeObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            typeObj.UpdateDate = typeObj.CreateDate;
                            typeObj.UpdateUserId = typeObj.CreateUserId;
                            typeObj.IsActive = true;

                            type = typeEntity.Add(typeObj);
                        }
                        else
                        {
                            type = entity.LST_LOCATION_TYPE.Find(typeObj.LocationTypeId);
                            type.Name = typeObj.Name;
                            type.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            type.UpdateUserId = typeObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var typeList = GetLocationTypes(true);
                    return TokenManager.GenerateToken(typeList);
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
                        var tmpType = entity.LST_LOCATION_TYPE.Where(p => p.LocationTypeId == typeId).First();
                        tmpType.IsActive = false;
                        tmpType.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpType.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var typeList = GetLocationTypes(true);
                    return TokenManager.GenerateToken(typeList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}