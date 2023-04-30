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
    [RoutePrefix("api/Item")]
    public class ItemController : ApiController
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

                var itemsList = GetItems(isActive);
                return TokenManager.GenerateToken(itemsList);
            }
        }

        public List<ItemModel> GetItems(bool? isActive)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_ITEM>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                var itemsList = entity.GEN_ITEM
                                    .Where(searchPredicate)
                                .Select(p => new ItemModel
                                {
                                    ItemId=p.ItemId,
                                    EngName=p.EngName,
                                    ShortName=p.ShortName,
                                    Name = p.Name,
                                    Code = p.Code,
                                    CategoryId = p.CategoryId,
                                    CommitteeNo = p.CommitteeNo,
                                    ConsumerDiscPerc=p.ConsumerDiscPerc,
                                    ConsumerProfitPerc = p.ConsumerProfitPerc,
                                    Cost = p.Cost,
                                    MainCost = p.MainCost,
                                    Price =p.Price,
                                    MainPrice = p.MainPrice,
                                    DiscPerc=p.DiscPerc,
                                    UnitId=p.UnitId,
                                    IsWeight=p.IsWeight,
                                    ItemStatus=p.ItemStatus,
                                    ItemReceiptType=p.ItemReceiptType,
                                    ItemType=p.ItemType,
                                    ItemTransactionType=p.ItemTransactionType,
                                    PackageUnit=p.PackageUnit,
                                    PackageWeight = p.PackageWeight,
                                    SupId=p.SupId,
                                    SupSectorId = p.SupSectorId,
                                    WholesaleDiscPerc=p.WholesaleDiscPerc,
                                    WholesalePrice = p.WholesalePrice,
                                    WholesaleProfitPerc = p.WholesaleProfitPerc,
                                    QtyMax = p.QtyMax,
                                    QtyMin =p.QtyMin,
                                    IsContainExpiryDate=p.IsContainExpiryDate,
                                    IsSellNotAllow=p.IsSellNotAllow,

                                    Factor = p.Factor,
                                    FreePerc = p.FreePerc,
                                    IsSpecialOffer=p.IsSpecialOffer,
                                    OfferEndDate = p.OfferEndDate,
                                    CountryId = p.CountryId,
                                    BrandId = p.BrandId,
                                    Notes = p.Notes,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,

                                    ItemUnits = entity.GEN_ITEM_UNIT.Where(x => x.ItemId == p.ItemId)
                                                .Select(x => new ItemUnitModel()
                                                {
                                                    UnitId= x.UnitId,
                                                    Barcode=x.Barcode,
                                                    BarcodeType=x.BarcodeType,
                                                    CreateDate=x.CreateDate,
                                                    UpdateDate=x.UpdateDate,
                                                    CreateUserId=x.CreateUserId,
                                                    IsActive=x.IsActive,
                                                    IsBlocked=x.IsBlocked,
                                                    ItemId=x.ItemId,
                                                    ItemUnitId=x.ItemUnitId,
                                                    UpdateUserId=x.UpdateUserId,
                                                }).ToList(),
                                }).ToList();


                return itemsList;
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
                GEN_ITEM itemObj = null;
                ItemModel itemModel = null;
                bool isNew = false;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        itemObj = JsonConvert.DeserializeObject<GEN_ITEM>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        itemModel = JsonConvert.DeserializeObject<ItemModel>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    GEN_ITEM item;
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var itemEntity = entity.Set<GEN_ITEM>();
                        if (itemObj.ItemId == 0)
                        {
                            isNew = true;

                            itemObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            itemObj.UpdateDate = itemObj.CreateDate;
                            itemObj.UpdateUserId = itemObj.CreateUserId;
                            itemObj.IsActive = true;

                            item = itemEntity.Add(itemObj);
                        }
                        else
                        {
                            item = entity.GEN_ITEM.Find(itemObj.ItemId);
                            item.EngName = itemObj.EngName;
                            item.ShortName = itemObj.ShortName;
                            item.Name = itemObj.Name;
                            item.Code = itemObj.Code;
                            item.CategoryId = itemObj.CategoryId;
                            item.CommitteeNo = itemObj.CommitteeNo;
                            item.ConsumerDiscPerc = itemObj.ConsumerDiscPerc;
                            item.ConsumerProfitPerc = itemObj.ConsumerProfitPerc;
                            item.Cost = itemObj.Cost;
                            item.MainCost = itemObj.MainCost;
                            item.Price = itemObj.Price;
                            item.MainPrice = itemObj.MainPrice;
                            item.DiscPerc = itemObj.DiscPerc;
                            item.UnitId = itemObj.UnitId;
                            item.IsWeight = itemObj.IsWeight;
                            item.ItemStatus = itemObj.ItemStatus;
                            item.ItemReceiptType = itemObj.ItemReceiptType;
                            item.ItemType = itemObj.ItemType;
                            item.ItemTransactionType = itemObj.ItemTransactionType;
                            item.PackageUnit = itemObj.PackageUnit;
                            item.PackageWeight = itemObj.PackageWeight;
                            item.SupId = itemObj.SupId;
                            item.SupSectorId = itemObj.SupSectorId;
                            item.WholesaleDiscPerc = itemObj.WholesaleDiscPerc;
                            item.WholesalePrice = itemObj.WholesalePrice;
                            item.WholesaleProfitPerc = itemObj.WholesaleProfitPerc;
                            item.QtyMax = itemObj.QtyMax;
                            item.QtyMin = itemObj.QtyMin;
                            item.IsContainExpiryDate = itemObj.IsContainExpiryDate;
                            item.IsSellNotAllow = itemObj.IsSellNotAllow;

                            item.Factor = itemObj.Factor;
                            item.FreePerc = itemObj.FreePerc;
                            item.IsSpecialOffer = itemObj.IsSpecialOffer;
                            item.OfferEndDate = itemObj.OfferEndDate;
                            item.CountryId = itemObj.CountryId;
                            item.BrandId = itemObj.BrandId;
                            item.Notes = itemObj.Notes;

                            item.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            item.UpdateUserId = itemObj.UpdateUserId;
                        }
                       long itemId = entity.SaveChanges();

                        if (isNew)
                        {

                            item.Code = generateItemCode((long)itemObj.SupId, itemId);
                            entity.SaveChanges();
                        }
                    }

                    #region save item units
                    if(itemModel.ItemUnits != null)
                    {

                    }
                    #endregion
                    var itemsList = GetItems(true);
                    return TokenManager.GenerateToken(itemsList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);

                }
            }
        }

        [NonAction]
        private string generateItemCode(long supId,long itemId)
        {
            var itemCode = supId.ToString().PadRight(4,'0')+itemId.ToString().PadRight(4,'0');
            
            return itemCode;
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
                long itemId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemId")
                    {
                        itemId = long.Parse(c.Value);
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
                        var tmpItem= entity.GEN_ITEM.Where(p => p.ItemId == itemId).First();
                        tmpItem.IsActive = false;
                        tmpItem.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        tmpItem.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    var itemsList = GetItems(true);
                    return TokenManager.GenerateToken(itemsList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);
                }

            }

        }
    }
}