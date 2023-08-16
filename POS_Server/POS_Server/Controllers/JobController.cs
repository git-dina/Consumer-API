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
    [RoutePrefix("api/Job")]
    public class JobController : ApiController
    {
        // GET api/<controller>
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

                var supplierList = GetJobs(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<JobModel> GetJobs(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_JOB>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var brandsList = entity.GEN_JOB
                                    .Where(searchPredicate)
                                .Select(p => new JobModel
                                {
                                    JobId = p.JobId,
                                    Name = p.Name,
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
                GEN_JOB jobObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        jobObj = JsonConvert.DeserializeObject<GEN_JOB>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_JOB brand;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var brandEntity = entity.Set<GEN_JOB>();
                        if (jobObj.JobId == 0)
                        {
                            jobObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            jobObj.UpdateDate = jobObj.CreateDate;
                            jobObj.UpdateUserId = jobObj.CreateUserId;
                            jobObj.IsActive = true;

                            brand = brandEntity.Add(jobObj);
                        }
                        else
                        {
                            brand = entity.GEN_JOB.Find(jobObj.JobId);
                            brand.Name = jobObj.Name;
                            brand.IsBlocked = jobObj.IsBlocked;
                            brand.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            brand.UpdateUserId = jobObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var jobList = GetJobs(true);
                    return TokenManager.GenerateToken(jobList);
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
                long jobId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        jobId = long.Parse(c.Value);
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
                        var tmpJob = entity.GEN_JOB.Where(p => p.JobId == jobId).First();
                        tmpJob.IsActive = false;
                        tmpJob.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpJob.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var jobList = GetJobs(true);
                    return TokenManager.GenerateToken(jobList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }

        [HttpPost]
        [Route("GetMaxJobId")]
        public string GetMaxJobId(string token)
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
                    var item = entity.GEN_JOB.Count();
                    if (item > 0)
                        maxId = entity.GEN_JOB.Select(x => x.JobId).Max();
                    maxId++;

                    return TokenManager.GenerateToken(maxId.ToString());

                }
            }
        }
    }
}