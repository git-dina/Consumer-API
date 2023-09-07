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
        public int PaymentTypeId { get; set; }

        public string ReceiptNum { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
    }

    public class PaymentTypeModel
    {
        public int PaymentTypeId { get; set; }
        public string PaymentTypeName { get; set; }
        public bool IsCard { get; set; }
        public bool IsBlocked { get; set; }
    }
}