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
    [RoutePrefix("api/HirarachyStructure")]
    public class HirarachyStructureController : ApiController
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

                var supplierList = GetHirarachy(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<HirarachyStructureModel> GetHirarachy(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_HIRARACHY_STRUCTURE>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var brandsList = entity.GEN_HIRARACHY_STRUCTURE
                                    .Where(searchPredicate)
                                .Select(p => new HirarachyStructureModel
                                {
                                    Id = p.Id,
                                    Name = p.Name,
                                    Notes = p.Notes,
                                    Title = p.Title,
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
                GEN_HIRARACHY_STRUCTURE hObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        hObj = JsonConvert.DeserializeObject<GEN_HIRARACHY_STRUCTURE>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_HIRARACHY_STRUCTURE brand;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var brandEntity = entity.Set<GEN_HIRARACHY_STRUCTURE>();
                        if (hObj.Id == 0)
                        {
                            hObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            hObj.UpdateDate = hObj.CreateDate;
                            hObj.UpdateUserId = hObj.CreateUserId;
                            hObj.IsActive = true;

                            brand = brandEntity.Add(hObj);
                        }
                        else
                        {
                            brand = entity.GEN_HIRARACHY_STRUCTURE.Find(hObj.Id);
                            brand.Name = hObj.Name;
                            brand.Title = hObj.Title;
                            brand.Notes = hObj.Notes;
                            brand.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            brand.UpdateUserId = hObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var jobList = GetHirarachy(true);
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
                        var tmpJob = entity.GEN_HIRARACHY_STRUCTURE.Where(p => p.Id == jobId).First();
                        tmpJob.IsActive = false;
                        tmpJob.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpJob.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var jobList = GetHirarachy(true);
                    return TokenManager.GenerateToken(jobList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }

        [HttpPost]
        [Route("getMaxhirarachyId")]
        public string getMaxhirarachyId(string token)
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
                    var item = entity.GEN_HIRARACHY_STRUCTURE.Count();
                    if (item > 0)
                        maxId = entity.GEN_HIRARACHY_STRUCTURE.Select(x => x.Id).Max();
                    maxId++;

                    return TokenManager.GenerateToken(maxId.ToString());

                }
            }
        }
    }
}