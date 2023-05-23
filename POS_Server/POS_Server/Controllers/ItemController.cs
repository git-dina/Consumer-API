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
         [HttpPost]
        [Route("Search")]
        public string Search(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string searchText = "";

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
                    if (c.Type == "searchText")
                    {
                        if (c.Value != "")
                            searchText = c.Value;
                    }
                }

                var itemsList = GetItems(null,searchText);
                return TokenManager.GenerateToken(itemsList);
            }
        }
       
        public List<ItemModel> GetItems(bool? isActive,string searchText = "")
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<GEN_ITEM>();
                searchPredicate = searchPredicate.And(x => true);
                if (isActive != null)
                    searchPredicate = searchPredicate.And(x => x.IsActive == isActive);

                if (searchText != "")
                    searchPredicate = searchPredicate.And(s =>
                       s.Name.ToLower().Contains(searchText)
                       || s.ShortName.ToLower().Contains(searchText)
                       || s.EngName.ToLower().Contains(searchText)
                       || s.GEN_ITEM_CATEGORY.Name.ToLower().Contains(searchText)
                       || s.Code.ToLower().Contains(searchText)
                       || s.SupId.ToString() == searchText
                       || s.Factor.ToString() == searchText
                       || s.Price.ToString() == searchText
                       || s.Cost.ToString() == searchText
                       || s.GEN_SUPPLIER.Name.ToLower().Contains(searchText));

                var itemsList = entity.GEN_ITEM
                                    .Where(searchPredicate)
                                .Select(p => new ItemModel
                                {
                                    ItemId = p.ItemId,
                                    EngName = p.EngName,
                                    ShortName = p.ShortName,
                                    Name = p.Name,
                                    Code = p.Code,
                                    CategoryId = p.CategoryId,
                                    CategoryName = p.GEN_ITEM_CATEGORY.Name,
                                    CommitteeNo = p.CommitteeNo,
                                    ConsumerDiscPerc = p.ConsumerDiscPerc,
                                    ConsumerProfitPerc = p.ConsumerProfitPerc,
                                    Cost = p.Cost,
                                    MainCost = p.MainCost,
                                    Price = p.Price,
                                    MainPrice = p.MainPrice,
                                    DiscPerc = p.DiscPerc,
                                    UnitId = p.UnitId,
                                    ItemUnit = entity.GEN_UNIT.Where(x => x.UnitId == p.UnitId).Select(x => x.Name).FirstOrDefault(),                                    IsWeight = p.IsWeight,
                                    ItemStatus = p.ItemStatus,
                                    ItemReceiptType = p.ItemReceiptType,
                                    ItemType = p.ItemType,
                                    ItemTransactionType = p.ItemTransactionType,
                                    PackageUnit = p.PackageUnit,
                                    PackageWeight = p.PackageWeight,
                                    SupId = p.SupId,
                                    SupSectorId = p.SupSectorId,
                                    WholesaleDiscPerc = p.WholesaleDiscPerc,
                                    WholesalePrice = p.WholesalePrice,
                                    WholesaleProfitPerc = p.WholesaleProfitPerc,
                                    QtyMax = p.QtyMax,
                                    QtyMin = p.QtyMin,
                                    IsContainExpiryDate = p.IsContainExpiryDate,
                                    IsSellNotAllow = p.IsSellNotAllow,

                                    Factor = p.Factor,
                                    FreePerc = p.FreePerc,
                                    IsSpecialOffer = p.IsSpecialOffer,
                                    OfferEndDate = p.OfferEndDate,
                                    CountryId = p.CountryId,
                                    BrandId = p.BrandId,
                                    Notes = p.Notes,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,

                                    ItemUnits = entity.GEN_ITEM_UNIT.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                .Select(x => new ItemUnitModel()
                                                {
                                                    UnitId = x.UnitId,
                                                    Barcode = x.Barcode,
                                                    BarcodeType = x.BarcodeType,
                                                    Cost=x.Cost,
                                                    Factor = x.Factor,
                                                    SalePrice=x.SalePrice,
                                                    CreateDate = x.CreateDate,
                                                    UpdateDate = x.UpdateDate,
                                                    CreateUserId = x.CreateUserId,
                                                    IsActive = x.IsActive,
                                                    IsBlocked = x.IsBlocked,
                                                    ItemId = x.ItemId,
                                                    ItemUnitId = x.ItemUnitId,
                                                    UpdateUserId = x.UpdateUserId,
                                                }).ToList(),
                                    ItemGeneralizations = entity.GEN_ITEM_GENERALIZATION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                .Select(x => new ItemGeneralizationModel()
                                                {
                                                    Id = x.Id,
                                                    ItemId = x.ItemId,
                                                    GeneralizationYear =    x.GeneralizationYear,
                                                    GeneralizationNo =  x.GeneralizationNo,
                                                    CreateDate = x.CreateDate,
                                                    UpdateDate = x.UpdateDate,
                                                }).ToList(),
                                    ItemAllowedTransactions = entity.GEN_ITEM_ALLOWED_TRANSACTION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                            .Select(x => new ItemAllowedTransModel() { 
                                                                Id = x.Id,
                                                                ItemId = x.ItemId,
                                                                 Transaction = x.Transaction,
                                                            }).ToList(),
                                    ItemLocations = entity.GEN_ITEM_LOCATION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                    .Select(x => new ItemLocationModel()
                                                    {
                                                        ItemLocationId = x.ItemLocationId,
                                                        LocationName = x.GEN_LOCATION.Name,
                                                        LocationId = x.LocationId,
                                                        ItemId = x.ItemId,
                                                        Max_Qty = x.Max_Qty,
                                                        Min_Qty = x.Min_Qty,
                                                    }).ToList(),
                                    Supplier = new SupplierModel() {
                                        SupId = p.GEN_SUPPLIER.SupId,
                                        Name = p.GEN_SUPPLIER.Name, },
                                }).ToList();


                return itemsList;
            }
        }
         public ItemModel GetItem(long itemId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
              
                var itemsList = entity.GEN_ITEM
                                    .Where(p => p.ItemId == itemId)
                                .Select(p => new ItemModel
                                {
                                    ItemId = p.ItemId,
                                    EngName = p.EngName,
                                    ShortName = p.ShortName,
                                    Name = p.Name,
                                    Code = p.Code,
                                    CategoryId = p.CategoryId,
                                    CategoryName = p.GEN_ITEM_CATEGORY.Name,
                                    CommitteeNo = p.CommitteeNo,
                                    ConsumerDiscPerc = p.ConsumerDiscPerc,
                                    ConsumerProfitPerc = p.ConsumerProfitPerc,
                                    Cost = p.Cost,
                                    MainCost = p.MainCost,
                                    Price = p.Price,
                                    MainPrice = p.MainPrice,
                                    DiscPerc = p.DiscPerc,
                                    UnitId = p.UnitId,
                                    ItemUnit = entity.GEN_UNIT.Where(x => x.UnitId == p.UnitId).Select(x => x.Name).FirstOrDefault(),                                    IsWeight = p.IsWeight,
                                    ItemStatus = p.ItemStatus,
                                    ItemReceiptType = p.ItemReceiptType,
                                    ItemType = p.ItemType,
                                    ItemTransactionType = p.ItemTransactionType,
                                    PackageUnit = p.PackageUnit,
                                    PackageWeight = p.PackageWeight,
                                    SupId = p.SupId,
                                    SupSectorId = p.SupSectorId,
                                    WholesaleDiscPerc = p.WholesaleDiscPerc,
                                    WholesalePrice = p.WholesalePrice,
                                    WholesaleProfitPerc = p.WholesaleProfitPerc,
                                    QtyMax = p.QtyMax,
                                    QtyMin = p.QtyMin,
                                    IsContainExpiryDate = p.IsContainExpiryDate,
                                    IsSellNotAllow = p.IsSellNotAllow,

                                    Factor = p.Factor,
                                    FreePerc = p.FreePerc,
                                    IsSpecialOffer = p.IsSpecialOffer,
                                    OfferEndDate = p.OfferEndDate,
                                    CountryId = p.CountryId,
                                    BrandId = p.BrandId,
                                    Notes = p.Notes,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,

                                    ItemUnits = entity.GEN_ITEM_UNIT.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                .Select(x => new ItemUnitModel()
                                                {
                                                    UnitId = x.UnitId,
                                                    Barcode = x.Barcode,
                                                    BarcodeType = x.BarcodeType,
                                                    Cost=x.Cost,
                                                    Factor = x.Factor,
                                                    SalePrice=x.SalePrice,
                                                    CreateDate = x.CreateDate,
                                                    UpdateDate = x.UpdateDate,
                                                    CreateUserId = x.CreateUserId,
                                                    IsActive = x.IsActive,
                                                    IsBlocked = x.IsBlocked,
                                                    ItemId = x.ItemId,
                                                    ItemUnitId = x.ItemUnitId,
                                                    UpdateUserId = x.UpdateUserId,
                                                }).ToList(),
                                    ItemGeneralizations = entity.GEN_ITEM_GENERALIZATION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                .Select(x => new ItemGeneralizationModel()
                                                {
                                                    Id = x.Id,
                                                    ItemId = x.ItemId,
                                                    GeneralizationYear =    x.GeneralizationYear,
                                                    GeneralizationNo =  x.GeneralizationNo,
                                                    CreateDate = x.CreateDate,
                                                    UpdateDate = x.UpdateDate,
                                                }).ToList(),
                                    ItemAllowedTransactions = entity.GEN_ITEM_ALLOWED_TRANSACTION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                            .Select(x => new ItemAllowedTransModel() { 
                                                                Id = x.Id,
                                                                ItemId = x.ItemId,
                                                                 Transaction = x.Transaction,
                                                            }).ToList(),
                                    ItemLocations = entity.GEN_ITEM_LOCATION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                    .Select(x => new ItemLocationModel()
                                                    {
                                                        ItemLocationId = x.ItemLocationId,
                                                        LocationName = x.GEN_LOCATION.Name,
                                                        LocationId = x.LocationId,
                                                        ItemId = x.ItemId,
                                                        Max_Qty = x.Max_Qty,
                                                        Min_Qty = x.Min_Qty,
                                                    }).ToList(),
                                    Supplier = new SupplierModel() {
                                        SupId = p.GEN_SUPPLIER.SupId,
                                        Name = p.GEN_SUPPLIER.Name, },
                                }).FirstOrDefault();


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
               // bool isNew = false;
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
                    long itemId = 0;

                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var itemEntity = entity.Set<GEN_ITEM>();
                        if (itemObj.ItemId == 0)
                        {
                            //isNew = true;

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
                           // item.QtyMax = itemObj.QtyMax;
                            //item.QtyMin = itemObj.QtyMin;
                            //item.IsContainExpiryDate = itemObj.IsContainExpiryDate;
                            //item.IsSellNotAllow = itemObj.IsSellNotAllow;

                            item.Factor = itemObj.Factor;
                            item.FreePerc = itemObj.FreePerc;
                            item.IsSpecialOffer = itemObj.IsSpecialOffer;
                            item.OfferEndDate = itemObj.OfferEndDate;
                            item.CountryId = itemObj.CountryId;
                            item.BrandId = itemObj.BrandId;
                            item.Notes = itemObj.Notes;

                            item.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            item.UpdateUserId = itemObj.UpdateUserId;
                            item.ItemId = itemObj.ItemId;
                        }
                        entity.SaveChanges();
                        itemId = item.ItemId;

                        //if (isNew)
                        //{

                        //    item.Code = generateItemCode((long)itemObj.SupId, itemId);
                        //    entity.SaveChanges();
                        //}
                    }

                    #region save item units
                    if(itemModel.ItemUnits != null)
                    {
                        saveItemUnits(itemModel.ItemUnits,itemId);
                    }
                    #endregion 
                    
                    #region save generalizations
                    if(itemModel.ItemGeneralizations != null)
                    {
                        saveItemGeneralizations(itemModel.ItemGeneralizations,itemId);
                    }
                    #endregion

                    #region save ItemAllowedTransactions
                    if (itemModel.ItemAllowedTransactions != null)
                    {
                        saveItemAllowedTransactions(itemModel.ItemAllowedTransactions,itemId);
                    }
                    #endregion

                    #region save ItemLocations
                    if (itemModel.ItemLocations != null)
                    {
                        saveItemLocations(itemModel.ItemLocations,itemId);
                    }
                    #endregion
                    var itemsList = GetItem(itemId);
                    return TokenManager.GenerateToken(itemsList);
                }
                catch
                {
                    return TokenManager.GenerateToken(null);

                }
            }
        }

     
        [NonAction]
        private void saveItemUnits(List<ItemUnitModel> itemUnits,long itemId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var unitsIds = itemUnits.Select(x => x.ItemUnitId).ToList();
                #region remove not existed units

                var unitsToRemove = entity.GEN_ITEM_UNIT.Where(x => x.ItemId == itemId
                           && x.IsActive == true && !unitsIds.Contains(x.ItemUnitId)).ToList();

                foreach (var row in unitsToRemove)
                {
                    row.IsActive = false;
                    row.UpdateDate = DateTime.Now;
                    row.UpdateUserId = row.UpdateUserId;

                    entity.SaveChanges();
                }
                #endregion
                #region edit existed item units
                var unitsToEdit = entity.GEN_ITEM_UNIT.Where(x => x.ItemId == itemId
                                && unitsIds.Contains(x.ItemUnitId)).ToList();

                foreach (var row in unitsToEdit)
                {
                    var sec = itemUnits.Where(x => x.ItemUnitId == row.ItemUnitId).FirstOrDefault();
                    row.UnitId = sec.UnitId;
                    row.IsBlocked = sec.IsBlocked;
                    row.Barcode = sec.Barcode;
                    row.BarcodeType = sec.BarcodeType;
                    row.Factor = sec.Factor;
                    row.Cost = sec.Cost;
                    row.SalePrice = sec.SalePrice;
                    row.UpdateDate = DateTime.Now;
                    row.UpdateUserId = sec.UpdateUserId;
                    entity.SaveChanges();
                }
                #endregion

                #region add new sectors
                var newUnits = itemUnits.Where(x => x.ItemUnitId == 0).ToList();
                foreach (var row in newUnits)
                {
                    var itemUnit = new GEN_ITEM_UNIT()
                    {
                        ItemId = row.ItemId,
                        UnitId = row.UnitId,
                        Barcode = row.Barcode,
                        BarcodeType = row.BarcodeType,
                        Cost = row.Cost,
                        SalePrice = row.SalePrice,
                        Factor = row.Factor,
                        IsActive = true,
                        IsBlocked = row.IsBlocked,    
                        CreateDate = DateTime.Now,
                        UpdateDate = DateTime.Now,
                        CreateUserId = row.CreateUserId,
                        UpdateUserId = row.CreateUserId,

                    };
                    entity.GEN_ITEM_UNIT.Add(itemUnit);
                }
                #endregion
                entity.SaveChanges();
            }
        }
         [NonAction]
        private void saveItemGeneralizations(List<ItemGeneralizationModel> itemGenalizations,long itemId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var Ids = itemGenalizations.Select(x => x.Id).ToList();
                #region remove not existed genaralization

                var toRemove = entity.GEN_ITEM_GENERALIZATION.Where(x => x.ItemId == itemId
                           && x.IsActive == true && !Ids.Contains(x.Id)).ToList();

                foreach (var row in toRemove)
                {
                    row.IsActive = false;
                    row.UpdateDate = DateTime.Now;
                    row.UpdateUserId = row.UpdateUserId;

                    entity.SaveChanges();
                }
                #endregion
                #region edit existed item genaralization
                var toEdit = entity.GEN_ITEM_GENERALIZATION.Where(x => x.ItemId == itemId
                                && Ids.Contains(x.Id)).ToList();

                foreach (var row in toEdit)
                {
                    var sec = itemGenalizations.Where(x => x.Id == row.Id).FirstOrDefault();
                    row.GeneralizationNo = sec.GeneralizationNo;
                    row.GeneralizationYear = sec.GeneralizationYear;
                    row.UpdateDate = DateTime.Now;
                    row.UpdateUserId = sec.UpdateUserId;
                    entity.SaveChanges();
                }
                #endregion

                #region add new Genalizations
                var newGen = itemGenalizations.Where(x => x.Id == 0).ToList();
                foreach (var row in newGen)
                {
                    var itemGen = new GEN_ITEM_GENERALIZATION()
                    {
                        ItemId = itemId,
                        GeneralizationYear = row.GeneralizationYear,
                        GeneralizationNo = row.GeneralizationNo,                     
                        IsActive = true, 
                        CreateDate = DateTime.Now,
                        UpdateDate = DateTime.Now,
                        CreateUserId = row.CreateUserId,
                        UpdateUserId = row.CreateUserId,

                    };
                    entity.GEN_ITEM_GENERALIZATION.Add(itemGen);
                }
                #endregion
                entity.SaveChanges();
            }
        }

        [NonAction]
        private void saveItemAllowedTransactions(List<ItemAllowedTransModel> itemAllowedTrans,long itemId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var Ids = itemAllowedTrans.Select(x => x.Id).ToList();
                #region remove not existed AllowedTrans

                var toRemove = entity.GEN_ITEM_ALLOWED_TRANSACTION.Where(x => x.ItemId == itemId
                           && x.IsActive == true && !Ids.Contains(x.Id)).ToList();

                entity.GEN_ITEM_ALLOWED_TRANSACTION.RemoveRange(toRemove);
                entity.SaveChanges();
                #endregion

                #region add new AllowedTrans
                var newTrans = itemAllowedTrans.Where(x => x.Id == 0).ToList();
                foreach (var row in newTrans)
                {
                    var itemTrans = new GEN_ITEM_ALLOWED_TRANSACTION()
                    {
                        ItemId = itemId,
                        Transaction = row.Transaction,
                        IsActive = true,
                        CreateDate = DateTime.Now,
                        UpdateDate = DateTime.Now,
                        CreateUserId = row.CreateUserId,
                        UpdateUserId = row.CreateUserId,

                    };
                    entity.GEN_ITEM_ALLOWED_TRANSACTION.Add(itemTrans);
                }
                entity.SaveChanges();
                #endregion
            }
        }

          [NonAction]
        private void saveItemLocations(List<ItemLocationModel> itemLocations,long itemId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var Ids = itemLocations.Select(x => x.ItemLocationId).ToList();
                #region remove not existed AllowedTrans

                var toRemove = entity.GEN_ITEM_LOCATION.Where(x => x.ItemId == itemId
                           && x.IsActive == true && !Ids.Contains(x.ItemLocationId)).ToList();

                entity.GEN_ITEM_LOCATION.RemoveRange(toRemove);
                entity.SaveChanges();
                #endregion

                #region add new AllowedTrans
                var newLoc = itemLocations.Where(x => x.ItemLocationId == 0).ToList();
                foreach (var row in newLoc)
                {
                    var itemLocation = new GEN_ITEM_LOCATION()
                    {
                        ItemId = itemId,
                        LocationId = row.LocationId,                      
                        IsActive = true,
                        CreateDate = DateTime.Now,
                        UpdateDate = DateTime.Now,
                        CreateUserId = row.CreateUserId,
                        UpdateUserId = row.CreateUserId,

                    };
                    entity.GEN_ITEM_LOCATION.Add(itemLocation);
                }
                entity.SaveChanges();

                #endregion
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

                    return TokenManager.GenerateToken("1");
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }

            }

        }

        [HttpPost]
        [Route("GetItemByCode")]
        public string GetItemByCode(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                #region parameters
                string code = "";
                long locationId = 0;
                long supId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "code")
                    {
                        if (c.Value != "")
                            code = c.Value;
                    }
                    else if (c.Type == "locationId")
                    {
                        if (c.Value != "")
                            locationId = long.Parse( c.Value);
                    } 
                    else if (c.Type == "supId")
                    {
                        if (c.Value != "")
                            supId = long.Parse( c.Value);
                    }
                }
                #endregion
                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {
                    var item = entity.GEN_ITEM.Where(p => p.IsActive == true && p.Code.ToLower() == code.ToLower() && p.SupId == supId
                                && p.GEN_ITEM_LOCATION.Any(u => u.LocationId == locationId))
                        .Select(p => new ItemModel
                        {
                            ItemId = p.ItemId,
                            EngName = p.EngName,
                            ShortName = p.ShortName,
                            Name = p.Name,
                            Code = p.Code,
                            CategoryId = p.CategoryId,
                            CategoryName = p.GEN_ITEM_CATEGORY.Name,
                            CommitteeNo = p.CommitteeNo,
                            ConsumerDiscPerc = p.ConsumerDiscPerc,
                            ConsumerProfitPerc = p.ConsumerProfitPerc,
                            Cost = p.Cost,
                            MainCost = p.MainCost,
                            Price = p.Price,
                            MainPrice = p.MainPrice,
                            DiscPerc = p.DiscPerc,
                            UnitId = p.UnitId,
                            ItemUnit = entity.GEN_UNIT.Where(x => x.UnitId == p.UnitId).Select(x => x.Name).FirstOrDefault(),
                            IsWeight = p.IsWeight,
                            ItemStatus = p.ItemStatus,
                            ItemReceiptType = p.ItemReceiptType,
                            ItemType = p.ItemType,
                            ItemTransactionType = p.ItemTransactionType,
                            PackageUnit = p.PackageUnit,
                            PackageWeight = p.PackageWeight,
                            SupId = p.SupId,
                            SupSectorId = p.SupSectorId,
                            WholesaleDiscPerc = p.WholesaleDiscPerc,
                            WholesalePrice = p.WholesalePrice,
                            WholesaleProfitPerc = p.WholesaleProfitPerc,
                            QtyMax = p.QtyMax,
                            QtyMin = p.QtyMin,
                            IsContainExpiryDate = p.IsContainExpiryDate,
                            IsSellNotAllow = p.IsSellNotAllow,

                            Factor = p.Factor,
                            FreePerc = p.FreePerc,
                            IsSpecialOffer = p.IsSpecialOffer,
                            OfferEndDate = p.OfferEndDate,
                            CountryId = p.CountryId,
                            BrandId = p.BrandId,
                            Notes = p.Notes,
                            IsActive = p.IsActive,
                            CreateDate = p.CreateDate,
                            UpdateDate = p.UpdateDate,
                            CreateUserId = p.CreateUserId,
                            UpdateUserId = p.UpdateUserId,

                            ItemUnits = entity.GEN_ITEM_UNIT.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                .Select(x => new ItemUnitModel()
                                                {
                                                    UnitId = x.UnitId,
                                                    Barcode = x.Barcode,
                                                    BarcodeType = x.BarcodeType,
                                                    Cost = x.Cost,
                                                    Factor = x.Factor,
                                                    SalePrice = x.SalePrice,
                                                    CreateDate = x.CreateDate,
                                                    UpdateDate = x.UpdateDate,
                                                    CreateUserId = x.CreateUserId,
                                                    IsActive = x.IsActive,
                                                    IsBlocked = x.IsBlocked,
                                                    ItemId = x.ItemId,
                                                    ItemUnitId = x.ItemUnitId,
                                                    UpdateUserId = x.UpdateUserId,
                                                }).ToList(),
                            ItemGeneralizations = entity.GEN_ITEM_GENERALIZATION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                .Select(x => new ItemGeneralizationModel()
                                                {
                                                    Id = x.Id,
                                                    ItemId = x.ItemId,
                                                    GeneralizationYear = x.GeneralizationYear,
                                                    GeneralizationNo = x.GeneralizationNo,
                                                    CreateDate = x.CreateDate,
                                                    UpdateDate = x.UpdateDate,
                                                }).ToList(),
                            ItemAllowedTransactions = entity.GEN_ITEM_ALLOWED_TRANSACTION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                            .Select(x => new ItemAllowedTransModel()
                                                            {
                                                                Id = x.Id,
                                                                ItemId = x.ItemId,
                                                                Transaction = x.Transaction,
                                                            }).ToList(),
                            ItemLocations = entity.GEN_ITEM_LOCATION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                    .Select(x => new ItemLocationModel()
                                                    {
                                                        ItemLocationId = x.ItemLocationId,
                                                        LocationName = x.GEN_LOCATION.Name,
                                                        LocationId = x.LocationId,
                                                        ItemId = x.ItemId,
                                                        Max_Qty = x.Max_Qty,
                                                        Min_Qty = x.Min_Qty,
                                                    }).ToList(),
                            Supplier = new SupplierModel()
                            {
                                SupId = p.GEN_SUPPLIER.SupId,
                                Name = p.GEN_SUPPLIER.Name,
                            },
                        }).FirstOrDefault();
                    return TokenManager.GenerateToken(item);

                }
            }
        }

         [HttpPost]
        [Route("GetItemByBarcode")]
        public string GetItemByBarcode(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                #region parameters
                string barcode = "";
                long locationId = 0;
                long supId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "barcode")
                    {
                        if (c.Value != "")
                            barcode = c.Value;
                    }
                    else if (c.Type == "locationId")
                    {
                        if (c.Value != "")
                            locationId = long.Parse( c.Value);
                    } 
                    else if (c.Type == "supId")
                    {
                        if (c.Value != "")
                            supId = long.Parse( c.Value);
                    }
                }
                #endregion
                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {
                    var item = entity.GEN_ITEM.Where(p => p.IsActive == true && p.SupId == supId
                                && p.GEN_ITEM_UNIT.Any(u => u.Barcode.ToLower() == barcode.ToLower()))
                        .Select(p => new ItemModel
                        {
                            ItemId = p.ItemId,
                            EngName = p.EngName,
                            ShortName = p.ShortName,
                            Name = p.Name,
                            Code = p.Code,
                            CategoryId = p.CategoryId,
                            CategoryName = p.GEN_ITEM_CATEGORY.Name,
                            CommitteeNo = p.CommitteeNo,
                            ConsumerDiscPerc = p.ConsumerDiscPerc,
                            ConsumerProfitPerc = p.ConsumerProfitPerc,
                            Cost = p.Cost,
                            MainCost = p.MainCost,
                            Price = p.Price,
                            MainPrice = p.MainPrice,
                            DiscPerc = p.DiscPerc,
                            UnitId = p.UnitId,
                            ItemUnit = entity.GEN_UNIT.Where(x => x.UnitId == p.UnitId).Select(x => x.Name).FirstOrDefault(),
                            IsWeight = p.IsWeight,
                            ItemStatus = p.ItemStatus,
                            ItemReceiptType = p.ItemReceiptType,
                            ItemType = p.ItemType,
                            ItemTransactionType = p.ItemTransactionType,
                            PackageUnit = p.PackageUnit,
                            PackageWeight = p.PackageWeight,
                            SupId = p.SupId,
                            SupSectorId = p.SupSectorId,
                            WholesaleDiscPerc = p.WholesaleDiscPerc,
                            WholesalePrice = p.WholesalePrice,
                            WholesaleProfitPerc = p.WholesaleProfitPerc,
                            QtyMax = p.QtyMax,
                            QtyMin = p.QtyMin,
                            IsContainExpiryDate = p.IsContainExpiryDate,
                            IsSellNotAllow = p.IsSellNotAllow,

                            Factor = p.Factor,
                            FreePerc = p.FreePerc,
                            IsSpecialOffer = p.IsSpecialOffer,
                            OfferEndDate = p.OfferEndDate,
                            CountryId = p.CountryId,
                            BrandId = p.BrandId,
                            Notes = p.Notes,
                            IsActive = p.IsActive,
                            CreateDate = p.CreateDate,
                            UpdateDate = p.UpdateDate,
                            CreateUserId = p.CreateUserId,
                            UpdateUserId = p.UpdateUserId,

                            ItemUnits = entity.GEN_ITEM_UNIT.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                .Select(x => new ItemUnitModel()
                                                {
                                                    UnitId = x.UnitId,
                                                    Barcode = x.Barcode,
                                                    BarcodeType = x.BarcodeType,
                                                    Cost = x.Cost,
                                                    Factor = x.Factor,
                                                    SalePrice = x.SalePrice,
                                                    CreateDate = x.CreateDate,
                                                    UpdateDate = x.UpdateDate,
                                                    CreateUserId = x.CreateUserId,
                                                    IsActive = x.IsActive,
                                                    IsBlocked = x.IsBlocked,
                                                    ItemId = x.ItemId,
                                                    ItemUnitId = x.ItemUnitId,
                                                    UpdateUserId = x.UpdateUserId,
                                                }).ToList(),
                            ItemGeneralizations = entity.GEN_ITEM_GENERALIZATION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                .Select(x => new ItemGeneralizationModel()
                                                {
                                                    Id = x.Id,
                                                    ItemId = x.ItemId,
                                                    GeneralizationYear = x.GeneralizationYear,
                                                    GeneralizationNo = x.GeneralizationNo,
                                                    CreateDate = x.CreateDate,
                                                    UpdateDate = x.UpdateDate,
                                                }).ToList(),
                            ItemAllowedTransactions = entity.GEN_ITEM_ALLOWED_TRANSACTION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                            .Select(x => new ItemAllowedTransModel()
                                                            {
                                                                Id = x.Id,
                                                                ItemId = x.ItemId,
                                                                Transaction = x.Transaction,
                                                            }).ToList(),
                            ItemLocations = entity.GEN_ITEM_LOCATION.Where(x => x.ItemId == p.ItemId && x.IsActive == true)
                                                    .Select(x => new ItemLocationModel()
                                                    {
                                                        ItemLocationId = x.ItemLocationId,
                                                        LocationName = x.GEN_LOCATION.Name,
                                                        LocationId = x.LocationId,
                                                        ItemId = x.ItemId,
                                                        Max_Qty = x.Max_Qty,
                                                        Min_Qty = x.Min_Qty,
                                                    }).ToList(),
                            Supplier = new SupplierModel()
                            {
                                SupId = p.GEN_SUPPLIER.SupId,
                                Name = p.GEN_SUPPLIER.Name,
                            },
                        }).FirstOrDefault();
                    return TokenManager.GenerateToken(item);

                }
            }
        }

        [HttpPost]
        [Route("generateItemCode")]
        public string generateItemCode(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                #region parameters
                long supId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                   if (c.Type == "supId")
                    {
                        if (c.Value != "")
                            supId = long.Parse( c.Value);
                    }
                }
                #endregion
                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {
                    long maxId = 0;
                    var item = entity.GEN_ITEM.Where(p => p.SupId == supId).Count();
                      if(item > 0)
                        maxId = entity.GEN_ITEM.Where(p => p.SupId == supId).Select(p=> p.ItemId).Max();
                    maxId++;
                    var itemCode = supId.ToString().PadLeft(4, '0') + maxId.ToString().PadLeft(4, '0');
                    return TokenManager.GenerateToken(itemCode);

                }
            }
        }

    }
}