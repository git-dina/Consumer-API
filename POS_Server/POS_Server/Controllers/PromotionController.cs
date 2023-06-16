using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Models;
using POS_Server.Models.VM;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/Promotion")]
    public class PromotionController : ApiController
    {
        CountriesController cc = new CountriesController();

        [HttpPost]
        [Route("SavePromotion")]
        public string SavePromotion(string token)
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
                PUR_PROMOTION proObj = null;
                PromotionModel promotionModel = null;
                // bool isNew = false;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        Object = c.Value;
                        proObj = JsonConvert.DeserializeObject<PUR_PROMOTION>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        promotionModel = JsonConvert.DeserializeObject<PromotionModel>(Object, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                //try
                {
                    PUR_PROMOTION promotion;
                    long promotionId = 0;
                    #region check barcode availability for offer
                    var barcodesAvailability = checkBarcodesAvailability(promotionModel);
                    if(!barcodesAvailability)
                    {
                        promotionModel.PromotionId = -5;
                        return TokenManager.GenerateToken(promotionModel);

                    }
                    #endregion
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var proEntity = entity.Set<PUR_PROMOTION>();
                        if (proObj.PromotionId == 0)
                        {
                            //isNew = true;

                            proObj.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                            proObj.UpdateDate = proObj.CreateDate;
                            proObj.UpdateUserId = proObj.CreateUserId;
                            proObj.IsActive = true;

                            promotion = proEntity.Add(proObj);
                        }
                        else
                        {
                            promotion = entity.PUR_PROMOTION.Find(proObj.PromotionId);

                            promotion.PromotionType = proObj.PromotionType;
                            promotion.PromotionCategory = proObj.PromotionCategory;
                            promotion.PromotionNature = proObj.PromotionNature;
                            promotion.PromotionDate = proObj.PromotionDate;
                            promotion.PromotionStartDate = proObj.PromotionStartDate;
                            promotion.PromotionEndDate = proObj.PromotionEndDate;
                            promotion.PromotionPercentage = proObj.PromotionPercentage;
                            promotion.RefId = proObj.RefId;
   
                            promotion.Notes = proObj.Notes;

                            promotion.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                            promotion.UpdateUserId = proObj.UpdateUserId;
                        }
                        entity.SaveChanges();
                    }
                    promotionId = promotion.PromotionId;



                    string jsonString = JsonConvert.SerializeObject(promotionModel.PromotionDetails);
                    var invItems = JsonConvert.DeserializeObject<List<PUR_PROMOTION_DETAILS>>(jsonString, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                    savePromotionItems(invItems, promotionId);

                    #region save offer Locations
                    if (promotionModel.PromotionLocations != null)
                    {
                        savePromotionLocations(promotionModel.PromotionLocations, promotionId);
                    }
                    #endregion
                    var itemsList = GetOffer(promotionId);
                    return TokenManager.GenerateToken(itemsList);
                }
                //catch
                //{
                //    return TokenManager.GenerateToken(null);

                //}
            }
        }

        [NonAction]
        private bool checkBarcodesAvailability(PromotionModel promotionModel)
        {
            bool valid = true;
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                foreach(var row in promotionModel.PromotionDetails)
                {
                    var promotion = entity.PUR_PROMOTION_DETAILS.Where(x => ((EntityFunctions.TruncateTime(x.PUR_PROMOTION.PromotionStartDate) <= EntityFunctions.TruncateTime(promotionModel.PromotionStartDate) && EntityFunctions.TruncateTime(x.PUR_PROMOTION.PromotionEndDate) >= EntityFunctions.TruncateTime(promotionModel.PromotionEndDate))
                                   || (EntityFunctions.TruncateTime(x.PUR_PROMOTION.PromotionStartDate) <= EntityFunctions.TruncateTime(promotionModel.PromotionStartDate) && EntityFunctions.TruncateTime(x.PUR_PROMOTION.PromotionEndDate) >= EntityFunctions.TruncateTime(promotionModel.PromotionStartDate) && EntityFunctions.TruncateTime(x.PUR_PROMOTION.PromotionEndDate) <= EntityFunctions.TruncateTime(promotionModel.PromotionEndDate))
                                   || (EntityFunctions.TruncateTime(x.PUR_PROMOTION.PromotionStartDate) >= EntityFunctions.TruncateTime(promotionModel.PromotionStartDate) && EntityFunctions.TruncateTime(x.PUR_PROMOTION.PromotionStartDate) <= EntityFunctions.TruncateTime(promotionModel.PromotionEndDate) && EntityFunctions.TruncateTime(x.PUR_PROMOTION.PromotionEndDate) >= EntityFunctions.TruncateTime(promotionModel.PromotionEndDate)))
                                   && (x.PUR_PROMOTION.PromotionType == "quantity" || x.PUR_PROMOTION.PromotionType == "percentage")
                                   && x.Barcode == row.Barcode
                                   && x.ItemId == row.ItemId
                                   && x.UnitId == row.UnitId
                                   ).FirstOrDefault();

                    if (promotion != null)
                        return false;
                                   
                }
            }
            return valid;
        }
        [NonAction]
        private void savePromotionItems(List<PUR_PROMOTION_DETAILS> invoiceItems, long promotionId)
        {
            try
            {
                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {

                    var items = entity.PUR_PROMOTION_DETAILS.Where(x => x.PromotionId == promotionId).ToList();
                    entity.PUR_PROMOTION_DETAILS.RemoveRange(items);
                    entity.SaveChanges();

                    foreach (var row in invoiceItems)
                    {

                        var transferEntity = entity.Set<PUR_PROMOTION_DETAILS>();


                        row.PromotionId = promotionId;
                        row.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        row.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        row.UpdateUserId = row.CreateUserId;
                        row.IsActive = true;
                        entity.PUR_PROMOTION_DETAILS.Add(row);

                    }
                    entity.SaveChanges();
                }
            }
            catch { }
        }

        [NonAction]
        private void savePromotionLocations(List<PromotionLocationsModel> locations, long promotionId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var Ids = locations.Select(x => x.PromotionLocationId).ToList();
                #region remove not existed AllowedTrans

                var toRemove = entity.PUR_PROMOTION_LOCATION.Where(x => x.PromotionId == promotionId
                           && !Ids.Contains(x.PromotionLocationId)).ToList();

                entity.PUR_PROMOTION_LOCATION.RemoveRange(toRemove);
                entity.SaveChanges();
                #endregion

                #region add new AllowedTrans
                var newLoc = locations.Where(x => x.PromotionLocationId == 0).ToList();
                foreach (var row in newLoc)
                {
                    var location = new PUR_PROMOTION_LOCATION()
                    {
                        PromotionId = promotionId,
                        LocationId = row.LocationId,                     

                    };
                    entity.PUR_PROMOTION_LOCATION.Add(location);
                }
                entity.SaveChanges();

                #endregion
            }
        }
        
        [NonAction]
        public PromotionModel GetOffer(long promotionId)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {

                var promotion = entity.PUR_PROMOTION
                                  .Where(p => p.PromotionId == promotionId)
                              .Select(p => new PromotionModel
                              {
                                  PromotionId = p.PromotionId,
                                  PromotionType = p.PromotionType,
                                  PromotionCategory = p.PromotionCategory,
                                  PromotionNature = p.PromotionNature,
                                  PromotionDate = p.PromotionDate,
                                  PromotionStartDate = p.PromotionStartDate,
                                  PromotionEndDate = p.PromotionEndDate,
                                  PromotionPercentage = p.PromotionPercentage,
                                  RefId = p.RefId,
                                  IsStoped = p.IsStoped,
                                  StopedBy = p.StopedBy,
                                  StopedDate = p.StopedDate,
                                  IsActive = p.IsActive,
                                  CreateDate = p.CreateDate,
                                  UpdateDate = p.UpdateDate,
                                  CreateUserId = p.CreateUserId,
                                  UpdateUserId = p.UpdateUserId,
                                  Notes = p.Notes,

                                  PromotionDetails = entity.PUR_PROMOTION_DETAILS.Where(x => x.PromotionId == p.PromotionId && x.IsActive == true)
                                                      .Select(x => new PromotionDetailsModel()
                                                      {
                                                          DetailsId = x.DetailsId,
                                                          ItemId = x.ItemId,
                                                          ItemName = x.ItemName,
                                                          ItemCode = x.ItemCode,
                                                          Factor = x.Factor,
                                                          Barcode = x.Barcode,
                                                          MainCost = x.MainCost,
                                                          MainPrice = x.MainPrice,
                                                          PromotionPrice = x.PromotionPrice,
                                                          IsItemStoped = x.IsItemStoped,
                                                          Qty = x.Qty,
                                                          StoppedItemBy = x.StoppedItemBy,
                                                          StoppedItemDate = x.StoppedItemDate,
                                                          UnitId = x.UnitId,
                                                          UnitName = x.UnitName,
                                                          NetDeffirence = x.NetDeffirence,

                                                      }).ToList(),
                                  PromotionLocations = entity.PUR_PROMOTION_LOCATION.Where(x => x.PromotionId == p.PromotionId)
                                                       .Select(x => new PromotionLocationsModel()
                                                       {
                                                           LocationId = x.LocationId,
                                                           PromotionId = p.PromotionId,
                                                           PromotionLocationId = x.PromotionLocationId,
                                                       }).ToList(),
                              }).FirstOrDefault();


                return promotion;
            }
        }
        [HttpPost]
        [Route("TerminateOffer")]
        public async Task<string> TerminateOffer(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                long promotionId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "promotionId")
                    {
                        promotionId = long.Parse(c.Value);
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
                        var pro = entity.PUR_PROMOTION.Find(promotionId);
                        pro.IsStoped = true;
                        pro.StopedBy = userId;
                        pro.StopedDate = cc.AddOffsetTodate(DateTime.Now);

                        entity.SaveChanges();
                        var promotion = entity.PUR_PROMOTION
                                    .Where(p => p.PromotionId == promotionId)
                                .Select(p => new PromotionModel
                                {
                                    PromotionId = p.PromotionId,
                                    PromotionType = p.PromotionType,
                                    PromotionCategory = p.PromotionCategory,
                                    PromotionNature = p.PromotionNature,
                                  PromotionDate = p.PromotionDate,
                                   PromotionStartDate = p.PromotionStartDate,
                                   PromotionEndDate = p.PromotionEndDate,
                                   PromotionPercentage = p.PromotionPercentage,
                                   RefId = p.RefId,
                                   IsStoped = p.IsStoped,
                                   StopedBy = p.StopedBy,
                                   StopedDate = p.StopedDate,
                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                    Notes = p.Notes,
                                    
                                    PromotionDetails = entity.PUR_PROMOTION_DETAILS.Where(x => x.PromotionId == p.PromotionId && x.IsActive == true)
                                                        .Select(x => new PromotionDetailsModel()
                                                        {
                                                            DetailsId = x.DetailsId,
                                                            ItemId = x.ItemId,
                                                            ItemName = x.ItemName,
                                                            ItemCode = x.ItemCode,
                                                            Factor = x.Factor,
                                                            Barcode = x.Barcode,
                                                            MainCost = x.MainCost,
                                                            MainPrice = x.MainPrice,
                                                            PromotionPrice = x.PromotionPrice,
                                                            IsItemStoped = x.IsItemStoped,
                                                            Qty = x.Qty,
                                                            StoppedItemBy = x.StoppedItemBy,
                                                            StoppedItemDate = x.StoppedItemDate,
                                                            UnitId = x.UnitId,
                                                            UnitName = x.UnitName,
                                                            NetDeffirence = x.NetDeffirence,

                                                        }).ToList(),
                                    PromotionLocations = entity.PUR_PROMOTION_LOCATION.Where(x => x.PromotionId == p.PromotionId)
                                                         .Select(x => new PromotionLocationsModel()
                                                         {
                                                             LocationId = x.LocationId,
                                                             PromotionId = p.PromotionId,
                                                             PromotionLocationId = x.PromotionLocationId,
                                                         }).ToList(),
                                }).FirstOrDefault();

                        return TokenManager.GenerateToken(promotion);
                    }

                }
                catch (DbEntityValidationException dbEx)
                {
                    return TokenManager.GenerateToken("0");
                }
            }
        }
    }
}