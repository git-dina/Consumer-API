using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class CustomerModel
    {
        public long CustomerId { get; set; }
        public string Name { get; set; }
        public string Family { get; set; }
        public string InvoiceName { get; set; }
        public string Gender { get; set; }
        public string FundNumber { get; set; }
        public string CivilNum { get; set; }
        public string FamilyCard { get; set; }
        public string MaritalStatus { get; set; }
        public int? JobId { get; set; }
        public Nullable<System.DateTime> DOB { get; set; }
    }
}