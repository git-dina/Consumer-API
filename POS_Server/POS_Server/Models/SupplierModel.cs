using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace POS_Server.Models
{
    public class SupplierModel
    {
        public long SupId { get; set; }
        public string SupRef { get; set; }
        public string Name { get; set; }
        public string ShortName { get; set; }
        public string Address { get; set; }
        public int SupplierTypeId { get; set; }
        public int SupplierGroupId { get; set; }
        public Nullable<long> AssistantSupId { get; set; }
        public Nullable<decimal> AssistantAccountNumber { get; set; }
        public string AssistantAccountName { get; set; }
        public Nullable<System.DateTime> AssistantStartDate { get; set; }
        public int DiscountPercentage { get; set; }
        public int FreePercentag { get; set; }
        public Nullable<int> BankId { get; set; }
        public string BankAccount { get; set; }
        public Nullable<int> SupNODays { get; set; }
        public int AccountCode { get; set; }
        public string Email { get; set; }
        public string BOX { get; set; }
        public bool IsBlocked { get; set; }
        public string LicenseId { get; set; }
        public Nullable<System.DateTime> LicenseDate { get; set; }
        public string Notes { get; set; }
        public string PurchaseOrderNotes { get; set; }
        public string Image { get; set; }
        public bool IsAllowedPO { get; set; }
        public bool IsAllowedReceipt { get; set; }
        public bool IsAllowedDirectReturn { get; set; }
        public bool IsAllowedReturnDiscount { get; set; }
        public bool IsAllowCashingChecks { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        public List<SupplierPhoneModel> SupplierPhones { get; set; }
        public List<SupplierSectorModel> SupplierSectors { get; set; }
    }

    public class SupplierPhoneModel
    {
        public int SupPhoneId { get; set; }
        public long SupId { get; set; }
        public int PhoneTypeID { get; set; }
        public string PhoneNumber { get; set; }
        public string PersonName { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
    }

    public class SupplierSectorModel
    {
        public long SupSectorId { get; set; }
        public Nullable<long> SupId { get; set; }
        public string SupSectorName { get; set; }
        public string Notes { get; set; }
        public decimal FreePercentageMarkets { get; set; }
        public Nullable<decimal> FreePercentageBranchs { get; set; }
        public Nullable<decimal> FreePercentageStores { get; set; }
        public decimal DiscountPercentageMarkets { get; set; }
        public Nullable<decimal> DiscountPercentageBranchs { get; set; }
        public Nullable<decimal> DiscountPercentageStores { get; set; }
        public bool IsBlocked { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }

        public List<SupplierSectorSpecModel> supplierSectorSpecifies { get; set; }
    }

    public class SupplierSectorSpecModel
    {
        public long SupSectorSpecifyId { get; set; }
        public long SupId { get; set; }
        public long SupSectorId { get; set; }
        public long BranchId { get; set; }
        public decimal FreePercentage { get; set; }
        public decimal DiscountPercentage { get; set; }
        public string Notes { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<long> CreateUserId { get; set; }
        public Nullable<long> UpdateUserId { get; set; }
    }

   
}