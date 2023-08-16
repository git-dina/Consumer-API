﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace POS_Server
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class ConsumerAssociationDBEntities : DbContext
    {
        public ConsumerAssociationDBEntities()
            : base("name=ConsumerAssociationDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CUS_TRANSACTION> CUS_TRANSACTION { get; set; }
        public virtual DbSet<GEN_AREA> GEN_AREA { get; set; }
        public virtual DbSet<GEN_ASSISTANT_SUPPLIER> GEN_ASSISTANT_SUPPLIER { get; set; }
        public virtual DbSet<GEN_BANK> GEN_BANK { get; set; }
        public virtual DbSet<GEN_BRAND> GEN_BRAND { get; set; }
        public virtual DbSet<GEN_COMPANY_SETTINGS> GEN_COMPANY_SETTINGS { get; set; }
        public virtual DbSet<GEN_CUSTOMER> GEN_CUSTOMER { get; set; }
        public virtual DbSet<GEN_CUSTOMER_ADDRESS> GEN_CUSTOMER_ADDRESS { get; set; }
        public virtual DbSet<GEN_CUSTOMER_BANK> GEN_CUSTOMER_BANK { get; set; }
        public virtual DbSet<GEN_CUSTOMER_DOCUMENT> GEN_CUSTOMER_DOCUMENT { get; set; }
        public virtual DbSet<GEN_HIRARACHY_STRUCTURE> GEN_HIRARACHY_STRUCTURE { get; set; }
        public virtual DbSet<GEN_ITEM> GEN_ITEM { get; set; }
        public virtual DbSet<GEN_ITEM_ALLOWED_TRANSACTION> GEN_ITEM_ALLOWED_TRANSACTION { get; set; }
        public virtual DbSet<GEN_ITEM_CATEGORY> GEN_ITEM_CATEGORY { get; set; }
        public virtual DbSet<GEN_ITEM_GENERALIZATION> GEN_ITEM_GENERALIZATION { get; set; }
        public virtual DbSet<GEN_ITEM_LOCATION> GEN_ITEM_LOCATION { get; set; }
        public virtual DbSet<GEN_ITEM_UNIT> GEN_ITEM_UNIT { get; set; }
        public virtual DbSet<GEN_JOB> GEN_JOB { get; set; }
        public virtual DbSet<GEN_KINSHIP_TIES> GEN_KINSHIP_TIES { get; set; }
        public virtual DbSet<GEN_LOCATION> GEN_LOCATION { get; set; }
        public virtual DbSet<GEN_SECTION> GEN_SECTION { get; set; }
        public virtual DbSet<GEN_SUPPLIER> GEN_SUPPLIER { get; set; }
        public virtual DbSet<GEN_SUPPLIER_DOCUMENT> GEN_SUPPLIER_DOCUMENT { get; set; }
        public virtual DbSet<GEN_SUPPLIER_PHONE> GEN_SUPPLIER_PHONE { get; set; }
        public virtual DbSet<GEN_SUPPLIER_SECTOR> GEN_SUPPLIER_SECTOR { get; set; }
        public virtual DbSet<GEN_SUPPLIER_SECTOR_SPECIFY> GEN_SUPPLIER_SECTOR_SPECIFY { get; set; }
        public virtual DbSet<GEN_UNIT> GEN_UNIT { get; set; }
        public virtual DbSet<INV_RECEIPT> INV_RECEIPT { get; set; }
        public virtual DbSet<INV_RECEIPT_DETAILS> INV_RECEIPT_DETAILS { get; set; }
        public virtual DbSet<LST_CountriesCodes> LST_CountriesCodes { get; set; }
        public virtual DbSet<LST_COUNTRY> LST_COUNTRY { get; set; }
        public virtual DbSet<LST_LOCATION_TYPE> LST_LOCATION_TYPE { get; set; }
        public virtual DbSet<LST_PHONE_TYPE> LST_PHONE_TYPE { get; set; }
        public virtual DbSet<LST_REQUEST_TOKEN> LST_REQUEST_TOKEN { get; set; }
        public virtual DbSet<LST_SUPPLIER_DOCUMENT_TYPE> LST_SUPPLIER_DOCUMENT_TYPE { get; set; }
        public virtual DbSet<LST_SUPPLIER_GROUP> LST_SUPPLIER_GROUP { get; set; }
        public virtual DbSet<LST_SUPPLIER_TYPE> LST_SUPPLIER_TYPE { get; set; }
        public virtual DbSet<PUR_PROMOTION> PUR_PROMOTION { get; set; }
        public virtual DbSet<PUR_PROMOTION_DETAILS> PUR_PROMOTION_DETAILS { get; set; }
        public virtual DbSet<PUR_PROMOTION_LOCATION> PUR_PROMOTION_LOCATION { get; set; }
        public virtual DbSet<PUR_PURCHASE_INV> PUR_PURCHASE_INV { get; set; }
        public virtual DbSet<PUR_PURCHASE_INV_DETAILS> PUR_PURCHASE_INV_DETAILS { get; set; }
        public virtual DbSet<SAL_INVOICE> SAL_INVOICE { get; set; }
        public virtual DbSet<SAL_INVOICE_DETAILS> SAL_INVOICE_DETAILS { get; set; }
        public virtual DbSet<SAL_PAYMENT> SAL_PAYMENT { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<CUS_ESCORT> CUS_ESCORT { get; set; }
        public virtual DbSet<CUS_FAMILY_CARD> CUS_FAMILY_CARD { get; set; }
        public virtual DbSet<CUS_CHANGE_FUND> CUS_CHANGE_FUND { get; set; }
    
        public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var new_diagramnameParameter = new_diagramname != null ?
                new ObjectParameter("new_diagramname", new_diagramname) :
                new ObjectParameter("new_diagramname", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
        }
    
        public virtual int sp_upgraddiagrams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
        }
    }
}
