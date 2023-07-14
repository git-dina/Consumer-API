using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class SalesPaymentModel
    {
        public long PaymentId { get; set; }
        public Nullable<long> InvoiceId { get; set; }
        public Nullable<decimal> Amount { get; set; }
        public string PaymentType { get; set; }
        public string ReceiptNum { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
    }
}