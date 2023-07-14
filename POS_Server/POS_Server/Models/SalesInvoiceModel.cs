using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class SalesInvoiceModel
    {
        public long InvoiceId { get; set; }
        public string InvNumber { get; set; }
        public Nullable<decimal> TotalNet { get; set; }
        public Nullable<long> CustomerId { get; set; }
        public Nullable<decimal> CashReturn { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        //extra
        public List<SalesInvoiceDetails> SalesDetails { get; set; }
        public CustomerModel Customer { get; set; }
    }

    public class SalesInvoiceDetails
    {
        public long DetailsId { get; set; }
        public string ItemName { get; set; }
        public Nullable<long> InvoiceId { get; set; }
        public string Barcode { get; set; }
        public Nullable<long> ItemUnitId { get; set; }
        public decimal Price { get; set; }
        public int Qty { get; set; }
        public Nullable<decimal> Total { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
    }
}