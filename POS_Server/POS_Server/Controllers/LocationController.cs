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
    [RoutePrefix("api/Location")]
    public class LocationController : ApiController
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

                var locationList = GetLocations(isActive);
                return TokenManager.GenerateToken(locationList);
            }
        }

        public List<LocationModel> GetLocations(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_LOCATION>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var locationsList = entity.GEN_LOCATION
                                    .Where(searchPredicate)
                                .Select(p => new LocationModel
                                {
                                    LocationId = p.LocationId,
                                    LocationNumber = p.LocationNumber,
                                    LocationTypeId = p.LocationTypeId,
                                    LocationTypeName = p.LST_LOCATION_TYPE.Name,
                                    Name = p.Name,
                                    Address = p.Address,
                                    Notes = p.Notes,
                                    IsBlocked = p.IsBlocked,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,

                                    ACC_09=p.ACC_09,
                                    ACC_10=p.ACC_10,
                                    AsjustmentCode = p.AsjustmentCode,
                                    CustodyAccount = p.CustodyAccount,
                                    CustodyControlAccount = p.CustodyControlAccount,
                                    DamageCode = p.DamageCode,
                                    DiscCode = p.DiscCode,
                                    DisplayOrder = p.DisplayOrder,
                                    FreeCode = p.FreeCode,
                                    IsContainTecs = p.IsContainTecs,
                                    IsDirectItemConnect = p.IsDirectItemConnect,
                                    IsDirectReceive = p.IsDirectReceive,
                                    IsReadOnly = p.IsReadOnly,
                                    PLocationID = p.PLocationID,
                                    PurCashCode = p.PurCashCode,
                                    PurCode = p.PurCode,
                                    ReturnCode=p.ReturnCode,
                                    SaleCashCode = p.SaleCashCode,
                                    SaleCode= p.SaleCode,
                                    SalesReturnCode = p.SalesReturnCode,
                                    SaleVISACode = p.SaleVISACode,
                                    ServiceCode = p.ServiceCode,
                                    SupClearanceStartDate = p.SupClearanceStartDate,
                                    Teccode= p.Teccode,
                                    ZReadExtrasCode = p.ZReadExtrasCode,
                                }).ToList();


                return locationsList;
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
                GEN_LOCATION locationObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        locationObj = JsonConvert.DeserializeObject<GEN_LOCATION>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_LOCATION location;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var locEntity = entity.Set<GEN_LOCATION>();
                        if (locationObj.LocationId == 0)
                        {
                            locationObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            locationObj.UpdateDate = locationObj.CreateDate;
                            locationObj.UpdateUserId = locationObj.CreateUserId;
                            locationObj.IsActive = true;

                            location = locEntity.Add(locationObj);
                        }
                        else
                        {
                            location = entity.GEN_LOCATION.Find(locationObj.LocationId);
                            location.Name = locationObj.Name;
                            location.LocationNumber = locationObj.LocationNumber;
                            location.Address = locationObj.Address;
                            location.Notes = locationObj.Notes;
                            location.IsBlocked = locationObj.IsBlocked;
                            location.LocationTypeId = locationObj.LocationTypeId;
                            location.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            location.UpdateUserId = locationObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var locationsList = GetLocations(true);
                    return TokenManager.GenerateToken(locationsList);
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
                long locationId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        locationId = long.Parse(c.Value);
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
                        var tmpLoc = entity.GEN_LOCATION.Where(p => p.LocationId == locationId).First();
                        tmpLoc.IsActive = false;
                        tmpLoc.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpLoc.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var locationsList = GetLocations(true);
                    return TokenManager.GenerateToken(locationsList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}