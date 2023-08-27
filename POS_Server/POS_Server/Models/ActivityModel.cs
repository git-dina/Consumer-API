using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class ActivityModel
    {
        public long ActivityId { get; set; }
        public Nullable<int> TypeId { get; set; }
        public string Description { get; set; }
        public decimal BasicValue { get; set; }
        public decimal ValueAfterDiscount { get; set; }
        public int MaximumBenefit { get; set; }
        public int RegestrtionCount { get; set; }
        public Nullable<System.DateTime> StartDate { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
        public string Notes { get; set; }
        public bool IsBlocked { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        //extra
        public string TypeName { get; set; }
        public int? RemainCount { get; set; }

    }
}