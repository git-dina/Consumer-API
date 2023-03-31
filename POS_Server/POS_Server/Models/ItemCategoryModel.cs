using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class ItemCategoryModel
    {
        public long CategoryId { get; set; }
        public Nullable<long> CategoryParentId { get; set; }
        public string Name { get; set; }
        public string CategoryParentName { get; set; }

        public decimal ProfitPercentage { get; set; }
        public decimal WholesalePercentage { get; set; }
        public decimal FreePercentage { get; set; }
        public decimal DiscountPercentage { get; set; }
        public string Notes { get; set; }
        public bool CanContainItems { get; set; }
        public string Image { get; set; }

        public bool IsBlocked { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        public List<ItemCategoryModel> SubCategories { get; set; }
    }
}