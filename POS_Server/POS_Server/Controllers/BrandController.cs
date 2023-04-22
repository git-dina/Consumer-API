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
    [RoutePrefix("api/Brand")]
    public class BrandController : ApiController
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

                var supplierList = GetBrands(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }

        public List<BrandModel> GetBrands(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_BRAND>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var brandsList = entity.GEN_BRAND
                                    .Where(searchPredicate)
                                .Select(p => new BrandModel
                                {
                                    BrandId = p.BrandId,
                                    Name = p.Name,
                                    IsBlocked = p.IsBlocked,
                                    Notes = p.Notes,
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
                GEN_BRAND brandObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        brandObj = JsonConvert.DeserializeObject<GEN_BRAND>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_BRAND brand;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var brandEntity = entity.Set<GEN_BRAND>();
                        if (brandObj.BrandId == 0)
                        {
                            brandObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            brandObj.UpdateDate = brandObj.CreateDate;
                            brandObj.UpdateUserId = brandObj.CreateUserId;
                            brandObj.IsActive = true;

                            brand = brandEntity.Add(brandObj);
                        }
                        else
                        {
                            brand = entity.GEN_BRAND.Find(brandObj.BrandId);
                            brand.Name = brandObj.Name;
                            brand.Notes = brandObj.Notes;
                            brand.IsBlocked = brandObj.IsBlocked;
                            brand.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            brand.UpdateUserId = brandObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                    }

                    var phoneList = GetBrands(true);
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
                long brandId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        brandId = long.Parse(c.Value);
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
                        var tmpBrand = entity.GEN_BRAND.Where(p => p.BrandId == brandId).First();
                        tmpBrand.IsActive = false;
                        tmpBrand.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpBrand.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var brandList = GetBrands(true);
                    return TokenManager.GenerateToken(brandList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}