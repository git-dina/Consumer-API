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
    
    public partial class INV_RECEIPT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public INV_RECEIPT()
        {
            this.INV_RECEIPT_DETAILS = new HashSet<INV_RECEIPT_DETAILS>();
            this.INV_RECEIPT_DETAILS1 = new HashSet<INV_RECEIPT_DETAILS>();
        }
    
        public long ReceiptId { get; set; }
        public string InvType { get; set; }
        public string ReceiptStatus { get; set; }
        public bool IsRecieveAll { get; set; }
        public string InvNumber { get; set; }
        public string ReceiptType { get; set; }
        public string CustomFreeType { get; set; }
        public Nullable<long> LocationId { get; set; }
        public Nullable<long> PurchaseId { get; set; }
        public Nullable<System.DateTime> ReceiptDate { get; set; }
        public Nullable<long> SupId { get; set; }
        public string SupInvoiceNum { get; set; }
        public System.DateTime SupInvoiceDate { get; set; }
        public Nullable<decimal> InvoiceAmount { get; set; }
        public Nullable<decimal> AmountDifference { get; set; }
        public string Notes { get; set; }
        public string SupplierNotes { get; set; }
        public string SupplierPurchaseNotes { get; set; }
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
    
        public virtual GEN_LOCATION GEN_LOCATION { get; set; }
        public virtual GEN_SUPPLIER GEN_SUPPLIER { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<INV_RECEIPT_DETAILS> INV_RECEIPT_DETAILS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<INV_RECEIPT_DETAILS> INV_RECEIPT_DETAILS1 { get; set; }
        public virtual PUR_PURCHASE_INV PUR_PURCHASE_INV { get; set; }
    }
}
