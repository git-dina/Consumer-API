using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class PurchaseInvoiceModel
    {
        public long PurchaseId { get; set; }     
        public Nullable<long> RefId { get; set; }
        public string InvNumber { get; set; }
        public Nullable<long> LocationId { get; set; }
        public Nullable<long> SupId { get; set; }
        public Nullable<System.DateTime> OrderDate { get; set; }
        public Nullable<System.DateTime> OrderRecieveDate { get; set; }
        public string Notes { get; set; }
        public string SupplierNotes { get; set; }
        public string SupplierPurchaseNotes { get; set; }
        public Nullable<decimal> TotalCost { get; set; }
        public Nullable<decimal> TotalPrice { get; set; }
        public Nullable<decimal> CoopDiscount { get; set; }
        public Nullable<decimal> DiscountValue { get; set; }
        public Nullable<decimal> FreePercentage { get; set; }
        public Nullable<decimal> FreeValue { get; set; }
        public Nullable<decimal> ConsumerDiscount { get; set; }
        public Nullable<decimal> CostNet { get; set; }
        public string InvType { get; set; }
        public string InvStatus { get; set; }
        public bool IsApproved { get; set; }

        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        //extra
        public string SupplyingOrderNum { get; set; }
        public string LocationName { get; set; }
        public string SupplierName { get; set; }
        public SupplierModel supplier { get; set; }
        public List<PurchaseInvDetailsModel> PurchaseDetails { get; set; }
    }
}