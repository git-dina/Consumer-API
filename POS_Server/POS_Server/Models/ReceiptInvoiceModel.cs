using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class ReceiptInvoiceModel
    {
        public long ReceiptId { get; set; }
        public string ReceiptStatus { get; set; }
        public bool IsRecieveAll { get; set; }
        public string InvNumber { get; set; }
        public string ReceiptType { get; set; }
        public Nullable<long> LocationId { get; set; }
        public Nullable<long> PurchaseId { get; set; }
        public Nullable<System.DateTime> ReceiptDate { get; set; }
        public Nullable<long> SupId { get; set; }
        public string SupInvoiceNum { get; set; }
        public System.DateTime SupInvoiceDate { get; set; }
        public Nullable<decimal> InvoiceAmount { get; set; }
        public Nullable<decimal> AmountDifference { get; set; }
        public string Notes { get; set; }
        public decimal CoopDiscount { get; set; }
        public decimal DiscountValue { get; set; }
        public Nullable<decimal> FreePercentage { get; set; }
        public Nullable<decimal> FreeValue { get; set; }
        public Nullable<decimal> ConsumerDiscount { get; set; }
        public Nullable<decimal> CostNet { get; set; }
        public Nullable<decimal> TotalCost { get; set; }
        public Nullable<decimal> TotalPrice { get; set; }
        public bool IsTransfer { get; set; }
        public Nullable<long> TransferBy { get; set; }
        public Nullable<System.DateTime> TransferDate { get; set; }
        public bool ISAccountTransfer { get; set; }
        public Nullable<System.DateTime> AccountTransferDate { get; set; }
        public Nullable<long> AccountEntryCode { get; set; }
        public Nullable<long> AccountEntryCodeCustody { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        //extra
        public string LocationName { get; set; }
        public SupplierModel supplier { get; set; }
        public string SupplierNotes { get; set; }
        public string SupplierPurchaseNotes { get; set; }
        public string PurchaseInvNumber { get; set; }

        public List<ReceiptDetailsModel> ReceiptDetails { get; set; }
    }
}