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
    [RoutePrefix("api/Unit")]
    public class UnitController : ApiController
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

                var unitsList = GetUnits(isActive);
                return TokenManager.GenerateToken(unitsList);
            }
        }

        public List<UnitModel> GetUnits(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_UNIT>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var unitsList = entity.GEN_UNIT
                                    .Where(searchPredicate)
                                .Select(p => new UnitModel
                                {
                                    UnitId = p.UnitId,
                                    Name = p.Name,
                                    MinUnitId = p.MinUnitId,
                                    UnitValue = p.UnitValue,
                                    IsBlocked = p.IsBlocked,
                                    Notes = p.Notes,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();

                foreach (var row in unitsList)
                    row.Factor = getUnitFactor(row.UnitId);
                return unitsList;
            }
        }


        //calculate factor of unit (from specific unit with unitId to smallest unit)
        private int getUnitFactor(long unitId)
        {
            int amount = 0;

            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var unit = entity.GEN_UNIT.Where(x => x.UnitId == unitId).FirstOrDefault();

                amount = unit.UnitValue;
                var smallerUnit = entity.GEN_UNIT.Where(x => x.UnitId == unit.MinUnitId  && x.IsActive == true)
                    .Select(x => new UnitModel()
                    {
                        UnitValue = x.UnitValue,
                        UnitId = x.UnitId
                    }).FirstOrDefault();
               
                while (smallerUnit != null)
                {
                    //try
                    //{
                    //    amount = (int)smallerUnit.UnitValue;
                    //}
                    //catch { }

                    //if (unitId == smallerUnit.UnitId)
                    //    return amount;
                    amount = amount * smallerUnit.UnitValue;
                     smallerUnit = entity.GEN_UNIT.Where(x => x.UnitId == smallerUnit.MinUnitId && x.IsActive == true)
                   .Select(x => new UnitModel()
                   {
                       UnitValue = x.UnitValue,
                       UnitId = x.UnitId
                   }).FirstOrDefault();
                    //amount += (int)unit.UnitValue * getUnitFactor(smallerUnit.UnitId);
                }
                if (amount == 0)
                    amount = 1;
                return amount;
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
                GEN_UNIT unitObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        unitObj = JsonConvert.DeserializeObject<GEN_UNIT>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_UNIT unit;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var tmpEntity = entity.Set<GEN_UNIT>();
                        if (unitObj.UnitId == 0)
                        {
                            unitObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            unitObj.UpdateDate = unitObj.CreateDate;
                            unitObj.UpdateUserId = unitObj.CreateUserId;
                            unitObj.IsActive = true;

                            unit = tmpEntity.Add(unitObj);
                        }
                        else
                        {
                            unit = entity.GEN_UNIT.Find(unitObj.UnitId);
                            unit.Name = unitObj.Name;
                            unit.MinUnitId = unitObj.MinUnitId;
                            unit.UnitValue = unitObj.UnitValue;
                            unit.Notes = unitObj.Notes;
                            unit.IsBlocked = unitObj.IsBlocked;
                            unit.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            unit.UpdateUserId = unitObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var unitsList = GetUnits(true);
                    return TokenManager.GenerateToken(unitsList);
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
                long unitId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        unitId = long.Parse(c.Value);
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
                        var tmpUnit = entity.GEN_UNIT.Where(p => p.UnitId == unitId).First();
                        tmpUnit.IsActive = false;
                        tmpUnit.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpUnit.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var unitsList = GetUnits(true);
                    return TokenManager.GenerateToken(unitsList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}