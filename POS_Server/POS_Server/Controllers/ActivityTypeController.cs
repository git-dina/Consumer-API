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
    [RoutePrefix("api/ActivityType")]
    public class ActivityTypeController : ApiController
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

                var typesList = GetActivityTypes(isActive);
                return TokenManager.GenerateToken(typesList);
            }
        }

        public List<ActivityTypeModel> GetActivityTypes(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<CUS_ACTIVITY_TYPE>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var brandsList = entity.CUS_ACTIVITY_TYPE
                                    .Where(searchPredicate)
                                .Select(p => new ActivityTypeModel
                                {
                                    Id = p.Id,
                                    ParentTypeId = p.ParentTypeId,
                                    Name = p.Name,
                                   IsFinal = p.IsFinal,
                                    IsBlocked =  p.IsBlocked,
                                   Notes = p.Notes,
                                   OnlyFamilyCardHolder = p.OnlyFamilyCardHolder,
                                   OnlyOneActivity = p.OnlyOneActivity,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();


                return brandsList;
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
                CUS_ACTIVITY_TYPE typeObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        typeObj = JsonConvert.DeserializeObject<CUS_ACTIVITY_TYPE>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    CUS_ACTIVITY_TYPE brand;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var typeEntity = entity.Set<CUS_ACTIVITY_TYPE>();
                        if (typeObj.Id == 0)
                        {
                            typeObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            typeObj.UpdateDate = typeObj.CreateDate;
                            typeObj.UpdateUserId = typeObj.CreateUserId;
                            typeObj.IsActive = true;

                            brand = typeEntity.Add(typeObj);
                        }
                        else
                        {
                            brand = entity.CUS_ACTIVITY_TYPE.Find(typeObj.Id);
                            brand.Name = typeObj.Name;
                            brand.ParentTypeId = typeObj.ParentTypeId;
                            brand.IsFinal = typeObj.IsFinal;
                            brand.IsBlocked = typeObj.IsBlocked;
                            brand.OnlyOneActivity = typeObj.OnlyOneActivity;
                            brand.Notes = typeObj.Notes;
                            brand.OnlyFamilyCardHolder = typeObj.OnlyFamilyCardHolder;
                            brand.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            brand.UpdateUserId = typeObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var typesList = GetActivityTypes(true);
                    return TokenManager.GenerateToken(typesList);
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
                        var tmpJob = entity.CUS_ACTIVITY_TYPE.Where(p => p.Id == typeId).First();
                        tmpJob.IsActive = false;
                        tmpJob.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpJob.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var jobList = GetActivityTypes(true);
                    return TokenManager.GenerateToken(jobList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }

        [HttpPost]
        [Route("GetMaxTypeId")]
        public string GetMaxTypeId(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {

                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {
                    long maxId = 0;
                    var item = entity.CUS_ACTIVITY_TYPE.Count();
                    if (item > 0)
                        maxId = entity.CUS_ACTIVITY_TYPE.Select(x => x.Id).Max();
                    maxId++;

                    return TokenManager.GenerateToken(maxId.ToString());

                }
            }
        }
    }
}