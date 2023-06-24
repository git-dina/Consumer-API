using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class PromotionModel
    {
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

        //extra
        public List<PromotionDetailsModel> PromotionDetails { get; set; }
        public List<PromotionLocationsModel> PromotionLocations { get; set; }

    }

    public class PromotionDetailsModel{
        public long DetailsId { get; set; }
        public Nullable<long> PromotionId { get; set; }
        public Nullable<long> ItemId { get; set; }
        public string ItemName { get; set; }
        public string ItemCode { get; set; }
        public string Barcode { get; set; }
        public Nullable<int> UnitId { get; set; }
        public string UnitName { get; set; }
        public Nullable<int> Factor { get; set; }
        public decimal MainCost { get; set; }
        public decimal MainPrice { get; set; }
        public decimal PromotionPrice { get; set; }
        public decimal NetDeffirence { get; set; }
        public decimal Qty { get; set; }
        public string Package { get; set; }

        public bool IsItemStoped { get; set; }
        public Nullable<long> StoppedItemBy { get; set; }
        public Nullable<System.DateTime> StoppedItemDate { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        public Nullable<System.DateTime> PromotionStartDate { get; set; } = DateTime.Now;
        public Nullable<System.DateTime> PromotionEndDate { get; set; } = DateTime.Now;
    }

    public class PromotionLocationsModel
    {
        public long PromotionLocationId { get; set; }
        public Nullable<long> LocationId { get; set; }
        public Nullable<long> PromotionId { get; set; }
    }
}