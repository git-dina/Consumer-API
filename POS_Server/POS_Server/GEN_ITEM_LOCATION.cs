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
    
    public partial class GEN_ITEM_LOCATION
    {
        public long ItemLocationId { get; set; }
        public Nullable<long> ItemId { get; set; }
        public Nullable<long> LocationId { get; set; }
        public int Min_Qty { get; set; }
        public int Max_Qty { get; set; }
        public bool IsActive { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
    
        public virtual GEN_ITEM GEN_ITEM { get; set; }
        public virtual GEN_LOCATION GEN_LOCATION { get; set; }
    }
}