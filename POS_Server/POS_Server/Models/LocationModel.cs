﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class LocationModel
    {
        public long LocationId { get; set; }
        public string LocationNumber { get; set; }
        public Nullable<int> LocationTypeId { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Notes { get; set; }
        public Nullable<bool> IsReadOnly { get; set; }
        public bool IsBlocked { get; set; }
        public Nullable<int> PurCode { get; set; }
        public Nullable<int> DiscCode { get; set; }
        public Nullable<int> FreeCode { get; set; }
        public Nullable<int> SaleCode { get; set; }
        public Nullable<int> ReturnCode { get; set; }
        public Nullable<int> DamageCode { get; set; }
        public Nullable<int> AsjustmentCode { get; set; }
        public Nullable<int> ServiceCode { get; set; }
        public Nullable<int> SaleCashCode { get; set; }
        public Nullable<int> SaleVISACode { get; set; }
        public Nullable<int> ACC_09 { get; set; }
        public Nullable<int> ACC_10 { get; set; }
        public Nullable<bool> IsContainTecs { get; set; }
        public Nullable<int> Teccode { get; set; }
        public Nullable<int> SalesReturnCode { get; set; }
        public Nullable<long> PLocationID { get; set; }
        public Nullable<bool> IsDirectReceive { get; set; }
        public int PurCashCode { get; set; }
        public bool IsDirectItemConnect { get; set; }
        public int CustodyAccount { get; set; }
        public int CustodyControlAccount { get; set; }
        public int ZReadExtrasCode { get; set; }
        public int DisplayOrder { get; set; }
        public Nullable<System.DateTime> SupClearanceStartDate { get; set; }
        public bool IsActive { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }

        //extra
        public string LocationTypeName { get; set; }

    }
}