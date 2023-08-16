//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace POS_Server
{
    using System;
    using System.Collections.Generic;
    
    public partial class PUR_PURCHASE_INV_DETAILS
    {
        public long DetailsId { get; set; }
        public Nullable<long> ItemId { get; set; }
        public string ItemName { get; set; }
        public Nullable<long> PurchaseId { get; set; }
        public string ItemCode { get; set; }
        public string Barcode { get; set; }
        public string ItemNotes { get; set; }
        public Nullable<int> Factor { get; set; }
        public decimal MainCost { get; set; }
        public decimal Cost { get; set; }
        public decimal MainPrice { get; set; }
        public decimal Price { get; set; }
        public int MaxQty { get; set; }
        public int MinQty { get; set; }
        public int FreeQty { get; set; }
        public Nullable<decimal> CoopDiscount { get; set; }
        public Nullable<decimal> ConsumerDiscount { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
    
        public virtual GEN_ITEM GEN_ITEM { get; set; }
        public virtual PUR_PURCHASE_INV PUR_PURCHASE_INV { get; set; }
    }
}
