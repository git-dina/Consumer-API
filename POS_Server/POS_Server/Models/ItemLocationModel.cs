using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class ItemLocationModel
    {
        public long ItemLocationId { get; set; }
        public Nullable<long> ItemId { get; set; }
        public Nullable<long> LocationId { get; set; }
        public string LocationName { get; set; }
        public long Balance { get; set; }

        public bool IsActive { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
    }
}