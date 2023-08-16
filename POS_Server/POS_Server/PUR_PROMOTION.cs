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
    
    public partial class PUR_PROMOTION
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PUR_PROMOTION()
        {
            this.PUR_PROMOTION_DETAILS = new HashSet<PUR_PROMOTION_DETAILS>();
            this.PUR_PROMOTION_LOCATION = new HashSet<PUR_PROMOTION_LOCATION>();
        }
    
        public long PromotionId { get; set; }
        public string RefId { get; set; }
        public Nullable<System.DateTime> PromotionDate { get; set; }
        public Nullable<System.DateTime> PromotionStartDate { get; set; }
        public Nullable<System.DateTime> PromotionEndDate { get; set; }
        public bool IsStoped { get; set; }
        public Nullable<System.DateTime> StopedDate { get; set; }
        public Nullable<long> StopedBy { get; set; }
        public string PromotionCategory { get; set; }
        public string PromotionType { get; set; }
        public string PromotionNature { get; set; }
        public decimal PromotionPercentage { get; set; }
        public string Notes { get; set; }
        public bool IsTransfer { get; set; }
        public Nullable<long> TransferBy { get; set; }
        public Nullable<System.DateTime> TransferDate { get; set; }
        public bool CopyPrice { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PUR_PROMOTION_DETAILS> PUR_PROMOTION_DETAILS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PUR_PROMOTION_LOCATION> PUR_PROMOTION_LOCATION { get; set; }
    }
}
