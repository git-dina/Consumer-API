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
    
    public partial class GEN_ITEM_UNIT
    {
        public long ItemUnitId { get; set; }
        public Nullable<long> ItemId { get; set; }
        public Nullable<long> UnitId { get; set; }
        public string Barcode { get; set; }
        public string BarcodeType { get; set; }
        public bool IsBlocked { get; set; }
        public bool IsActive { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public decimal Cost { get; set; }
        public decimal SalePrice { get; set; }
        public Nullable<int> Factor { get; set; }
    
        public virtual GEN_ITEM GEN_ITEM { get; set; }
        public virtual GEN_UNIT GEN_UNIT { get; set; }
    }
}