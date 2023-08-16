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
    [RoutePrefix("api/Area")]
    public class AreaController : ApiController
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

                var supplierList = GetAreas(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<AreaModel> GetAreas(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_AREA>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var areasList = entity.GEN_AREA
                                    .Where(searchPredicate)
                                .Select(p => new AreaModel
                                {
                                    AreaId = p.AreaId,
                                    Name = p.Name,
                                    IsBlocked = p.IsBlocked,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                    Sections = entity.GEN_SECTION.Where(x => x.AreaId == p.AreaId && x.IsActive == true)
                                    .Select(x => new SectionModel()
                                    {
                                        AreaId = x.AreaId,
                                        Name = x.Name,
                                        SectionNum = x.SectionNum,
                                        SectionId = x.SectionId,
                                        CreateDate = x.CreateDate,
                                        UpdateDate = x.UpdateDate,
                                        CreateUserId = x.CreateUserId,
                                        UpdateUserId=x.UpdateUserId,
                                    }).ToList(),
                                }).ToList();


                return areasList;
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
                GEN_AREA areaObj = null;
                AreaModel areaModel = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        areaObj = JsonConvert.DeserializeObject<GEN_AREA>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        areaModel = JsonConvert.DeserializeObject<AreaModel>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_AREA area;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var areaEntity = entity.Set<GEN_AREA>();
                        if (areaObj.AreaId == 0)
                        {
                            areaObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            areaObj.UpdateDate = areaObj.CreateDate;
                            areaObj.UpdateUserId = areaObj.CreateUserId;
                            areaObj.IsActive = true;

                            area = areaEntity.Add(areaObj);
                        }
                        else
                        {
                            area = entity.GEN_AREA.Find(areaObj.AreaId);
                            area.Name = areaObj.Name;
                            area.IsBlocked = areaObj.IsBlocked;
                            area.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            area.UpdateUserId = areaObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                        SaveAreaSections(areaModel.Sections, area.AreaId);
                    }

                    var areaList = GetAreas(true);
                    return TokenManager.GenerateToken(areaList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);

                }
            }
        }

        public void SaveAreaSections(List<SectionModel> sections, int areaId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {

                if (sections != null)
                {
                    var sectionsIds = sections.Select(x => x.SectionId).ToList();
                    #region remove not existed sections

                    var sectionsToRemove = entity.GEN_SECTION.Where(x => x.AreaId == areaId
                                && !sectionsIds.Contains(x.SectionId)).ToList();

                    foreach (var row in sectionsToRemove)
                    {
                        row.IsActive = false;
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = row.UpdateUserId;

                        entity.SaveChanges();
                    }
                    #endregion

                    #region edit existed sections
                    var sectionsToEdit = entity.GEN_SECTION.Where(x => x.AreaId == areaId
                                    && sectionsIds.Contains(x.SectionId)).ToList();

                    foreach (var row in sectionsToEdit)
                    {
                        var sec = sections.Where(x => x.SectionId == row.SectionId).FirstOrDefault();
                        row.Name = sec.Name;
                        row.SectionNum = sec.SectionNum;
                        row.UpdateDate = DateTime.Now;
                        row.UpdateUserId = sec.UpdateUserId;
                        entity.SaveChanges();
                    }
                    #endregion


                    #region add new sections
                    var newSections = sections.Where(x => x.SectionId == 0).ToList();
                    foreach (var row in newSections)
                    {
                        var sec = new GEN_SECTION()
                        {
                            Name = row.Name,
                            IsActive = true,
                            AreaId = areaId,
                            CreateDate = DateTime.Now,
                            UpdateDate = DateTime.Now,
                            CreateUserId = row.CreateUserId,
                            UpdateUserId = row.CreateUserId,

                        };
                        entity.GEN_SECTION.Add(sec);

                        long sectionId = entity.SaveChanges();

                        entity.SaveChanges();
                    }
                    #endregion


                }
                else
                {
                    var sectionsToRemove = entity.GEN_SECTION.Where(x => x.AreaId == areaId).ToList();
                    if (sectionsToRemove.Count > 0)
                        foreach (var row in sectionsToRemove)
                        {
                            row.IsActive = false;
                            entity.SaveChanges();
                        }
                }
            }

        }

        [HttpPost]
        [Route("GetMaxAriaId")]
        public string GetMaxAriaId(string token)
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
                    var item = entity.GEN_AREA.Count();
                    if (item > 0)
                        maxId = entity.GEN_AREA.Select(x => x.AreaId).Max();
                    maxId++;

                    return TokenManager.GenerateToken(maxId.ToString());

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
                long areaId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        areaId = long.Parse(c.Value);
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
                        var tmpArea = entity.GEN_AREA.Where(p => p.AreaId == areaId).First();
                        tmpArea.IsActive = false;
                        tmpArea.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpArea.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var areaList = GetAreas(true);
                    return TokenManager.GenerateToken(areaList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}