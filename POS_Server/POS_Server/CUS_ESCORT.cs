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
    
    public partial class CUS_ESCORT
    {
        public long EscortId { get; set; }
        public Nullable<long> FamilyCardId { get; set; }
        public Nullable<long> CustomerId { get; set; }
        public string CivilNum { get; set; }
        public string EscortName { get; set; }
        public Nullable<int> KinshipId { get; set; }
        public Nullable<System.DateTime> AddedDate { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
    
        public virtual CUS_FAMILY_CARD CUS_FAMILY_CARD { get; set; }
        public virtual GEN_CUSTOMER GEN_CUSTOMER { get; set; }
    }
}