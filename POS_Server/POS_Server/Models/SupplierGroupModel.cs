﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class SupplierGroupModel
    {
        public int SupplierGroupId { get; set; }
        public string Name { get; set; }
        public Nullable<int> ParentGroupId { get; set; }
        public string Notes { get; set; }
        public bool IsBlocked { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        public bool HasSuppliers { get; set; }
    }
}