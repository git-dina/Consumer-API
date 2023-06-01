﻿using LinqKit;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using POS_Server.Models;
using POS_Server.Models.VM;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/Purchase")]
    public class PurchaseController : ApiController
    {
        CountriesController cc = new CountriesController();

        [HttpPost]
        [Route("Get")]
        public string Get(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string invType = "";

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
                    if (c.Type == "invType")
                    {
                        if (c.Value != "")
                            invType = c.Value;
                    }
                }

                var invoicesList = GetPurchaseInv(invType);
                return TokenManager.GenerateToken(invoicesList);
            }
        }
         [HttpPost]
        [Route("SearchOrders")]
        public string SearchOrders(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);
            string invNumber = "";
            string invType = "";
            string invStatus = "";
            long locationId = 0;
            bool? isApproved = null;
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
                    if (c.Type == "locationId")
                    {
                        if (c.Value != "")
                            locationId = long.Parse( c.Value);
                    }
                    else if(c.Type == "invNumber")
                    {
                        invNumber = c.Value;
                    } 
                    else if(c.Type == "invType")
                    {
                        invType = c.Value;
                    }
                    else if(c.Type == "invStatus")
                    {
                        if (c.Value != null && c.Value != "null")
                            invStatus = c.Value;
                    }
                    else if(c.Type == "isApproved")
                    {
                        if (c.Value != null && c.Value != "")
                            isApproved = bool.Parse(c.Value);
                    }
                }
                //return invType + invNumber + invStatus + locationId + locationId + isApproved;
                var invoicesList = GetPurchaseInv(invType, invNumber, invStatus,locationId, isApproved);
                return TokenManager.GenerateToken(invoicesList);
            }
        }

        public List<PurchaseInvoiceModel> GetPurchaseInv(string invType = "",string invNumber = "",string invStatus="",long locationId=0,bool? isApproved=null)
        {
            //List<string> invTypeL = new List<string>();
            //string[] invTypeArray = invType.Split(',');
            //foreach (string s in invTypeArray)
            //    invTypeL.Add(s.ToLower().Trim());
          
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<PUR_PURCHASE_INV>();
                searchPredicate = searchPredicate.And(x => true);
                if (invType.Trim() != "")
                    searchPredicate = searchPredicate.And(x => x.InvType == invType.Trim());
                
                if (invNumber.Trim() != "")
                    searchPredicate = searchPredicate.And(x => x.InvNumber == invNumber);

                if (invStatus.Trim() != null && invStatus != "")
                    searchPredicate = searchPredicate.And(x => x.InvStatus == invStatus.Trim());

                if (locationId != 0)
                    searchPredicate = searchPredicate.And(x => x.LocationId == locationId);
                if (isApproved != null)
                    searchPredicate = searchPredicate.And(x => x.IsApproved == isApproved);


                var invList = entity.PUR_PURCHASE_INV
                                    .Where(searchPredicate)
                                .Select(p => new PurchaseInvoiceModel
                                {
                                    PurchaseId = p.PurchaseId,
                                    
                                    RefId=p.RefId,
                                    SupplyingOrderNum = entity.PUR_PURCHASE_INV.Where(x => x.PurchaseId == p.RefId).Select(x => x.InvNumber).FirstOrDefault(),
                                    
                                    LocationId = p.LocationId,
                                    LocationName = p.GEN_LOCATION.Name,
                                    SupId = p.SupId,
                                    SupplierName = p.GEN_SUPPLIER.Name,
                                    InvNumber = p.InvNumber,
                                    InvStatus = p.InvStatus,
                                    IsApproved = p.IsApproved,
                                    OrderDate = p.OrderDate,
                                    OrderRecieveDate = p.OrderRecieveDate,

                                    ConsumerDiscount = p.ConsumerDiscount,
                                    CoopDiscount = p.CoopDiscount,
                                    DiscountValue = p.DiscountValue,
                                    FreePercentage = p.FreePercentage,
                                    FreeValue = p.FreeValue,
                                    CostNet = p.CostNet,
                                    TotalCost = p.TotalCost,
                                    TotalPrice = p.TotalPrice,

                                    Notes = p.Notes,
                                    SupplierNotes = p.SupplierNotes,
                                    SupplierPurchaseNotes = p.SupplierPurchaseNotes,

                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                    supplier = entity.GEN_SUPPLIER.Where(x => x.SupId == p.SupId)
                                     .Select(x => new SupplierModel
                                     {
                                         SupId = x.SupId,
                                         SupCode = x.SupCode,
                                         SupRef = x.SupRef,
                                         Name = x.Name,
                                         ShortName = x.Name,
                                         Address = x.Address,
                                         SupplierTypeId = x.SupplierTypeId,
                                         SupplierType = x.LST_SUPPLIER_TYPE.Name,
                                         SupplierGroupId = x.SupplierGroupId,
                                         SupplierGroup = x.LST_SUPPLIER_GROUP.Name,
                                         AssistantSupId = x.AssistantSupId,
                                         AssistantAccountNumber = x.AssistantAccountNumber,
                                         AssistantAccountName = x.AssistantAccountName,
                                         AssistantStartDate = x.AssistantStartDate,
                                         DiscountPercentage = x.DiscountPercentage,
                                         FreePercentag = x.FreePercentag,
                                         BankId = x.BankId,
                                         BankAccount = x.BankAccount,
                                         SupNODays = x.SupNODays,
                                         AccountCode = x.AccountCode,
                                         Email = x.Email,
                                         BOX = x.BOX,
                                         IsBlocked = x.IsBlocked,
                                         LicenseId = x.LicenseId,
                                         LicenseDate = x.LicenseDate,
                                         Notes = x.Notes,
                                         PurchaseOrderNotes = x.PurchaseOrderNotes
                                     }).FirstOrDefault(),
                                         PurchaseDetails = entity.PUR_PURCHASE_INV_DETAILS.Where(x => x.PurchaseId == p.PurchaseId && x.IsActive == true)
                                                        .Select(x => new PurchaseInvDetailsModel()
                                                        {
                                                            DetailsId = x.DetailsId,
                                                            ItemId = x.ItemId,
                                                            ItemName = x.ItemName,
                                                            ItemUnit =  entity.GEN_UNIT.Where(m => m.UnitId == x.GEN_ITEM.UnitId).Select(m => m.Name).FirstOrDefault(),
                                                            ItemCode = x.ItemCode,
                                                            ItemNotes = x.ItemNotes,
                                                            Factor = x.Factor,
                                                            Barcode = x.Barcode,
                                                            //Balance = x.Balance,
                                                            MainCost = x.MainCost,
                                                            MainPrice = x.MainPrice,
                                                            Cost = x.Cost,
                                                            Price = x.Price,
                                                            MaxQty = x.MaxQty,
                                                            MinQty = x.MinQty,
                                                            ConsumerDiscount = x.ConsumerDiscount,
                                                            CoopDiscount = x.CoopDiscount,
                                                            FreeQty = x.FreeQty,
                                                            
                                                        }).ToList()
                                }).ToList();

                return invList;
            }
        }

        [HttpPost]
        [Route("SaveSupplyingOrder")]
        public async Task<string> SaveSupplyingOrder(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string jsonObject = "";
                PurchaseInvoiceModel invModel = null;
                PUR_PURCHASE_INV invoice = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        invModel = JsonConvert.DeserializeObject<PurchaseInvoiceModel>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        invoice = JsonConvert.DeserializeObject<PUR_PURCHASE_INV>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    #region generate InvNumber
                    long locationId = (long)invModel.LocationId;
                    if (invModel.InvNumber == "" || invModel.InvNumber == null)
                    {
                        string invNumber = await generateSupplyingInvNumber(locationId);
                       
                        invoice.InvNumber = invNumber;
                    }
                    
                    if(invoice.PurchaseId != 0)
                    using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                    {
                        var tmpInvoice = entity.PUR_PURCHASE_INV.Find(invoice.PurchaseId);
                        if (tmpInvoice.LocationId != invoice.LocationId)
                            invoice.InvNumber = await generateSupplyingInvNumber((long)invoice.LocationId);
                    }
                    #endregion
                    invoice = await saveInvoice(invoice);
                    invModel.PurchaseId = invoice.PurchaseId;
                    invModel.InvNumber = invoice.InvNumber;

                    string jsonString = JsonConvert.SerializeObject(invModel.PurchaseDetails);
                    var invItems = JsonConvert.DeserializeObject<List<PUR_PURCHASE_INV_DETAILS>>(jsonString, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                    saveInvoiceItems(invItems, invoice.PurchaseId);

                    return TokenManager.GenerateToken(invModel);
                }
                catch (DbEntityValidationException dbEx)
                {
                    return TokenManager.GenerateToken("0");
                }
            }
        } 
        [HttpPost]
        [Route("SavePurchaseOrder")]
        public async Task<string> SavePurchaseOrder(string token)
        {
            token = TokenManager.readToken(HttpContext.Current.Request);

            var strP = TokenManager.GetPrincipal(token);
            if (strP != "0") //invalid authorization
            {
                return TokenManager.GenerateToken(strP);
            }
            else
            {
                string jsonObject = "";
                PurchaseInvoiceModel invModel = null;
                PUR_PURCHASE_INV invoice = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        invModel = JsonConvert.DeserializeObject<PurchaseInvoiceModel>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        invoice = JsonConvert.DeserializeObject<PUR_PURCHASE_INV>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                //try
                {
                    #region generate InvNumber
                    long locationId = (long)invModel.LocationId;
                    if (invModel.InvNumber == "" || invModel.InvNumber == null)
                    {
                        string invNumber = await generatePurchaseInvNumber();
                       
                        invoice.InvNumber = invNumber;
                    }
                    #endregion

                    invoice = await saveInvoice(invoice);
                    invModel.PurchaseId = invoice.PurchaseId;
                    invModel.InvNumber = invoice.InvNumber;

                    if(invoice.RefId != null)
                    {
                        using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                        {
                            var supplyingOrder = entity.PUR_PURCHASE_INV.Find(invoice.RefId);
                            supplyingOrder.InvStatus = "orderPlaced";
                            entity.SaveChanges();
                        }
                    }
                    string jsonString = JsonConvert.SerializeObject(invModel.PurchaseDetails);
                    var invItems = JsonConvert.DeserializeObject<List<PUR_PURCHASE_INV_DETAILS>>(jsonString, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                    saveInvoiceItems(invItems, invoice.PurchaseId);

                    makeItemsAsOrderd(invItems);
                    return TokenManager.GenerateToken(invModel);
                }
                //catch (DbEntityValidationException dbEx)
                //{
                //    return TokenManager.GenerateToken("0");
                //}
            }
        }
        [NonAction]
        private async Task<PUR_PURCHASE_INV> saveInvoice(PUR_PURCHASE_INV newObject)
        {
            PUR_PURCHASE_INV tmpInvoice;
            DateTime datenow = cc.AddOffsetTodate(DateTime.Now);

            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var invoiceEntity = entity.Set<PUR_PURCHASE_INV>();
                

                if (newObject.PurchaseId == 0)
                {
                    newObject.CreateDate = datenow;
                    newObject.UpdateDate = datenow;
                    newObject.UpdateUserId = newObject.CreateUserId;
                    newObject.IsActive = true;
                    tmpInvoice = invoiceEntity.Add(newObject);
                    entity.SaveChanges();

                }
                else
                {
                    tmpInvoice = entity.PUR_PURCHASE_INV.Find(newObject.PurchaseId);

                    tmpInvoice.LocationId = newObject.LocationId;
                    tmpInvoice.SupId = newObject.SupId;
                    tmpInvoice.InvType = newObject.InvType;
                    tmpInvoice.OrderDate = newObject.OrderDate;
                    tmpInvoice.OrderRecieveDate = newObject.OrderRecieveDate;

                    tmpInvoice.TotalCost = newObject.TotalCost;
                    tmpInvoice.TotalPrice = newObject.TotalPrice; 
                    tmpInvoice.ConsumerDiscount = newObject.ConsumerDiscount;
                    tmpInvoice.CoopDiscount = newObject.CoopDiscount;
                    tmpInvoice.DiscountValue = newObject.DiscountValue;
                    tmpInvoice.FreePercentage = newObject.FreePercentage;
                    tmpInvoice.CostNet = newObject.CostNet;
                    
                    tmpInvoice.Notes = newObject.Notes;
                    tmpInvoice.IsApproved = newObject.IsApproved;

                    tmpInvoice.UpdateDate = datenow;
                    tmpInvoice.UpdateUserId = newObject.UpdateUserId;


                    entity.SaveChanges();

                }
                return tmpInvoice;
            }
        }
        [NonAction]
        public void makeItemsAsOrderd(List<PUR_PURCHASE_INV_DETAILS> invItems)
        {
            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                foreach(var row in invItems)
                {
                    var item = entity.GEN_ITEM.Find(row.ItemId);
                    if(item.ItemTransactionType == "new_committee")
                    {
                        item.ItemTransactionType = "orderPlaced";
                    }
                }
                entity.SaveChanges();
            }
        }
        [NonAction]
        public async Task<string> generateSupplyingInvNumber( long locationId)
        {

            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var sequence = entity.PUR_PURCHASE_INV
                                .Where(b => b.LocationId == locationId &&( b.InvType =="soa" || b.InvType =="sod"))
                                .Select(b =>  b.InvNumber).Max();

                if (sequence == null)
                    sequence = "1";
                else
                    sequence = (long.Parse(sequence) + 1).ToString();
                return sequence.ToString();
            }
            
        }
        [NonAction]
        public async Task<string> generatePurchaseInvNumber( )
        {

            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var sequence = entity.PUR_PURCHASE_INV.Where(b => b.InvType == "po").Select(b =>  b.InvNumber).Max();

                if (sequence == null)
                    sequence = "1";
                else
                    sequence = (long.Parse(sequence) + 1).ToString();
                return sequence.ToString();
            }
            
        }

        [NonAction]
        private void saveInvoiceItems(List<PUR_PURCHASE_INV_DETAILS> invoiceItems, long purchaseId)
        {
            try
            {
                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {

                    var items = entity.PUR_PURCHASE_INV_DETAILS.Where(x => x.PurchaseId == purchaseId).ToList();
                    entity.PUR_PURCHASE_INV_DETAILS.RemoveRange(items);
                    entity.SaveChanges();

                    foreach (var row in invoiceItems)
                    {
                        
                        var transferEntity = entity.Set<PUR_PURCHASE_INV_DETAILS>();


                       row.PurchaseId = purchaseId;
                       row.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        row.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        row.UpdateUserId = row.CreateUserId;
                        row.IsActive = true;
                        entity.PUR_PURCHASE_INV_DETAILS.Add(row);
                        
                    }
                    entity.SaveChanges();
                }
            }
            catch {  }
        }

        [HttpPost]
        [Route("ApproveSupplyingOrder")]
        public string ApproveSupplyingOrder(string token)
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
                long purchaseId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "purchaseId")
                    {
                        purchaseId = long.Parse(c.Value);
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
                        var order = entity.PUR_PURCHASE_INV.Find(purchaseId);
                        order.IsApproved = true;
                        order.InvType = "soa";//approved supplying order 
                        order.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        order.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    return TokenManager.GenerateToken(message);
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }

            }

        }
        
        [HttpPost]
        [Route("DeletePurchaseInv")]
        public string DeletePurchaseInv(string token)
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
                long purchaseId = 0;
                long userId = 0;

                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "purchaseId")
                    {
                        purchaseId = long.Parse(c.Value);
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
                        var order = entity.PUR_PURCHASE_INV.Find(purchaseId);
                        order.IsActive = false;
                        order.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        order.UpdateUserId = userId;

                        message = entity.SaveChanges().ToString();
                    }

                    return TokenManager.GenerateToken(message);
                }
                catch
                {
                    return TokenManager.GenerateToken("0");
                }

            }

        }

    }
}