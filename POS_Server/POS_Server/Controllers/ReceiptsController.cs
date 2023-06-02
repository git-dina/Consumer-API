using LinqKit;
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
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace POS_Server.Controllers
{
    [RoutePrefix("api/Receipts")]
    public class ReceiptsController : ApiController
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

                var invoicesList = GetReceiptInv(invType);
                return TokenManager.GenerateToken(invoicesList);
            }
        }

        public List<ReceiptInvoiceModel> GetReceiptInv(string receiptType = "", string invNumber = "",  long locationId = 0)
        {

            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var searchPredicate = PredicateBuilder.New<INV_RECEIPT>();
                searchPredicate = searchPredicate.And(x => true);
                if (receiptType != "")
                    searchPredicate = searchPredicate.And(x => x.ReceiptType == receiptType);

                if (invNumber != "")
                    searchPredicate = searchPredicate.And(x => x.InvNumber == invNumber);

                if (locationId != 0)
                    searchPredicate = searchPredicate.And(x => x.LocationId == locationId);


                var invList = entity.INV_RECEIPT
                                    .Where(searchPredicate)
                                .Select(p => new ReceiptInvoiceModel
                                {
                                    ReceiptId = p.ReceiptId,
                                   ReceiptType = p.ReceiptType,
                                    PurchaseId = p.PurchaseId,
                                    PurchaseInvNumber = p.PUR_PURCHASE_INV.InvNumber,
                                   IsRecieveAll = p.IsRecieveAll,
                                    LocationId = p.LocationId,
                                    LocationName = p.GEN_LOCATION.Name,
                                    SupId = p.SupId,
                                    InvNumber = p.InvNumber,
                                    ReceiptDate = p.ReceiptDate,

                                    SupInvoiceDate = p.SupInvoiceDate,
                                    SupInvoiceNum = p.SupInvoiceNum,
                                    InvoiceAmount = p.InvoiceAmount,
                                    AmountDifference = p.AmountDifference,

                                   ISAccountTransfer = p.ISAccountTransfer,
                                   AccountTransferDate = p.AccountTransferDate,
                                   
                                    CoopDiscount = p.CoopDiscount,
                                    DiscountValue = p.DiscountValue,

                                    IsTransfer = p.IsTransfer,
                                    TransferBy = p.TransferBy,
                                    TransferDate = p.TransferDate,

                                    AccountEntryCode = p.AccountEntryCode,
                                    AccountEntryCodeCustody = p.AccountEntryCode,
                                    
                                    Notes = p.Notes,
                                    SupplierNotes = p.PUR_PURCHASE_INV.SupplierNotes,
                                    SupplierPurchaseNotes = p.PUR_PURCHASE_INV.SupplierPurchaseNotes,

                                    IsActive = p.IsActive,
                                    CreateDate = p.CreateDate,
                                    UpdateDate = p.UpdateDate,
                                    CreateUserId = p.CreateUserId,
                                    UpdateUserId = p.UpdateUserId,
                                    supplier = entity.GEN_SUPPLIER.Where(x => x.SupId == p.SupId)
                                     .Select(x => new SupplierModel
                                     {
                                         SupId = x.SupId,
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
                                    ReceiptDetails = entity.INV_RECEIPT_DETAILS.Where(x => x.ReceiptId == p.ReceiptId && x.IsActive == true)
                                                        .Select(x => new ReceiptDetailsModel()
                                                        {
                                                            DetailsId = x.DetailsId,
                                                            ItemId = x.ItemId,
                                                            ItemName = x.ItemName,
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
        [Route("SaveReceiptOrder")]
        public async Task<string> SaveReceiptOrder(string token)
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
                ReceiptInvoiceModel invModel = null;
                INV_RECEIPT invoice = null;
                IEnumerable<Claim> claims = TokenManager.getTokenClaims(token);
                foreach (Claim c in claims)
                {
                    if (c.Type == "itemObject")
                    {
                        jsonObject = c.Value;
                        invModel = JsonConvert.DeserializeObject<ReceiptInvoiceModel>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        invoice = JsonConvert.DeserializeObject<INV_RECEIPT>(jsonObject, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                        break;
                    }
                }
                try
                {
                    #region generate InvNumber
                    long locationId = (long)invModel.LocationId;
                    if (invModel.InvNumber == "" || invModel.InvNumber == null)
                    {
                        string invNumber = await generateRecieptInvNumber(locationId);

                        invoice.InvNumber = invNumber;
                    }


                    #endregion
                    invoice = await saveInvoice(invoice);
                    invModel.PurchaseId = invoice.PurchaseId;
                    invModel.InvNumber = invoice.InvNumber;

                    string jsonString = JsonConvert.SerializeObject(invModel.ReceiptDetails);
                    var invItems = JsonConvert.DeserializeObject<List<INV_RECEIPT_DETAILS>>(jsonString, new IsoDateTimeConverter { DateTimeFormat = "dd/MM/yyyy" });
                    saveInvoiceItems(invItems, invoice.ReceiptId);

                    return TokenManager.GenerateToken(invModel);
                }
                catch (DbEntityValidationException dbEx)
                {
                    return TokenManager.GenerateToken("0");
                }
            }
        }

        [NonAction]
        private async Task<INV_RECEIPT> saveInvoice(INV_RECEIPT newObject)
        {
            INV_RECEIPT tmpInvoice;
            DateTime datenow = cc.AddOffsetTodate(DateTime.Now);

            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var invoiceEntity = entity.Set<INV_RECEIPT>();


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
                    tmpInvoice = entity.INV_RECEIPT.Find(newObject.ReceiptId);

                    tmpInvoice.LocationId = newObject.LocationId;
                    tmpInvoice.SupId = newObject.SupId;
                    tmpInvoice.ReceiptType = newObject.ReceiptType;
                    tmpInvoice.IsRecieveAll = newObject.IsRecieveAll;
                    tmpInvoice.InvNumber = newObject.InvNumber;
                    tmpInvoice.PurchaseId = newObject.PurchaseId;
                    tmpInvoice.ReceiptDate = newObject.ReceiptDate;
                    tmpInvoice.SupInvoiceDate = newObject.SupInvoiceDate;
                    tmpInvoice.SupInvoiceNum = newObject.SupInvoiceNum;

                    tmpInvoice.InvoiceAmount = newObject.InvoiceAmount;
                    tmpInvoice.AmountDifference = newObject.AmountDifference;

                    tmpInvoice.CoopDiscount = newObject.CoopDiscount;
                    tmpInvoice.DiscountValue = newObject.DiscountValue;
                    tmpInvoice.FreePercentage = newObject.FreePercentage;
                    tmpInvoice.FreeValue = newObject.FreeValue;
                    tmpInvoice.ConsumerDiscount = newObject.ConsumerDiscount;
                    tmpInvoice.CostNet = newObject.CostNet;
                    tmpInvoice.TotalCost = newObject.TotalCost;
                    tmpInvoice.TotalPrice = newObject.TotalPrice;

                    tmpInvoice.Notes = newObject.Notes;
                    tmpInvoice.SupplierNotes = newObject.SupplierNotes;
                    tmpInvoice.SupplierPurchaseNotes = newObject.SupplierPurchaseNotes;

                    tmpInvoice.UpdateDate = datenow;
                    tmpInvoice.UpdateUserId = newObject.UpdateUserId;


                    entity.SaveChanges();

                }
                return tmpInvoice;
            }
        }
        [NonAction]
        private void saveInvoiceItems(List<INV_RECEIPT_DETAILS> invoiceItems, long receiptId)
        {
            try
            {
                using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
                {

                    var items = entity.INV_RECEIPT_DETAILS.Where(x => x.ReceiptId == receiptId).ToList();
                    entity.INV_RECEIPT_DETAILS.RemoveRange(items);
                    entity.SaveChanges();

                    foreach (var row in invoiceItems)
                    {

                        var transferEntity = entity.Set<INV_RECEIPT_DETAILS>();


                        row.ReceiptId = receiptId;
                        row.CreateDate = cc.AddOffsetTodate(DateTime.Now);
                        row.UpdateDate = cc.AddOffsetTodate(DateTime.Now);
                        row.UpdateUserId = row.CreateUserId;
                        row.IsActive = true;
                        entity.INV_RECEIPT_DETAILS.Add(row);

                    }
                    entity.SaveChanges();
                }
            }
            catch { }
        }

        [NonAction]
        public async Task<string> generateRecieptInvNumber(long locationId)
        {

            using (ConsumerAssociationDBEntities entity = new ConsumerAssociationDBEntities())
            {
                var sequence = entity.INV_RECEIPT.Select(b => b.InvNumber).Max();

                if (sequence == null)
                    sequence = "1";
                else
                    sequence = (long.Parse(sequence) + 1).ToString();
                return sequence.ToString();
            }

        }
    }
}