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
    
    public partial class SAL_PAYMENT
    {
        public long PaymentId { get; set; }
        public Nullable<long> InvoiceId { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public string PaymentType { get; set; }
        public string ReceiptNum { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
    
        public virtual SAL_INVOICE SAL_INVOICE { get; set; }
    }
}