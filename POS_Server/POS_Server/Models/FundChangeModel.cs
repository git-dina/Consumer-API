using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class FundChangeModel
    {
        public long Id { get; set; }
        public Nullable<long> CustomerId { get; set; }
        public Nullable<long> OldFundNumber { get; set; }
        public Nullable<long> NewFundNumber { get; set; }
        public Nullable<long> SecondCustomerId { get; set; }
        public string ChangeType { get; set; }
        public string Reason { get; set; }
        public Nullable<System.DateTime> ChangeDate { get; set; }
        public Nullable<long> EmptyFundNumber { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        // customer
        public string CustomerName { get; set; }
        public string CustomerStatus { get; set; }
        public string CivilNum { get; set; }
        public string MobileNumber { get; set; }
        public Nullable<System.DateTime> JoinDate { get; set; }

        public string SecondCustomerName { get; set; }
        public string SecondCustomerStatus { get; set; }
        public string SecondCivilNum { get; set; }
        public string SecondMobileNumber { get; set; }
        public Nullable<System.DateTime> SecondJoinDate { get; set; }
    }
}