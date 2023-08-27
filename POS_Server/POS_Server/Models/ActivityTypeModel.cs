using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class ActivityTypeModel
    {
        public int Id { get; set; }
        public Nullable<int> ParentTypeId { get; set; }
        public string Name { get; set; }
        public string Notes { get; set; }
        public bool IsFinal { get; set; }
        public bool OnlyFamilyCardHolder { get; set; }
        public bool IsBlocked { get; set; }
        public bool OnlyOneActivity { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }


    }
}