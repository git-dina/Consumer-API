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
    [RoutePrefix("api/ItemCategory")]
    public class ItemCategoryController : ApiController
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

                var supplierList = GetCategories(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }
        public List<ItemCategoryModel> GetCategories(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_ITEM_CATEGORY>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var mainCatList = entity.GEN_ITEM_CATEGORY
                                    .Where(searchPredicate)
                                .Select(p => new ItemCategoryModel
                                {
                                    CategoryId = p.CategoryId,
                                    CategoryParentId = p.CategoryParentId,
                                    Name = p.Name,
                                    CategoryParentName = entity.GEN_ITEM_CATEGORY.Where(x => x.CategoryParentId == p.CategoryId).Select(x => x.Name).FirstOrDefault(),
                                    WholesalePercentage = p.WholesalePercentage,
                                    DiscountPercentage = p.DiscountPercentage,
                                    FreePercentage = p.FreePercentage,
                                    ProfitPercentage = p.ProfitPercentage,
                                    CanContainItems = p.CanContainItems,
                                    IsBlocked = p.IsBlocked,
                                    Notes = p.Notes,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();

                return mainCatList;
            }
        }

        [HttpPost]
        [Route("GetTree")]
        public string GetTree(string token)
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

                var supplierList = GetCategoriesTree(isActive);
                return TokenManager.GenerateToken(supplierList);
            }
        }
        public List<ItemCategoryModel> GetCategoriesTree(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_ITEM_CATEGORY>();
                searchPredicate = searchPredicate.And(x => x.CategoryParentId == null);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var mainCatList = entity.GEN_ITEM_CATEGORY
                                    .Where(searchPredicate)
                                .Select(p => new ItemCategoryModel
                                {
                                    CategoryId = p.CategoryId,
                                    CategoryParentId = p.CategoryParentId,
                                    Name = p.Name,
                                    WholesalePercentage = p.WholesalePercentage,
                                    DiscountPercentage = p.DiscountPercentage,
                                    FreePercentage = p.FreePercentage,
                                    ProfitPercentage = p.ProfitPercentage,
                                    CanContainItems = p.CanContainItems,
                                    IsBlocked = p.IsBlocked,
                                    Notes = p.Notes,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                }).ToList();

                foreach(var row in mainCatList)
                {
                    row.SubCategories = getSubCategories(row.CategoryId,isActive);
                }

                return mainCatList;
            }
        }

        private List<ItemCategoryModel> getSubCategories(long parentCategoryId, bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_ITEM_CATEGORY>();
                searchPredicate = searchPredicate.And(x => x.CategoryParentId == parentCategoryId);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var mainCatList = entity.GEN_ITEM_CATEGORY
                                   .Where(searchPredicate)
                               .Select(p => new ItemCategoryModel
                               {
                                   CategoryId = p.CategoryId,
                                   CategoryParentId = p.CategoryParentId,
                                   Name = p.Name,
                                   WholesalePercentage = p.WholesalePercentage,
                                   DiscountPercentage = p.DiscountPercentage,
                                   FreePercentage = p.FreePercentage,
                                   ProfitPercentage = p.ProfitPercentage,
                                   CanContainItems = p.CanContainItems,
                                   IsBlocked = p.IsBlocked,
                                   Notes = p.Notes,
                                   IsActive = p.IsActive,
                                   CreateDate = p.CreateDate,
                                   UpdateDate = p.UpdateDate,
                                   CreateUserId = p.CreateUserId,
                                   UpdateUserId = p.UpdateUserId,
                               }).ToList();

                foreach (var row in mainCatList)
                {
                    row.SubCategories = getSubCategories(row.CategoryId,isActive);
                }

                return mainCatList;
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
                GEN_ITEM_CATEGORY catObj = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        catObj = JsonConvert.DeserializeObject<GEN_ITEM_CATEGORY>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_ITEM_CATEGORY category;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var catEntity = entity.Set<GEN_ITEM_CATEGORY>();
                        bool profitPercentageChanged = false;

                        if (catObj.CategoryId == 0)
                        {
                            catObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            catObj.UpdateDate = catObj.CreateDate;
                            catObj.UpdateUserId = catObj.CreateUserId;
                            catObj.IsActive = true;

                            category = catEntity.Add(catObj);
                        }
                        else
                        {
                            category = entity.GEN_ITEM_CATEGORY.Find(catObj.CategoryId);

                            if (category.ProfitPercentage != catObj.ProfitPercentage)
                                profitPercentageChanged = true;

                            category.Name = catObj.Name;
                            category.CategoryParentId = catObj.CategoryParentId;
                            category.CanContainItems = catObj.CanContainItems;
                            category.DiscountPercentage = catObj.DiscountPercentage;
                            category.FreePercentage = catObj.FreePercentage;
                            category.ProfitPercentage = catObj.ProfitPercentage;
                            category.WholesalePercentage = catObj.WholesalePercentage;
                            category.IsBlocked = catObj.IsBlocked;
                            category.Notes = catObj.Notes;
                            category.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            category.UpdateUserId = catObj.UpdateUserId;
                        }
                        entity.SaveChanges();

                        if(profitPercentageChanged)
                        {
                            var items = entity.GEN_ITEM.Where(x => x.CategoryId == category.CategoryId).ToList();
                            foreach(var item in items)
                            {
                                decimal peicePrice = 0;
                                decimal cost = item.MainCost;
                                //سعر بيع الحبة
                                if (category.ProfitPercentage != 0)
                                    peicePrice = cost / (int)item.Factor * (1 + HelpClass.calcPercentage(1, category.ProfitPercentage));
                                else
                                    peicePrice = cost / (int)item.Factor;

                                //صافي بيع الحبة
                               decimal finalPrice = peicePrice;
                                if (category.DiscountPercentage != 0)
                                {
                                    var discount = peicePrice - HelpClass.calcPercentage(peicePrice, 100 + category.DiscountPercentage);
                                    finalPrice = peicePrice - Math.Abs(discount);
                                }
                                if (finalPrice < 0)
                                    finalPrice = 0;

                                //wholesale price سعر الجملة
                                var wholesalePrice = cost / (int)item.Factor * (1 + HelpClass.calcPercentage(1, category.WholesalePercentage));

                                item.Cost = cost;
                                item.Price = finalPrice;
                                item.WholesalePrice = wholesalePrice;
                            }
                            entity.SaveChanges();
                        }
                    }

                    var phoneList = GetCategories(true);
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
                long categoryId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        categoryId = long.Parse(c.Value);
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
                        var tmpPhone = entity.GEN_ITEM_CATEGORY.Where(p => p.CategoryId == categoryId).First();
                        tmpPhone.IsActive = false;
                        tmpPhone.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpPhone.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var phoneList = GetCategoriesTree(true);
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