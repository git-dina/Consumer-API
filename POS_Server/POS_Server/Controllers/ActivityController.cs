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
    [RoutePrefix("api/Activity")]
    public class ActivityController : ApiController
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

                var lst = GetActivities(isActive);
                return TokenManager.GenerateToken(lst);
            }
        }

        public List<ActivityModel> GetActivities(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<CUS_ACTIVITY>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var brandsList = entity.CUS_ACTIVITY
                                    .Where(searchPredicate)
                                .Select(p => new ActivityModel
                                {
                                    ActivityId = p.ActivityId,
                                    Description = p.Description,
                                    BasicValue = p.BasicValue,
                                    ValueAfterDiscount = p.ValueAfterDiscount,
                                    MaximumBenefit = p.MaximumBenefit,
                                     RegestrtionCount = p.RegestrtionCount,
                                     EndDate = p.EndDate,
                                     StartDate = p.StartDate,
                                     TypeId = p.TypeId,
                                    Notes = p.Notes,
                                    IsBlocked = p.IsBlocked,
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
                CUS_ACTIVITY bankObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        bankObj = JsonConvert.DeserializeObject<CUS_ACTIVITY>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    CUS_ACTIVITY brand;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var bankEntity = entity.Set<CUS_ACTIVITY>();
                        if (bankObj.ActivityId == 0)
                        {
                            bankObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            bankObj.UpdateDate = bankObj.CreateDate;
                            bankObj.UpdateUserId = bankObj.CreateUserId;
                            bankObj.IsActive = true;

                            brand = bankEntity.Add(bankObj);
                        }
                        else
                        {
                            brand = entity.CUS_ACTIVITY.Find(bankObj.ActivityId);
                            brand.Description = bankObj.Description;
                            brand.StartDate = bankObj.StartDate;
                            brand.EndDate = bankObj.EndDate;
                            brand.BasicValue = bankObj.BasicValue;
                            brand.ValueAfterDiscount = bankObj.ValueAfterDiscount;
                            brand.RegestrtionCount = bankObj.RegestrtionCount;
                            brand.MaximumBenefit= bankObj.MaximumBenefit;
                            brand.Notes = bankObj.Notes;
                            brand.IsBlocked = bankObj.IsBlocked;
                            brand.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            brand.UpdateUserId = bankObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var lst = GetActivities(true);
                    return TokenManager.GenerateToken(lst);
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
                long activityId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        activityId = long.Parse(c.Value);
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
                        var tmpJob = entity.CUS_ACTIVITY.Where(p => p.ActivityId == activityId).First();
                        tmpJob.IsActive = false;
                        tmpJob.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpJob.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var lst = GetActivities(true);
                    return TokenManager.GenerateToken(lst);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }

        [HttpPost]
        [Route("GetMaxActivityId")]
        public string GetMaxActivityId(string token)
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
                    var item = entity.CUS_ACTIVITY.Count();
                    if (item > 0)
                        maxId = entity.CUS_ACTIVITY.Select(x => x.ActivityId).Max();
                    maxId++;

                    return TokenManager.GenerateToken(maxId.ToString());

                }
            }
        }
    }
}