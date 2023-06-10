USE [ConsumerAssociationDB]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] DROP CONSTRAINT [FK_PUR_PURCHASE_INV_DETAILS_PUR_PURCHASE_INV]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] DROP CONSTRAINT [FK_PUR_PURCHASE_INV_DETAILS_GEN_ITEM]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] DROP CONSTRAINT [FK_PUR_PURCHASE_INV_PUR_PURCHASE_INV]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] DROP CONSTRAINT [FK_PUR_PURCHASE_INV_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] DROP CONSTRAINT [FK_PUR_PURCHASE_INV_GEN_LOCATION]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_LOCATION] DROP CONSTRAINT [FK_PUR_PROMOTION_LOCATION_PUR_PROMOTION]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_LOCATION] DROP CONSTRAINT [FK_PUR_PROMOTION_LOCATION_GEN_LOCATION]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS] DROP CONSTRAINT [FK_PUR_PROMOTION_DETAILS_PUR_PROMOTION]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS] DROP CONSTRAINT [FK_PUR_PROMOTION_DETAILS_GEN_ITEM]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] DROP CONSTRAINT [FK_LST_SUPPLIER_GROUP_LST_SUPPLIER_GROUP]
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS] DROP CONSTRAINT [FK_INV_RECEIPT_DETAILS_INV_RECEIPT1]
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS] DROP CONSTRAINT [FK_INV_RECEIPT_DETAILS_INV_RECEIPT]
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS] DROP CONSTRAINT [FK_INV_RECEIPT_DETAILS_GEN_ITEM]
GO
ALTER TABLE [dbo].[INV_RECEIPT] DROP CONSTRAINT [FK_INV_RECEIPT_PUR_PURCHASE_INV]
GO
ALTER TABLE [dbo].[INV_RECEIPT] DROP CONSTRAINT [FK_INV_RECEIPT_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[INV_RECEIPT] DROP CONSTRAINT [FK_INV_RECEIPT_GEN_LOCATION]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] DROP CONSTRAINT [FK_GEN_SUPPLIER_SECTOR_SPECIFY_GEN_SUPPLIER_SECTOR]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] DROP CONSTRAINT [FK_GEN_SUPPLIER_SECTOR_SPECIFY_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] DROP CONSTRAINT [FK_GEN_SUPPLIER_SECTOR_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE] DROP CONSTRAINT [FK_GEN_SUPPLIER_PHONE_LST_PHONE_TYPE]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE] DROP CONSTRAINT [FK_GEN_SUPPLIER_PHONE_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_DOCUMENT] DROP CONSTRAINT [FK_GEN_SUPPLIER_DOCUMENT_LST_SUPPLIER_DOCUMENT_TYPE]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_DOCUMENT] DROP CONSTRAINT [FK_GEN_SUPPLIER_DOCUMENT_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [FK_GEN_SUPPLIER_LST_SUPPLIER_TYPE]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [FK_GEN_SUPPLIER_LST_SUPPLIER_GROUP]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [FK_GEN_SUPPLIER_GEN_BANK]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [FK_GEN_SUPPLIER_GEN_ASSISTANT_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_LOCATION] DROP CONSTRAINT [FK_GEN_LOCATION_LST_LOCATION_TYPE]
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT] DROP CONSTRAINT [FK_GEN_ITEM_UNIT_GEN_UNIT]
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT] DROP CONSTRAINT [FK_GEN_ITEM_UNIT_GEN_ITEM]
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION] DROP CONSTRAINT [FK_GEN_ITEM_LOCATION_GEN_LOCATION]
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION] DROP CONSTRAINT [FK_GEN_ITEM_LOCATION_GEN_ITEM]
GO
ALTER TABLE [dbo].[GEN_ITEM_GENERALIZATION] DROP CONSTRAINT [FK_GEN_ITEM_GENERALIZATION_GEN_ITEM]
GO
ALTER TABLE [dbo].[GEN_ITEM_CATEGORY] DROP CONSTRAINT [FK_GEN_ITEM_Category_GEN_ITEM_Category]
GO
ALTER TABLE [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] DROP CONSTRAINT [FK_GEN_ITEM_ALLOWED_TRANSACTION_GEN_ITEM]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [FK_GEN_ITEM_LST_COUNTRY]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [FK_GEN_ITEM_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [FK_GEN_ITEM_GEN_ITEM_Category]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [FK_GEN_ITEM_GEN_BRAND]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_IsActive]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Main_Price]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Main_Cost]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_IsActive]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_IsApproved]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS] DROP CONSTRAINT [DF_PUR_PROMOTION_DETAILS_IsActive]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS] DROP CONSTRAINT [DF_PUR_PROMOTION_DETAILS_IsItemStoped]
GO
ALTER TABLE [dbo].[PUR_PROMOTION] DROP CONSTRAINT [DF_PUR_PROMOTION_IsActive]
GO
ALTER TABLE [dbo].[PUR_PROMOTION] DROP CONSTRAINT [DF_PUR_PROMOTION_PromotionPercentage]
GO
ALTER TABLE [dbo].[PUR_PROMOTION] DROP CONSTRAINT [DF_PUR_PROMOTION_IsStoped]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_TYPE] DROP CONSTRAINT [DF_SupplierTypes_IsActive]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] DROP CONSTRAINT [DF_SupplierGroups_IsActive]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] DROP CONSTRAINT [DF_SupplierGroups_Stopped]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] DROP CONSTRAINT [DF_LST_SUPPLIER_DOCUMENT_TYPE_IsActive]
GO
ALTER TABLE [dbo].[LST_LOCATION_TYPE] DROP CONSTRAINT [DF_LST_LOCATION_TYPE_IsActive]
GO
ALTER TABLE [dbo].[LST_COUNTRY] DROP CONSTRAINT [DF_LST_COUNTRY_IsActive]
GO
ALTER TABLE [dbo].[LST_CountriesCodes] DROP CONSTRAINT [DF_LST_CountriesCodes_currencyId]
GO
ALTER TABLE [dbo].[LST_CountriesCodes] DROP CONSTRAINT [DF_LST_CountriesCodes_isDefault]
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS] DROP CONSTRAINT [DF_INV_RECEIPT_DETAILS_IsActive]
GO
ALTER TABLE [dbo].[INV_RECEIPT] DROP CONSTRAINT [DF_INV_RECEIVE_IsActive]
GO
ALTER TABLE [dbo].[INV_RECEIPT] DROP CONSTRAINT [DF_INV_RECEIVE_ISAccountTransfer]
GO
ALTER TABLE [dbo].[INV_RECEIPT] DROP CONSTRAINT [DF_INV_RECEIVE_IsTransfer]
GO
ALTER TABLE [dbo].[INV_RECEIPT] DROP CONSTRAINT [DF_INV_RECEIVE_IsRecieveAll]
GO
ALTER TABLE [dbo].[GEN_UNIT] DROP CONSTRAINT [DF_GEN_UNIT_IsActive]
GO
ALTER TABLE [dbo].[GEN_UNIT] DROP CONSTRAINT [DF_GEN_UNIT_IsBlocked]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] DROP CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_SPECIFY_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] DROP CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] DROP CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_IsBlocked]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE] DROP CONSTRAINT [DF_GEN_SUPPLIER_PHONE_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_DOCUMENT] DROP CONSTRAINT [DF_GEN_SUPPLIER_DOCUMENT_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [DF_GEN_SUPPLIER_IsAllowCashingChecks]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [DF_GEN_SUPPLIER_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [DF_GEN_SUPPLIER_IsAllowedReturnDiscount]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [DF_GEN_SUPPLIER_IsAllowedReturn]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [DF_GEN_SUPPLIER_IsAllowedReceipt]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [DF_GEN_SUPPLIER_IsAllowedPO]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [DF_GEN_SUPPLIER_IsBlocked]
GO
ALTER TABLE [dbo].[GEN_LOCATION] DROP CONSTRAINT [DF_GEN_LOCATION_IsActive]
GO
ALTER TABLE [dbo].[GEN_LOCATION] DROP CONSTRAINT [DF_GEN_LOCATION_DisplayOrder]
GO
ALTER TABLE [dbo].[GEN_LOCATION] DROP CONSTRAINT [DF_GEN_LOCATION_ZReadExtrasCode]
GO
ALTER TABLE [dbo].[GEN_LOCATION] DROP CONSTRAINT [DF_GEN_LOCATION_CustodyControlAccount]
GO
ALTER TABLE [dbo].[GEN_LOCATION] DROP CONSTRAINT [DF_GEN_LOCATION_Custody_Account]
GO
ALTER TABLE [dbo].[GEN_LOCATION] DROP CONSTRAINT [DF_GEN_LOCATION_IsDirectItemConnect]
GO
ALTER TABLE [dbo].[GEN_LOCATION] DROP CONSTRAINT [DF_GEN_LOCATION_PurCashCode]
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT] DROP CONSTRAINT [DF_GEN_ITEM_UNIT_IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT] DROP CONSTRAINT [DF_GEN_ITEM_UNIT_IsBlocked]
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION] DROP CONSTRAINT [DF_GEN_ITEM_LOCATION_IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION] DROP CONSTRAINT [DF_GEN_ITEM_LOCATION_Balance]
GO
ALTER TABLE [dbo].[GEN_ITEM_GENERALIZATION] DROP CONSTRAINT [DF_GEN_ITEM_GENERALIZATION_IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM_CATEGORY] DROP CONSTRAINT [DF_GEN_ITEM_Category_IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM_CATEGORY] DROP CONSTRAINT [DF_GEN_ITEM_Category_IsBlocked]
GO
ALTER TABLE [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] DROP CONSTRAINT [DF_GEN_ITEM_ALLOWED_TRANSACTION_IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_IsSellNotAllow]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_IsContainExpiryDate]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_IsWeight]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_IsSpecialOffer]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_WholesalePrice]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_Price]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_Item_Main_Price]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_DiscPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_FreePerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_WholesaleDiscPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_ConsumerDiscPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_WholesaleProfitPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_ConsumerProfitPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_Cost]
GO
ALTER TABLE [dbo].[GEN_ITEM] DROP CONSTRAINT [DF_GEN_ITEM_Item_Main_Cost]
GO
ALTER TABLE [dbo].[GEN_BRAND] DROP CONSTRAINT [DF_GEN_BRAND_IsActive]
GO
ALTER TABLE [dbo].[GEN_BRAND] DROP CONSTRAINT [DF_GEN_BRAND_IsBlocked]
GO
ALTER TABLE [dbo].[GEN_BANK] DROP CONSTRAINT [DF_GEN_BANK_IsActive]
GO
ALTER TABLE [dbo].[GEN_BANK] DROP CONSTRAINT [DF_GEN_BANK_IsBlocked]
GO
ALTER TABLE [dbo].[GEN_ASSISTANT_SUPPLIER] DROP CONSTRAINT [DF_GEN_ASSISTANT_SUPPLIER_IsActive]
GO
ALTER TABLE [dbo].[GEN_ASSISTANT_SUPPLIER] DROP CONSTRAINT [DF_GEN_ASSISTANT_SUPPLIER_IsBlocked]
GO
/****** Object:  Table [dbo].[PUR_PURCHASE_INV_DETAILS]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUR_PURCHASE_INV_DETAILS]') AND type in (N'U'))
DROP TABLE [dbo].[PUR_PURCHASE_INV_DETAILS]
GO
/****** Object:  Table [dbo].[PUR_PURCHASE_INV]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUR_PURCHASE_INV]') AND type in (N'U'))
DROP TABLE [dbo].[PUR_PURCHASE_INV]
GO
/****** Object:  Table [dbo].[PUR_PROMOTION_LOCATION]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUR_PROMOTION_LOCATION]') AND type in (N'U'))
DROP TABLE [dbo].[PUR_PROMOTION_LOCATION]
GO
/****** Object:  Table [dbo].[PUR_PROMOTION_DETAILS]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUR_PROMOTION_DETAILS]') AND type in (N'U'))
DROP TABLE [dbo].[PUR_PROMOTION_DETAILS]
GO
/****** Object:  Table [dbo].[PUR_PROMOTION]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUR_PROMOTION]') AND type in (N'U'))
DROP TABLE [dbo].[PUR_PROMOTION]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_TYPE]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_SUPPLIER_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_SUPPLIER_TYPE]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_GROUP]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_SUPPLIER_GROUP]') AND type in (N'U'))
DROP TABLE [dbo].[LST_SUPPLIER_GROUP]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_DOCUMENT_TYPE]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_SUPPLIER_DOCUMENT_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_SUPPLIER_DOCUMENT_TYPE]
GO
/****** Object:  Table [dbo].[LST_REQUEST_TOKEN]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_REQUEST_TOKEN]') AND type in (N'U'))
DROP TABLE [dbo].[LST_REQUEST_TOKEN]
GO
/****** Object:  Table [dbo].[LST_PHONE_TYPE]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_PHONE_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_PHONE_TYPE]
GO
/****** Object:  Table [dbo].[LST_LOCATION_TYPE]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_LOCATION_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_LOCATION_TYPE]
GO
/****** Object:  Table [dbo].[LST_COUNTRY]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_COUNTRY]') AND type in (N'U'))
DROP TABLE [dbo].[LST_COUNTRY]
GO
/****** Object:  Table [dbo].[LST_CountriesCodes]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_CountriesCodes]') AND type in (N'U'))
DROP TABLE [dbo].[LST_CountriesCodes]
GO
/****** Object:  Table [dbo].[INV_RECEIPT_DETAILS]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INV_RECEIPT_DETAILS]') AND type in (N'U'))
DROP TABLE [dbo].[INV_RECEIPT_DETAILS]
GO
/****** Object:  Table [dbo].[INV_RECEIPT]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INV_RECEIPT]') AND type in (N'U'))
DROP TABLE [dbo].[INV_RECEIPT]
GO
/****** Object:  Table [dbo].[GEN_UNIT]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_UNIT]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_UNIT]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_SECTOR]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_SECTOR]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_PHONE]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_PHONE]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_PHONE]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_DOCUMENT]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_DOCUMENT]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_DOCUMENT]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER]
GO
/****** Object:  Table [dbo].[GEN_LOCATION]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_LOCATION]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_LOCATION]
GO
/****** Object:  Table [dbo].[GEN_ITEM_UNIT]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_UNIT]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_UNIT]
GO
/****** Object:  Table [dbo].[GEN_ITEM_LOCATION]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_LOCATION]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_LOCATION]
GO
/****** Object:  Table [dbo].[GEN_ITEM_GENERALIZATION]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_GENERALIZATION]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_GENERALIZATION]
GO
/****** Object:  Table [dbo].[GEN_ITEM_CATEGORY]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_CATEGORY]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_CATEGORY]
GO
/****** Object:  Table [dbo].[GEN_ITEM_ALLOWED_TRANSACTION]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_ALLOWED_TRANSACTION]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_ALLOWED_TRANSACTION]
GO
/****** Object:  Table [dbo].[GEN_ITEM]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM]
GO
/****** Object:  Table [dbo].[GEN_COMPANY_SETTINGS]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_COMPANY_SETTINGS]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_COMPANY_SETTINGS]
GO
/****** Object:  Table [dbo].[GEN_BRAND]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_BRAND]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_BRAND]
GO
/****** Object:  Table [dbo].[GEN_BANK]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_BANK]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_BANK]
GO
/****** Object:  Table [dbo].[GEN_ASSISTANT_SUPPLIER]    Script Date: 6/10/2023 2:48:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ASSISTANT_SUPPLIER]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ASSISTANT_SUPPLIER]
GO
/****** Object:  Table [dbo].[GEN_ASSISTANT_SUPPLIER]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_ASSISTANT_SUPPLIER](
	[AssistantSupId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Notes] [nvarchar](250) NOT NULL,
	[IsBlocked] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_ASSISTANT_SUPPLIER] PRIMARY KEY CLUSTERED 
(
	[AssistantSupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_BANK]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_BANK](
	[BankId] [bigint] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](100) NOT NULL,
	[Notes] [ntext] NOT NULL,
	[IsBlocked] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_BANK] PRIMARY KEY CLUSTERED 
(
	[BankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_BRAND]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_BRAND](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
	[IsBlocked] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_BRAND] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_COMPANY_SETTINGS]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_COMPANY_SETTINGS](
	[SettingId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Value] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
 CONSTRAINT [PK_GEN_COMPANY_SETTINGS] PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_ITEM]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_ITEM](
	[ItemId] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](150) NULL,
	[ShortName] [nvarchar](50) NULL,
	[EngName] [nvarchar](150) NULL,
	[ItemStatus] [nvarchar](50) NULL,
	[ItemReceiptType] [nvarchar](50) NULL,
	[ItemType] [nvarchar](50) NULL,
	[ItemTransactionType] [nvarchar](50) NULL,
	[CategoryId] [bigint] NULL,
	[BrandId] [int] NULL,
	[SupId] [bigint] NULL,
	[SupSectorId] [bigint] NULL,
	[CountryId] [bigint] NULL,
	[CommitteeNo] [int] NULL,
	[UnitId] [bigint] NULL,
	[Factor] [int] NULL,
	[MainCost] [decimal](18, 3) NOT NULL,
	[Cost] [decimal](18, 3) NOT NULL,
	[ConsumerProfitPerc] [decimal](18, 3) NOT NULL,
	[WholesaleProfitPerc] [decimal](18, 3) NOT NULL,
	[ConsumerDiscPerc] [decimal](18, 3) NOT NULL,
	[WholesaleDiscPerc] [decimal](18, 3) NOT NULL,
	[FreePerc] [decimal](18, 3) NOT NULL,
	[DiscPerc] [decimal](18, 3) NOT NULL,
	[MainPrice] [decimal](18, 3) NOT NULL,
	[Price] [decimal](18, 3) NOT NULL,
	[WholesalePrice] [decimal](18, 3) NOT NULL,
	[QtyMin] [int] NULL,
	[QtyMax] [int] NULL,
	[PackageWeight] [decimal](18, 3) NULL,
	[PackageUnit] [bigint] NULL,
	[IsSpecialOffer] [bit] NOT NULL,
	[OfferEndDate] [datetime2](7) NULL,
	[IsWeight] [bit] NOT NULL,
	[IsContainExpiryDate] [bit] NOT NULL,
	[IsSellNotAllow] [bit] NOT NULL,
	[Notes] [ntext] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[OldId] [nvarchar](10) NULL,
 CONSTRAINT [PK_GEN_ITEM] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_ITEM_ALLOWED_TRANSACTION]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_ITEM_ALLOWED_TRANSACTION](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NULL,
	[Transaction] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_GEN_ITEM_ALLOWED_TRANSACTION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_ITEM_CATEGORY]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_ITEM_CATEGORY](
	[CategoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryParentId] [bigint] NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ProfitPercentage] [decimal](18, 3) NOT NULL,
	[WholesalePercentage] [decimal](18, 3) NOT NULL,
	[FreePercentage] [decimal](18, 3) NOT NULL,
	[DiscountPercentage] [decimal](18, 3) NOT NULL,
	[Notes] [ntext] NOT NULL,
	[CanContainItems] [bit] NOT NULL,
	[Image] [ntext] NULL,
	[IsBlocked] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_ITEM_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_ITEM_GENERALIZATION]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_ITEM_GENERALIZATION](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NULL,
	[GeneralizationYear] [int] NULL,
	[GeneralizationNo] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_ITEM_GENERALIZATION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_ITEM_LOCATION]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_ITEM_LOCATION](
	[ItemLocationId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NULL,
	[LocationId] [bigint] NULL,
	[Balance] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_GEN_ITEM_LOCATION] PRIMARY KEY CLUSTERED 
(
	[ItemLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_ITEM_UNIT]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_ITEM_UNIT](
	[ItemUnitId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NULL,
	[UnitId] [bigint] NULL,
	[Barcode] [nvarchar](100) NULL,
	[BarcodeType] [nvarchar](50) NULL,
	[Cost] [decimal](18, 3) NOT NULL,
	[SalePrice] [decimal](18, 3) NOT NULL,
	[Factor] [int] NULL,
	[IsBlocked] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_GEN_ITEM_UNIT] PRIMARY KEY CLUSTERED 
(
	[ItemUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_LOCATION]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_LOCATION](
	[LocationId] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationNumber] [nvarchar](50) NULL,
	[LocationTypeId] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Address] [ntext] NULL,
	[Notes] [ntext] NULL,
	[IsReadOnly] [bit] NULL,
	[IsBlocked] [bit] NOT NULL,
	[PurCode] [int] NULL,
	[DiscCode] [int] NULL,
	[FreeCode] [int] NULL,
	[SaleCode] [int] NULL,
	[ReturnCode] [int] NULL,
	[DamageCode] [int] NULL,
	[AsjustmentCode] [int] NULL,
	[ServiceCode] [int] NULL,
	[SaleCashCode] [int] NULL,
	[SaleVISACode] [int] NULL,
	[ACC_09] [int] NULL,
	[ACC_10] [int] NULL,
	[IsContainTecs] [bit] NULL,
	[Teccode] [int] NULL,
	[SalesReturnCode] [int] NULL,
	[PLocationID] [bigint] NULL,
	[IsDirectReceive] [bit] NULL,
	[PurCashCode] [int] NOT NULL,
	[IsDirectItemConnect] [bit] NOT NULL,
	[CustodyAccount] [int] NOT NULL,
	[CustodyControlAccount] [int] NOT NULL,
	[ZReadExtrasCode] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[SupClearanceStartDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_GEN_LOCATION] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER](
	[SupId] [bigint] IDENTITY(1,1) NOT NULL,
	[SupCode] [nvarchar](50) NULL,
	[SupRef] [nvarchar](10) NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[SupplierTypeId] [int] NULL,
	[SupplierGroupId] [int] NULL,
	[AssistantSupId] [bigint] NULL,
	[AssistantAccountNumber] [decimal](18, 0) NULL,
	[AssistantAccountName] [nvarchar](150) NULL,
	[AssistantStartDate] [date] NULL,
	[DiscountPercentage] [decimal](18, 3) NOT NULL,
	[FreePercentag] [decimal](18, 3) NOT NULL,
	[BankId] [bigint] NULL,
	[BankAccount] [nvarchar](50) NULL,
	[SupNODays] [int] NULL,
	[AccountCode] [int] NULL,
	[Email] [nvarchar](50) NULL,
	[BOX] [nvarchar](50) NULL,
	[IsBlocked] [bit] NOT NULL,
	[LicenseId] [nvarchar](50) NULL,
	[LicenseDate] [date] NULL,
	[Notes] [ntext] NULL,
	[PurchaseOrderNotes] [ntext] NULL,
	[Image] [ntext] NULL,
	[IsAllowedPO] [bit] NOT NULL,
	[IsAllowedReceipt] [bit] NOT NULL,
	[IsAllowedDirectReturn] [bit] NOT NULL,
	[IsAllowedReturnDiscount] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
	[IsAllowCashingChecks] [bit] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[SupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_DOCUMENT]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER_DOCUMENT](
	[DocumentId] [bigint] IDENTITY(1,1) NOT NULL,
	[SupId] [bigint] NULL,
	[TypeId] [bigint] NULL,
	[DocName] [nvarchar](250) NULL,
	[DocTitle] [ntext] NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_SUPPLIER_DOCUMENT] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_PHONE]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER_PHONE](
	[SupPhoneId] [int] IDENTITY(1,1) NOT NULL,
	[SupId] [bigint] NOT NULL,
	[PhoneTypeID] [int] NOT NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[PersonName] [nvarchar](150) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_SUPPLIER_PHONE] PRIMARY KEY CLUSTERED 
(
	[SupPhoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR]    Script Date: 6/10/2023 2:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER_SECTOR](
	[SupSectorId] [bigint] IDENTITY(1,1) NOT NULL,
	[SupId] [bigint] NULL,
	[SupSectorName] [nvarchar](50) NULL,
	[Notes] [ntext] NULL,
	[FreePercentageMarkets] [decimal](10, 3) NOT NULL,
	[FreePercentageBranchs] [decimal](10, 3) NULL,
	[FreePercentageStores] [decimal](10, 3) NULL,
	[DiscountPercentageMarkets] [decimal](10, 3) NOT NULL,
	[DiscountPercentageBranchs] [decimal](10, 3) NULL,
	[DiscountPercentageStores] [decimal](10, 3) NULL,
	[IsBlocked] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_SUPPLIER_SECTOR] PRIMARY KEY CLUSTERED 
(
	[SupSectorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY](
	[SupSectorSpecifyId] [bigint] IDENTITY(1,1) NOT NULL,
	[SupId] [bigint] NULL,
	[SupSectorId] [bigint] NULL,
	[BranchId] [bigint] NULL,
	[FreePercentage] [decimal](18, 3) NOT NULL,
	[DiscountPercentage] [decimal](18, 3) NOT NULL,
	[Notes] [ntext] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_SUPPLIER_SECTOR_SPECIFY] PRIMARY KEY CLUSTERED 
(
	[SupSectorSpecifyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_UNIT]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_UNIT](
	[UnitId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
	[IsBlocked] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_UNIT] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INV_RECEIPT]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INV_RECEIPT](
	[ReceiptId] [bigint] IDENTITY(1,1) NOT NULL,
	[InvType] [nvarchar](50) NULL,
	[ReceiptStatus] [nvarchar](50) NULL,
	[IsRecieveAll] [bit] NOT NULL,
	[InvNumber] [nvarchar](50) NULL,
	[ReceiptType] [nvarchar](50) NULL,
	[CustomFreeType] [nvarchar](50) NULL,
	[LocationId] [bigint] NULL,
	[PurchaseId] [bigint] NULL,
	[ReceiptDate] [datetime2](7) NULL,
	[SupId] [bigint] NULL,
	[SupInvoiceNum] [nvarchar](50) NULL,
	[SupInvoiceDate] [datetime2](7) NOT NULL,
	[InvoiceAmount] [decimal](18, 3) NULL,
	[AmountDifference] [decimal](18, 3) NULL,
	[Notes] [ntext] NULL,
	[SupplierNotes] [ntext] NULL,
	[SupplierPurchaseNotes] [ntext] NULL,
	[CoopDiscount] [decimal](18, 3) NOT NULL,
	[DiscountValue] [decimal](18, 3) NOT NULL,
	[FreePercentage] [decimal](18, 3) NULL,
	[FreeValue] [decimal](18, 3) NULL,
	[ConsumerDiscount] [decimal](18, 3) NULL,
	[CostNet] [decimal](18, 3) NULL,
	[TotalCost] [decimal](18, 3) NULL,
	[TotalPrice] [decimal](18, 3) NULL,
	[IsTransfer] [bit] NOT NULL,
	[TransferBy] [bigint] NULL,
	[TransferDate] [datetime2](7) NULL,
	[ISAccountTransfer] [bit] NOT NULL,
	[AccountTransferDate] [datetime2](7) NULL,
	[AccountEntryCode] [bigint] NULL,
	[AccountEntryCodeCustody] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_INV_RECEIVE] PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INV_RECEIPT_DETAILS]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INV_RECEIPT_DETAILS](
	[DetailsId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NULL,
	[ItemName] [nvarchar](150) NULL,
	[ReceiptId] [bigint] NULL,
	[ItemCode] [nvarchar](10) NULL,
	[Barcode] [nvarchar](100) NULL,
	[ItemNotes] [ntext] NULL,
	[Factor] [int] NULL,
	[MainCost] [decimal](18, 3) NOT NULL,
	[Cost] [decimal](18, 3) NOT NULL,
	[MainPrice] [decimal](18, 3) NOT NULL,
	[Price] [money] NOT NULL,
	[MaxQty] [int] NOT NULL,
	[MinQty] [int] NOT NULL,
	[FreeQty] [int] NOT NULL,
	[CoopDiscount] [decimal](18, 3) NULL,
	[ConsumerDiscount] [decimal](18, 3) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_INV_RECEIPT_DETAILS] PRIMARY KEY CLUSTERED 
(
	[DetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LST_CountriesCodes]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_CountriesCodes](
	[countryId] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[currency] [nvarchar](50) NULL,
	[name] [nvarchar](100) NULL,
	[isDefault] [tinyint] NOT NULL,
	[currencyId] [int] NOT NULL,
	[timeZoneName] [nvarchar](100) NULL,
	[timeZoneOffset] [nvarchar](100) NULL,
 CONSTRAINT [PK_LST_CountriesCodes] PRIMARY KEY CLUSTERED 
(
	[countryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LST_COUNTRY]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_COUNTRY](
	[CountryId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_LST_COUNTRY] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LST_LOCATION_TYPE]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_LOCATION_TYPE](
	[LocationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_LST_LOCATION_TYPE] PRIMARY KEY CLUSTERED 
(
	[LocationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LST_PHONE_TYPE]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_PHONE_TYPE](
	[PhoneTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_PHONE_TYPE] PRIMARY KEY CLUSTERED 
(
	[PhoneTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LST_REQUEST_TOKEN]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_REQUEST_TOKEN](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Token] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_TokensTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_DOCUMENT_TYPE]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_SUPPLIER_DOCUMENT_TYPE](
	[TypeId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Notes] [ntext] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_LST_SUPPLIER_DOCUMENT_TYPE] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_GROUP]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_SUPPLIER_GROUP](
	[SupplierGroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ParentGroupId] [int] NULL,
	[Notes] [ntext] NULL,
	[IsBlocked] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_SupplierGroups] PRIMARY KEY CLUSTERED 
(
	[SupplierGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_TYPE]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_SUPPLIER_TYPE](
	[SupplierTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Notes] [ntext] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_SupplierTypes] PRIMARY KEY CLUSTERED 
(
	[SupplierTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUR_PROMOTION]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUR_PROMOTION](
	[PromotionId] [bigint] IDENTITY(1,1) NOT NULL,
	[RefId] [nvarchar](100) NULL,
	[PromotionDate] [date] NULL,
	[PromotionStartDate] [datetime2](7) NULL,
	[PromotionEndDate] [datetime2](7) NULL,
	[IsStoped] [bit] NOT NULL,
	[StopedDate] [datetime2](7) NULL,
	[StopedBy] [bigint] NULL,
	[PromotionCategory] [nvarchar](100) NULL,
	[PromotionType] [nvarchar](100) NULL,
	[PromotionNature] [nvarchar](100) NULL,
	[PromotionPercentage] [decimal](18, 3) NOT NULL,
	[Notes] [ntext] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_PUR_PROMOTION] PRIMARY KEY CLUSTERED 
(
	[PromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUR_PROMOTION_DETAILS]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUR_PROMOTION_DETAILS](
	[DetailsId] [bigint] IDENTITY(1,1) NOT NULL,
	[PromotionId] [bigint] NULL,
	[ItemId] [bigint] NULL,
	[ItemName] [nvarchar](150) NULL,
	[ItemCode] [nvarchar](150) NULL,
	[Barcode] [nvarchar](100) NULL,
	[UnitId] [int] NULL,
	[UnitName] [nvarchar](150) NULL,
	[Factor] [int] NULL,
	[MainCost] [decimal](18, 3) NOT NULL,
	[MainPrice] [decimal](18, 3) NOT NULL,
	[PromotionPrice] [decimal](18, 3) NOT NULL,
	[NetDeffirence] [decimal](18, 3) NOT NULL,
	[Qty] [decimal](18, 3) NOT NULL,
	[IsItemStoped] [bit] NOT NULL,
	[StoppedItemBy] [bigint] NULL,
	[StoppedItemDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_PUR_PROMOTION_DETAILS] PRIMARY KEY CLUSTERED 
(
	[DetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUR_PROMOTION_LOCATION]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUR_PROMOTION_LOCATION](
	[PromotionLocationId] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationId] [bigint] NULL,
	[PromotionId] [bigint] NULL,
 CONSTRAINT [PK_PUR_PROMOTION_LOCATION] PRIMARY KEY CLUSTERED 
(
	[PromotionLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUR_PURCHASE_INV]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUR_PURCHASE_INV](
	[PurchaseId] [bigint] IDENTITY(1,1) NOT NULL,
	[RefId] [bigint] NULL,
	[InvNumber] [nvarchar](50) NULL,
	[LocationId] [bigint] NULL,
	[SupId] [bigint] NULL,
	[OrderDate] [datetime2](7) NULL,
	[OrderRecieveDate] [datetime2](7) NULL,
	[Notes] [ntext] NULL,
	[SupplierNotes] [ntext] NULL,
	[SupplierPurchaseNotes] [ntext] NULL,
	[TotalCost] [decimal](18, 3) NULL,
	[TotalPrice] [decimal](18, 3) NULL,
	[CoopDiscount] [decimal](18, 3) NULL,
	[DiscountValue] [decimal](18, 3) NULL,
	[FreePercentage] [decimal](18, 3) NULL,
	[FreeValue] [decimal](18, 3) NULL,
	[ConsumerDiscount] [decimal](18, 3) NULL,
	[CostNet] [decimal](18, 3) NULL,
	[InvType] [nvarchar](50) NULL,
	[InvStatus] [nvarchar](50) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_PUR_PURCHASE_INV] PRIMARY KEY CLUSTERED 
(
	[PurchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUR_PURCHASE_INV_DETAILS]    Script Date: 6/10/2023 2:48:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUR_PURCHASE_INV_DETAILS](
	[DetailsId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NULL,
	[ItemName] [nvarchar](150) NULL,
	[PurchaseId] [bigint] NULL,
	[ItemCode] [nvarchar](10) NULL,
	[Barcode] [nvarchar](100) NULL,
	[ItemNotes] [ntext] NULL,
	[Factor] [int] NULL,
	[MainCost] [decimal](18, 3) NOT NULL,
	[Cost] [decimal](18, 3) NOT NULL,
	[MainPrice] [decimal](18, 3) NOT NULL,
	[Price] [money] NOT NULL,
	[MaxQty] [int] NOT NULL,
	[MinQty] [int] NOT NULL,
	[FreeQty] [int] NOT NULL,
	[CoopDiscount] [decimal](18, 3) NULL,
	[ConsumerDiscount] [decimal](18, 3) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_PUR_PURCHASE_INV_DETAILS] PRIMARY KEY CLUSTERED 
(
	[DetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GEN_ASSISTANT_SUPPLIER] ON 

INSERT [dbo].[GEN_ASSISTANT_SUPPLIER] ([AssistantSupId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'محمد', N'', 1, 0, CAST(N'2023-03-12T18:46:46.1010536' AS DateTime2), CAST(N'2023-03-12T19:04:17.5361491' AS DateTime2), NULL, 0)
INSERT [dbo].[GEN_ASSISTANT_SUPPLIER] ([AssistantSupId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'محمود', N'لا يوجد', 0, 1, CAST(N'2023-03-12T19:04:37.6101807' AS DateTime2), CAST(N'2023-03-13T18:33:55.4225691' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ASSISTANT_SUPPLIER] ([AssistantSupId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'test', N'', 0, 1, CAST(N'2023-05-24T17:03:59.7960210' AS DateTime2), CAST(N'2023-05-24T17:03:59.7960210' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[GEN_ASSISTANT_SUPPLIER] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_BANK] ON 

INSERT [dbo].[GEN_BANK] ([BankId], [BankName], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'بنك الشرق', N'لا يوجد ملاحظات', 0, 1, CAST(N'2023-03-15T01:39:19.4711492' AS DateTime2), CAST(N'2023-03-15T01:39:37.5555448' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_BANK] ([BankId], [BankName], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'بنك السوري الفرنسي', N'', 0, 1, CAST(N'2023-03-15T01:39:47.7472585' AS DateTime2), CAST(N'2023-03-15T01:39:47.7472585' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_BANK] ([BankId], [BankName], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'تي', N'', 0, 0, CAST(N'2023-03-15T01:39:55.6375929' AS DateTime2), CAST(N'2023-03-15T01:39:59.1847400' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_BANK] ([BankId], [BankName], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, N'بنك الكويت', N'', 0, 1, CAST(N'2023-05-29T17:11:37.7185834' AS DateTime2), CAST(N'2023-05-29T17:11:37.7185834' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[GEN_BANK] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_BRAND] ON 

INSERT [dbo].[GEN_BRAND] ([BrandId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'Kentaki -1', N'no comment', 1, 0, CAST(N'2023-04-01T02:13:21.9320647' AS DateTime2), CAST(N'2023-04-01T02:15:43.1455280' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_BRAND] ([BrandId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'Gutccie', N'no', 0, 1, CAST(N'2023-04-01T02:15:54.9356565' AS DateTime2), CAST(N'2023-04-01T02:16:42.1863115' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_BRAND] ([BrandId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'HP', N'', 0, 1, CAST(N'2023-04-01T02:16:23.2534059' AS DateTime2), CAST(N'2023-04-01T02:16:23.2534059' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[GEN_BRAND] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_COMPANY_SETTINGS] ON 

INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (1, N'com_name', N'Ishbelia CO.OP Association', NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (2, N'com_address', N'الكويت', NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (3, N'com_email', N'سس', NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (4, N'com_mobile', N'0485244796', NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (5, N'com_phone', N'25415874', NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (6, N'com_fax', N'', NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (7, N'com_logo', N'965d4e11f5938681348da9bc9d12d2b7.png', NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (8, N'com_nameAr', N'جمعية اشبيلية التعاونية', NULL)
SET IDENTITY_INSERT [dbo].[GEN_COMPANY_SETTINGS] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM] ON 

INSERT [dbo].[GEN_ITEM] ([ItemId], [Code], [Name], [ShortName], [EngName], [ItemStatus], [ItemReceiptType], [ItemType], [ItemTransactionType], [CategoryId], [BrandId], [SupId], [SupSectorId], [CountryId], [CommitteeNo], [UnitId], [Factor], [MainCost], [Cost], [ConsumerProfitPerc], [WholesaleProfitPerc], [ConsumerDiscPerc], [WholesaleDiscPerc], [FreePerc], [DiscPerc], [MainPrice], [Price], [WholesalePrice], [QtyMin], [QtyMax], [PackageWeight], [PackageUnit], [IsSpecialOffer], [OfferEndDate], [IsWeight], [IsContainExpiryDate], [IsSellNotAllow], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [OldId]) VALUES (6, N'00090001', N'زيت زهرة', N'qqqq', N'Zahra', N'normal', N'orders', N'general', N'recieved', 1, 2, 9, NULL, 1, NULL, 2, 12, CAST(33.000 AS Decimal(18, 3)), CAST(33.000 AS Decimal(18, 3)), CAST(9.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(3.025 AS Decimal(18, 3)), CAST(2.907 AS Decimal(18, 3)), CAST(2.777 AS Decimal(18, 3)), NULL, NULL, CAST(5.000 AS Decimal(18, 3)), 1, 1, NULL, 1, 0, 0, N'', 1, CAST(N'2023-05-04T21:30:37.8469712' AS DateTime2), CAST(N'2023-06-04T17:54:11.7103413' AS DateTime2), 0, 0, NULL)
INSERT [dbo].[GEN_ITEM] ([ItemId], [Code], [Name], [ShortName], [EngName], [ItemStatus], [ItemReceiptType], [ItemType], [ItemTransactionType], [CategoryId], [BrandId], [SupId], [SupSectorId], [CountryId], [CommitteeNo], [UnitId], [Factor], [MainCost], [Cost], [ConsumerProfitPerc], [WholesaleProfitPerc], [ConsumerDiscPerc], [WholesaleDiscPerc], [FreePerc], [DiscPerc], [MainPrice], [Price], [WholesalePrice], [QtyMin], [QtyMax], [PackageWeight], [PackageUnit], [IsSpecialOffer], [OfferEndDate], [IsWeight], [IsContainExpiryDate], [IsSellNotAllow], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [OldId]) VALUES (7, N'00090007', N'زيت عافية', N'زيت عافية', N'aaa', N'normal', N'vegetable', N'general', N'recieved', 1, 2, 9, 1, 1, NULL, 1, 1, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(9.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, NULL, NULL, NULL, 1, NULL, 1, 0, 0, N'', 1, CAST(N'2023-05-07T15:44:36.5362068' AS DateTime2), CAST(N'2023-06-06T15:42:11.1297400' AS DateTime2), 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[GEN_ITEM] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] ON 

INSERT [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] ([Id], [ItemId], [Transaction], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (1, NULL, N'purchaseOrders', 1, 0, 0, CAST(N'2023-05-07T03:08:28.7180557' AS DateTime2), CAST(N'2023-05-07T03:08:28.7180557' AS DateTime2))
INSERT [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] ([Id], [ItemId], [Transaction], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (2, NULL, N'receipt', 1, 0, 0, CAST(N'2023-05-07T03:08:28.7193379' AS DateTime2), CAST(N'2023-05-07T03:08:28.7193379' AS DateTime2))
INSERT [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] ([Id], [ItemId], [Transaction], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (3, NULL, N'returns', 1, 0, 0, CAST(N'2023-05-07T03:08:28.7199835' AS DateTime2), CAST(N'2023-05-07T03:08:28.7199835' AS DateTime2))
INSERT [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] ([Id], [ItemId], [Transaction], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (4, 6, N'purchaseOrders', 1, 0, 0, CAST(N'2023-05-07T03:25:07.2268971' AS DateTime2), CAST(N'2023-05-07T03:25:07.2268971' AS DateTime2))
INSERT [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] ([Id], [ItemId], [Transaction], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (5, 6, N'receipt', 1, 0, 0, CAST(N'2023-05-07T03:25:07.2279279' AS DateTime2), CAST(N'2023-05-07T03:25:07.2279279' AS DateTime2))
INSERT [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] ([Id], [ItemId], [Transaction], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (6, 6, N'strategic', 1, 0, 0, CAST(N'2023-05-07T14:38:34.9662011' AS DateTime2), CAST(N'2023-05-07T14:38:34.9662011' AS DateTime2))
SET IDENTITY_INSERT [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM_CATEGORY] ON 

INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, NULL, N'زيوت', CAST(9.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-03-26T01:53:50.8367138' AS DateTime2), CAST(N'2023-05-29T01:03:25.7084408' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, NULL, N'عطور', CAST(2.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-03-26T01:57:01.2828456' AS DateTime2), CAST(N'2023-03-26T01:57:01.2828456' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, 2, N'عطر فرنسي', CAST(1.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), N'', 1, NULL, 0, 1, CAST(N'2023-03-26T02:02:08.4330763' AS DateTime2), CAST(N'2023-03-26T02:47:17.2211636' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, 2, N'عطر إماراتي', CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-03-26T02:03:21.9320306' AS DateTime2), CAST(N'2023-03-26T02:03:21.9320306' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, 2, N'عطر محلي', CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-03-26T02:05:18.4043530' AS DateTime2), CAST(N'2023-03-26T02:05:18.4043530' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (10002, 3, N'test', CAST(2.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-05-01T17:41:05.6120624' AS DateTime2), CAST(N'2023-05-01T17:41:05.6120624' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_ITEM_CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM_GENERALIZATION] ON 

INSERT [dbo].[GEN_ITEM_GENERALIZATION] ([Id], [ItemId], [GeneralizationYear], [GeneralizationNo], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, 6, 1986, 12, 1, CAST(N'2023-05-04T22:43:05.8422136' AS DateTime2), CAST(N'2023-06-04T17:54:11.7731752' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_GENERALIZATION] ([Id], [ItemId], [GeneralizationYear], [GeneralizationNo], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, 6, 2000, 10, 1, CAST(N'2023-05-04T22:43:05.8432110' AS DateTime2), CAST(N'2023-06-04T17:54:11.7761650' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_GENERALIZATION] ([Id], [ItemId], [GeneralizationYear], [GeneralizationNo], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (8, 6, 1478, 10, 1, CAST(N'2023-05-12T16:28:23.6420900' AS DateTime2), CAST(N'2023-06-04T17:54:11.7771619' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_ITEM_GENERALIZATION] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM_LOCATION] ON 

INSERT [dbo].[GEN_ITEM_LOCATION] ([ItemLocationId], [ItemId], [LocationId], [Balance], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (5, 6, 1, 23, 1, 0, NULL, CAST(N'2023-05-07T03:25:07.2811018' AS DateTime2), CAST(N'2023-06-09T16:11:50.5793640' AS DateTime2))
INSERT [dbo].[GEN_ITEM_LOCATION] ([ItemLocationId], [ItemId], [LocationId], [Balance], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (6, 6, 2, 3, 1, 0, 0, CAST(N'2023-05-07T03:25:07.2830971' AS DateTime2), CAST(N'2023-05-07T03:25:07.2830971' AS DateTime2))
INSERT [dbo].[GEN_ITEM_LOCATION] ([ItemLocationId], [ItemId], [LocationId], [Balance], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (7, 6, 3, 2, 1, 0, 0, CAST(N'2023-05-07T14:38:09.7812025' AS DateTime2), CAST(N'2023-05-07T14:38:09.7812025' AS DateTime2))
INSERT [dbo].[GEN_ITEM_LOCATION] ([ItemLocationId], [ItemId], [LocationId], [Balance], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (8, 7, 1, 11, 1, 0, NULL, CAST(N'2023-05-17T17:27:11.2421248' AS DateTime2), CAST(N'2023-06-06T16:09:48.0667436' AS DateTime2))
SET IDENTITY_INSERT [dbo].[GEN_ITEM_LOCATION] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM_UNIT] ON 

INSERT [dbo].[GEN_ITEM_UNIT] ([ItemUnitId], [ItemId], [UnitId], [Barcode], [BarcodeType], [Cost], [SalePrice], [Factor], [IsBlocked], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (12, 6, 2, N'147852', N'external', CAST(33.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), 0, 0, 1, NULL, NULL, CAST(N'2023-05-16T01:00:01.1490164' AS DateTime2), CAST(N'2023-06-04T17:54:11.7402610' AS DateTime2))
INSERT [dbo].[GEN_ITEM_UNIT] ([ItemUnitId], [ItemId], [UnitId], [Barcode], [BarcodeType], [Cost], [SalePrice], [Factor], [IsBlocked], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (13, 7, 1, N'1000000100090007', N'internal', CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), 1, 0, 1, 0, NULL, CAST(N'2023-05-17T17:25:27.0971540' AS DateTime2), CAST(N'2023-06-06T15:42:11.3800701' AS DateTime2))
INSERT [dbo].[GEN_ITEM_UNIT] ([ItemUnitId], [ItemId], [UnitId], [Barcode], [BarcodeType], [Cost], [SalePrice], [Factor], [IsBlocked], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (23, 7, 1, N'125478963', N'external', CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), 1, 0, 1, 0, 0, CAST(N'2023-06-04T15:13:14.1961505' AS DateTime2), CAST(N'2023-06-06T15:42:11.3890457' AS DateTime2))
SET IDENTITY_INSERT [dbo].[GEN_ITEM_UNIT] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_LOCATION] ON 

INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (1, N'1', 8, N'السوق المركزي', N'اشبيلية', N'ملاحظة', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-05T16:53:12.1947274' AS DateTime2), CAST(N'2023-05-05T17:19:45.8004706' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (2, N'2', 2, N'المخازن العامة', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-07T02:47:52.4803152' AS DateTime2), CAST(N'2023-05-07T02:47:52.4803152' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (3, N'3', 8, N'فرع 1', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-07T02:48:05.6719273' AS DateTime2), CAST(N'2023-05-07T02:48:05.6719273' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (4, N'4', 8, N'فرع 2', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-07T02:48:16.6298240' AS DateTime2), CAST(N'2023-05-07T02:48:16.6298240' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (5, N'5', 2, N'فرع التوالف', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-07T02:49:00.4748339' AS DateTime2), CAST(N'2023-05-07T02:49:00.4748339' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (6, N'7', 3, N'فرع 5', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-07T02:49:16.7437687' AS DateTime2), CAST(N'2023-05-07T02:49:16.7437687' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (7, N'7', 1, N'فرع 7', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-07T02:49:30.7451355' AS DateTime2), CAST(N'2023-05-07T02:49:30.7451355' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (8, N'8', 1, N'لوازم العائلة', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-07T02:49:57.2876212' AS DateTime2), CAST(N'2023-05-07T02:49:57.2876212' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (9, N'10', 1, N'فرع الاجبان', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-07T02:50:14.1423429' AS DateTime2), CAST(N'2023-05-07T02:50:14.1423429' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (10, N'21', 3, N'موقع-1', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-28T23:47:57.0273477' AS DateTime2), CAST(N'2023-05-28T23:47:57.0273477' AS DateTime2))
INSERT [dbo].[GEN_LOCATION] ([LocationId], [LocationNumber], [LocationTypeId], [Name], [Address], [Notes], [IsReadOnly], [IsBlocked], [PurCode], [DiscCode], [FreeCode], [SaleCode], [ReturnCode], [DamageCode], [AsjustmentCode], [ServiceCode], [SaleCashCode], [SaleVISACode], [ACC_09], [ACC_10], [IsContainTecs], [Teccode], [SalesReturnCode], [PLocationID], [IsDirectReceive], [PurCashCode], [IsDirectItemConnect], [CustodyAccount], [CustodyControlAccount], [ZReadExtrasCode], [DisplayOrder], [SupClearanceStartDate], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (11, N'34', 2, N'موقع -2', N'', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, CAST(N'2023-05-28T23:48:07.5715857' AS DateTime2), CAST(N'2023-05-28T23:48:07.5715857' AS DateTime2))
SET IDENTITY_INSERT [dbo].[GEN_LOCATION] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER] ON 

INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupCode], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (8, N'0008', NULL, N'fesr', N'fesr', N'', 1, 1, NULL, NULL, NULL, CAST(N'2023-03-16' AS Date), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, N'', NULL, NULL, N'', N'', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, CAST(N'2023-03-17T00:40:57.4487287' AS DateTime2), CAST(N'2023-05-11T17:04:17.5416645' AS DateTime2), 0, 0, 0)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupCode], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (9, N'0009', NULL, N'ahmad', N'ahmad', N'sssss', 3, 4, 2, NULL, NULL, CAST(N'2023-05-18' AS Date), CAST(10.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), 1, N'', NULL, NULL, N'dd@gmail.com', N'', 0, N'11', NULL, N'vvv', N'fff', NULL, 1, 1, 0, 0, 1, CAST(N'2023-03-17T02:01:00.6060394' AS DateTime2), CAST(N'2023-06-08T00:18:18.2315673' AS DateTime2), 0, 0, 1)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupCode], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (10, N'0010', NULL, N'محمد', N'محمد', N'', 3, 1, 2, NULL, NULL, CAST(N'2023-05-18' AS Date), CAST(1.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)), NULL, N'', NULL, NULL, N'', N'', 0, N'13', NULL, N'', N'', NULL, 1, 1, 1, 1, 1, CAST(N'2023-05-01T18:39:40.2281836' AS DateTime2), CAST(N'2023-05-18T21:28:42.0659253' AS DateTime2), 0, 0, 1)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupCode], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (11, N'0011', NULL, N'ahmad', N'ahmad', N'sssss', 3, 4, 2, NULL, NULL, CAST(N'2023-05-21' AS Date), CAST(10.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), 1, N'', NULL, NULL, N'dd@gmail.com', N'', 0, N'11', NULL, N'vvv', N'fff', NULL, 1, 1, 1, 1, 1, CAST(N'2023-05-21T16:52:22.9906017' AS DateTime2), CAST(N'2023-05-21T16:52:22.9906017' AS DateTime2), 0, 0, 1)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupCode], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (12, N'0012', NULL, N'عامر', N'عامر', N'', 3, 4, 2, NULL, NULL, CAST(N'2023-05-24' AS Date), CAST(2.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), 1, N'', NULL, NULL, N'', N'', 0, N'', NULL, N'', N'', NULL, 1, 1, 1, 1, 1, CAST(N'2023-05-24T14:19:22.2774131' AS DateTime2), CAST(N'2023-05-24T14:21:49.5956300' AS DateTime2), 0, 0, 1)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupCode], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (13, N'0013', NULL, N'جميل', N'جميل', N'', 2, 1, 2, NULL, NULL, CAST(N'2023-05-24' AS Date), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, N'', NULL, NULL, N'', N'', 0, N'', NULL, N'', N'', NULL, 1, 1, 1, 1, 1, CAST(N'2023-05-24T14:21:32.0048733' AS DateTime2), CAST(N'2023-05-24T14:38:04.0840296' AS DateTime2), 0, 0, 1)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupCode], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (14, N'0014', NULL, N'جميل', N'جميل', N'', 3, 1, NULL, NULL, NULL, CAST(N'2023-05-24' AS Date), CAST(1.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, N'', NULL, NULL, N'', N'', 0, N'', NULL, N'', N'', NULL, 1, 1, 1, 1, 1, CAST(N'2023-05-24T14:27:16.6626961' AS DateTime2), CAST(N'2023-05-24T14:27:16.6626961' AS DateTime2), 0, 0, 1)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupCode], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (15, N'0015', NULL, N'دينا', N'دينا', N'', 1, 4, NULL, NULL, NULL, CAST(N'2023-05-24' AS Date), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, N'', NULL, NULL, N'', N'', 0, N'', NULL, N'', N'', NULL, 1, 1, 1, 1, 1, CAST(N'2023-05-24T15:00:00.2409785' AS DateTime2), CAST(N'2023-05-24T15:05:32.1663429' AS DateTime2), 0, 0, 1)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupCode], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (16, N'0016', NULL, N'new', N'new', N'', 3, 4, NULL, NULL, NULL, CAST(N'2023-05-24' AS Date), CAST(2.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, N'', NULL, NULL, N'', N'', 0, N'', NULL, N'', N'', NULL, 1, 1, 0, 0, 1, CAST(N'2023-05-24T15:10:11.0794712' AS DateTime2), CAST(N'2023-05-24T15:10:53.1886241' AS DateTime2), 0, 0, 1)
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ON 

INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, 8, 3, NULL, NULL, CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-03-17T16:19:44.3071729' AS DateTime2), CAST(N'2023-03-17T22:25:57.7035443' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, 9, 3, N'123033/18/2023 7:38:30 PM', N'123', CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-03-18T19:38:35.2085515' AS DateTime2), CAST(N'2023-06-08T00:18:18.6177370' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, 9, 3, N'2023-03-14_22-12-350320230321232302', N'2023-03-14_22-12-35', CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-03-18T19:48:16.1258665' AS DateTime2), CAST(N'2023-06-08T00:18:18.6307023' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, 9, 1, N'2023-01-15_13-56-440120230322155409..jpg', N'2023-01-15_13-56-44', NULL, NULL, 0, CAST(N'2023-03-22T15:54:12.2194801' AS DateTime2), CAST(N'2023-06-08T00:18:18.6336947' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (6, 9, 1, N'2023-01-15_13-56-440120230322155539..jpg', N'2023-01-15_13-56-44', NULL, NULL, 0, CAST(N'2023-03-22T15:56:05.3447551' AS DateTime2), CAST(N'2023-06-08T00:18:18.6366875' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (7, 9, 1, N'2023-01-15_13-56-440120230322155953.jpg', N'2023-01-15_13-56-44', NULL, NULL, 1, CAST(N'2023-03-22T15:59:56.4310661' AS DateTime2), CAST(N'2023-06-08T00:18:18.6426713' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (10004, 9, 3, NULL, NULL, CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-04T23:03:59.3929736' AS DateTime2), CAST(N'2023-06-08T00:18:18.6466597' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_PHONE] ON 

INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (10, 8, 2, N'147852', N'147852', 1, CAST(N'2023-03-17T22:33:11.5557720' AS DateTime2), CAST(N'2023-03-17T22:33:11.5557720' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1091, 13, 1, N'1478523', N'سس', 1, CAST(N'2023-05-24T14:38:04.1707980' AS DateTime2), CAST(N'2023-05-24T14:38:04.1707980' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1096, 16, 1, N'25896', NULL, 1, CAST(N'2023-05-24T15:10:53.2002803' AS DateTime2), CAST(N'2023-05-24T15:10:53.2002803' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1097, 16, 2, N'1485223', NULL, 1, CAST(N'2023-05-24T15:10:53.2002803' AS DateTime2), CAST(N'2023-05-24T15:10:53.2002803' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1113, 9, 1, N'1548', N'محمد', 1, CAST(N'2023-06-08T00:18:18.3981228' AS DateTime2), CAST(N'2023-06-08T00:18:18.3981228' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1114, 9, 2, N'14587', N'14587', 1, CAST(N'2023-06-08T00:18:18.3991196' AS DateTime2), CAST(N'2023-06-08T00:18:18.3991196' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1115, 9, 2, N'1414141', N'Ahmad', 1, CAST(N'2023-06-08T00:18:18.3991196' AS DateTime2), CAST(N'2023-06-08T00:18:18.3991196' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_PHONE] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_SECTOR] ON 

INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, 8, N'قطع 1', NULL, CAST(0.000 AS Decimal(10, 3)), NULL, NULL, CAST(0.000 AS Decimal(10, 3)), NULL, NULL, 0, 1, CAST(N'2023-03-17T22:33:11.5720937' AS DateTime2), CAST(N'2023-03-17T22:33:11.5720937' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, 9, N'قطاع 3', NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, CAST(0.000 AS Decimal(10, 3)), NULL, NULL, 0, 1, CAST(N'2023-03-17T22:37:02.9911650' AS DateTime2), CAST(N'2023-06-08T00:18:18.4950655' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, 9, N'قطاع 2', NULL, CAST(3.000 AS Decimal(10, 3)), NULL, NULL, CAST(0.000 AS Decimal(10, 3)), NULL, NULL, 0, 0, CAST(N'2023-03-18T01:14:43.9745330' AS DateTime2), CAST(N'2023-06-08T00:18:18.4720658' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, 9, N'قطاع2', NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, CAST(5.000 AS Decimal(10, 3)), NULL, NULL, 0, 0, CAST(N'2023-06-07T23:58:49.2821892' AS DateTime2), CAST(N'2023-06-08T00:18:18.4789994' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, 9, N'قطاع2', NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, CAST(5.000 AS Decimal(10, 3)), NULL, NULL, 0, 0, CAST(N'2023-06-08T00:00:35.4409419' AS DateTime2), CAST(N'2023-06-08T00:18:18.4800004' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (6, 9, N'قطاع 4', NULL, CAST(3.000 AS Decimal(10, 3)), NULL, NULL, CAST(5.000 AS Decimal(10, 3)), NULL, NULL, 0, 0, CAST(N'2023-06-08T00:00:35.4449320' AS DateTime2), CAST(N'2023-06-08T00:18:18.4810998' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (7, 9, N'قطاع2', NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, CAST(5.000 AS Decimal(10, 3)), NULL, NULL, 0, 0, CAST(N'2023-06-08T00:01:08.0619223' AS DateTime2), CAST(N'2023-06-08T00:18:18.4821003' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (8, 9, N'قطاع 4', NULL, CAST(3.000 AS Decimal(10, 3)), NULL, NULL, CAST(5.000 AS Decimal(10, 3)), NULL, NULL, 0, 0, CAST(N'2023-06-08T00:01:08.0659113' AS DateTime2), CAST(N'2023-06-08T00:18:18.4830985' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (9, 9, N'قطاع 5', NULL, CAST(4.000 AS Decimal(10, 3)), NULL, NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, 0, 0, CAST(N'2023-06-08T00:01:08.0679075' AS DateTime2), CAST(N'2023-06-08T00:18:18.4850929' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (10, 9, N'قطاع2', NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, CAST(5.000 AS Decimal(10, 3)), NULL, NULL, 0, 1, CAST(N'2023-06-08T00:03:50.3191923' AS DateTime2), CAST(N'2023-06-08T00:18:18.4970608' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (11, 9, N'قطاع 4', NULL, CAST(3.000 AS Decimal(10, 3)), NULL, NULL, CAST(5.000 AS Decimal(10, 3)), NULL, NULL, 0, 1, CAST(N'2023-06-08T00:03:50.3271720' AS DateTime2), CAST(N'2023-06-08T00:18:18.5040421' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (12, 9, N'قطاع 5', NULL, CAST(4.000 AS Decimal(10, 3)), NULL, NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, 0, 1, CAST(N'2023-06-08T00:03:50.3291667' AS DateTime2), CAST(N'2023-06-08T00:18:18.5110251' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (13, 9, N'قطاع 6', NULL, CAST(5.000 AS Decimal(10, 3)), NULL, NULL, CAST(3.000 AS Decimal(10, 3)), NULL, NULL, 0, 0, CAST(N'2023-06-08T00:08:52.2482125' AS DateTime2), CAST(N'2023-06-08T00:18:18.4870872' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (14, 9, N'قطاع 6', NULL, CAST(5.000 AS Decimal(10, 3)), NULL, NULL, CAST(3.000 AS Decimal(10, 3)), NULL, NULL, 0, 1, CAST(N'2023-06-08T00:18:18.5120200' AS DateTime2), CAST(N'2023-06-08T00:18:18.5120200' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_SECTOR] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] ON 

INSERT [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] ([SupSectorSpecifyId], [SupId], [SupSectorId], [BranchId], [FreePercentage], [DiscountPercentage], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, 9, 3, 2, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, 0, CAST(N'2023-03-18T16:28:48.1994610' AS DateTime2), CAST(N'2023-06-08T00:18:18.5628840' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] ([SupSectorSpecifyId], [SupId], [SupSectorId], [BranchId], [FreePercentage], [DiscountPercentage], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, 9, 2, 1, CAST(2.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), NULL, 1, CAST(N'2023-03-18T17:08:47.8249434' AS DateTime2), CAST(N'2023-06-08T00:18:18.5798390' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_UNIT] ON 

INSERT [dbo].[GEN_UNIT] ([UnitId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'piece', N'', 0, 1, CAST(N'2023-04-22T23:15:43.4772249' AS DateTime2), CAST(N'2023-05-01T17:42:45.6897374' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_UNIT] ([UnitId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'packet', N'اللا', 0, 1, CAST(N'2023-04-22T23:16:39.0734487' AS DateTime2), CAST(N'2023-05-01T17:42:42.9597749' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_UNIT] ([UnitId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'cartoon', N'', 0, 1, CAST(N'2023-04-28T23:01:57.9182821' AS DateTime2), CAST(N'2023-05-01T17:42:40.0066038' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_UNIT] ([UnitId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, N'kilo', N'', 0, 1, CAST(N'2023-05-01T17:43:39.0057328' AS DateTime2), CAST(N'2023-05-01T17:43:39.0057328' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_UNIT] ([UnitId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, N'package', N'', 0, 1, CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_UNIT] ([UnitId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (6, N'stand', NULL, 0, 1, CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_UNIT] ([UnitId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (7, N'dozen', NULL, 0, 1, CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_UNIT] ([UnitId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (8, N'roll', NULL, 0, 1, CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_UNIT] ([UnitId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (9, N'meter', NULL, 0, 1, CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), CAST(N'2023-05-01T17:45:07.5007759' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_UNIT] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_CountriesCodes] ON 

INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (1, N'+965', N'KWD', N'Kuwait', 1, 0, N'Arab Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (2, N'+966', N'SAR', N'Saudi Arabia', 0, 1, N'Arab Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (3, N'+968', N'OMR', N'Oman', 0, 2, N'Arabian Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (4, N'+971', N'AED', N'United Arab Emirates', 0, 3, N'Arabian Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (5, N'+974', N'QAR', N'Qatar', 0, 4, N'Arabian Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (6, N'+973', N'BHD', N'Bahrain', 0, 5, N'Arabian Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (7, N'+964', N'IQD', N'Iraq', 0, 6, N'Arabic Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (8, N'+961', N'LBP', N'Lebanon', 0, 7, N'Middle East Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (9, N'+963', N'SYP', N'Syria', 0, 8, N'Syria Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (10, N'+967', N'YER', N'Yemen', 0, 9, N'Arab Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (11, N'+962', N'JOD', N'Jordan', 0, 10, N'Jordan Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (12, N'+213', N'DZD', N'Algeria', 0, 11, N'W. Central Africa Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (13, N'+20', N'EGP', N'Egypt', 0, 12, N'Egypt Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (14, N'+216', N'TND', N'Tunisia', 0, 13, N'W. Central Africa Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (15, N'+249', N'SDG', N'Sudan', 0, 14, N'Sudan Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (16, N'+212', N'MAD', N'Morocco', 0, 15, N'Morocco Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (17, N'+218', N'LYD', N'Libya', 0, 16, N'Libya Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (18, N'+252', N'SOS', N'Somalia', 0, 17, N'E. Africa Standard Time', NULL)
INSERT [dbo].[LST_CountriesCodes] ([countryId], [code], [currency], [name], [isDefault], [currencyId], [timeZoneName], [timeZoneOffset]) VALUES (19, N'+90', N'TRY', N'Turkey', 0, 18, N'Turkey Standard Time', NULL)
SET IDENTITY_INSERT [dbo].[LST_CountriesCodes] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_COUNTRY] ON 

INSERT [dbo].[LST_COUNTRY] ([CountryId], [CountryName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'الكويت', 1, CAST(N'2023-03-15T01:42:40.3205393' AS DateTime2), CAST(N'2023-03-15T01:42:40.3205393' AS DateTime2), 0, 0)
INSERT [dbo].[LST_COUNTRY] ([CountryId], [CountryName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'سوريا', 1, CAST(N'2023-03-15T01:42:48.9705227' AS DateTime2), CAST(N'2023-03-15T01:42:48.9705227' AS DateTime2), 0, 0)
INSERT [dbo].[LST_COUNTRY] ([CountryId], [CountryName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'يييس', 0, CAST(N'2023-03-15T01:42:56.9349836' AS DateTime2), CAST(N'2023-03-15T01:43:04.2778862' AS DateTime2), 0, 0)
INSERT [dbo].[LST_COUNTRY] ([CountryId], [CountryName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, N'السعودية', 1, CAST(N'2023-05-01T17:48:21.4294918' AS DateTime2), CAST(N'2023-05-01T17:48:21.4294918' AS DateTime2), 0, 0)
INSERT [dbo].[LST_COUNTRY] ([CountryId], [CountryName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, N'سعودية', 1, CAST(N'2023-05-29T17:12:19.0041778' AS DateTime2), CAST(N'2023-05-29T17:12:19.0041778' AS DateTime2), 0, 0)
INSERT [dbo].[LST_COUNTRY] ([CountryId], [CountryName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (6, N'ايطالية', 1, CAST(N'2023-06-07T23:49:20.0100690' AS DateTime2), CAST(N'2023-06-07T23:49:20.0100690' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[LST_COUNTRY] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_LOCATION_TYPE] ON 

INSERT [dbo].[LST_LOCATION_TYPE] ([LocationTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'سوق', 1, CAST(N'2023-05-05T16:32:49.1932255' AS DateTime2), CAST(N'2023-05-05T16:33:07.8892980' AS DateTime2), 0, 0)
INSERT [dbo].[LST_LOCATION_TYPE] ([LocationTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'مخزن', 1, CAST(N'2023-05-05T16:37:14.3374508' AS DateTime2), CAST(N'2023-05-05T16:37:14.3374508' AS DateTime2), 0, 0)
INSERT [dbo].[LST_LOCATION_TYPE] ([LocationTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'جملة', 1, CAST(N'2023-05-05T16:37:27.4277443' AS DateTime2), CAST(N'2023-05-05T16:37:27.4277443' AS DateTime2), 0, 0)
INSERT [dbo].[LST_LOCATION_TYPE] ([LocationTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, N'صيدلية', 0, CAST(N'2023-05-05T16:37:32.6798268' AS DateTime2), CAST(N'2023-05-05T16:38:04.7388774' AS DateTime2), 0, 0)
INSERT [dbo].[LST_LOCATION_TYPE] ([LocationTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, N'خضار', 1, CAST(N'2023-05-05T16:37:43.7538427' AS DateTime2), CAST(N'2023-05-05T16:37:43.7538427' AS DateTime2), 0, 0)
INSERT [dbo].[LST_LOCATION_TYPE] ([LocationTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (6, N'سوق وخضار', 1, CAST(N'2023-05-05T16:37:49.7155077' AS DateTime2), CAST(N'2023-05-05T16:37:49.7155077' AS DateTime2), 0, 0)
INSERT [dbo].[LST_LOCATION_TYPE] ([LocationTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (7, N'صيدلية', 1, CAST(N'2023-05-05T16:38:09.6275389' AS DateTime2), CAST(N'2023-05-05T16:38:09.6275389' AS DateTime2), 0, 0)
INSERT [dbo].[LST_LOCATION_TYPE] ([LocationTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (8, N'سوق مركزي وخضار', 1, CAST(N'2023-05-05T17:00:23.2524733' AS DateTime2), CAST(N'2023-05-05T17:00:23.2524733' AS DateTime2), 0, 0)
INSERT [dbo].[LST_LOCATION_TYPE] ([LocationTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (9, N'test', 1, CAST(N'2023-05-24T17:05:24.8055667' AS DateTime2), CAST(N'2023-05-24T17:05:24.8055667' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[LST_LOCATION_TYPE] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_PHONE_TYPE] ON 

INSERT [dbo].[LST_PHONE_TYPE] ([PhoneTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'هاتف المكتب', 1, CAST(N'2023-03-14T02:27:45.0615006' AS DateTime2), CAST(N'2023-03-14T02:27:45.0615006' AS DateTime2), 0, 0)
INSERT [dbo].[LST_PHONE_TYPE] ([PhoneTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'هاتف المنزل', 1, CAST(N'2023-03-14T02:27:58.9776718' AS DateTime2), CAST(N'2023-03-14T02:28:04.1853615' AS DateTime2), 0, 0)
INSERT [dbo].[LST_PHONE_TYPE] ([PhoneTypeId], [Name], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'هاتف شخصي', 0, CAST(N'2023-03-14T02:36:56.0287224' AS DateTime2), CAST(N'2023-03-14T02:37:10.1575568' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[LST_PHONE_TYPE] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_REQUEST_TOKEN] ON 

INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (1, N'kk', CAST(N'2023-03-11T21:56:38.9146422' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (2, N'1332390954872017680', CAST(N'2023-03-21T23:58:34.5080646' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (3, N'1332390958361226420', CAST(N'2023-03-21T23:58:35.3740960' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (4, N'1332390966308454030', CAST(N'2023-03-21T23:58:35.4369273' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (5, N'1332390961561779760', CAST(N'2023-03-21T23:58:35.6210138' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (6, N'1332390959767759290', CAST(N'2023-03-21T23:58:56.6215472' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (7, N'1332391008432452320', CAST(N'2023-03-22T00:06:30.2427675' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (8, N'1332396572466479960', CAST(N'2023-03-22T15:33:32.9915138' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (9, N'1332396579861391740', CAST(N'2023-03-22T15:33:34.4450964' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10, N'1332396567444373810', CAST(N'2023-03-22T15:33:34.5227328' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11, N'1332396563616726190', CAST(N'2023-03-22T15:33:34.8481911' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12, N'1332396573957456190', CAST(N'2023-03-22T15:33:38.2440167' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13, N'1332396599520809670', CAST(N'2023-03-22T15:39:17.9432195' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (14, N'1332396599232535230', CAST(N'2023-03-22T15:39:18.2180353' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (15, N'1332396595965544160', CAST(N'2023-03-22T15:39:18.2623651' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (16, N'1332396613436346340', CAST(N'2023-03-22T15:39:18.3093721' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (17, N'1332396596742061360', CAST(N'2023-03-22T15:39:20.5342196' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (18, N'1332396630987052410', CAST(N'2023-03-22T15:43:08.7822133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (19, N'1332396627310681590', CAST(N'2023-03-22T15:43:09.0361188' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (20, N'1332396619043531510', CAST(N'2023-03-22T15:43:09.0710243' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (21, N'1332396628030638700', CAST(N'2023-03-22T15:43:09.1268744' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (22, N'1332396631659908300', CAST(N'2023-03-22T15:43:11.5253854' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (23, N'1332396628008328700', CAST(N'2023-03-22T15:44:21.0818801' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (24, N'1332396650362530610', CAST(N'2023-03-22T15:47:10.1100364' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (25, N'1332396661877901720', CAST(N'2023-03-22T15:49:08.6640130' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (26, N'1332396673762804410', CAST(N'2023-03-22T15:49:59.1002556' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (27, N'1332396675823028430', CAST(N'2023-03-22T15:51:14.6909466' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (28, N'1332396687333637410', CAST(N'2023-03-22T15:53:31.3881515' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (29, N'1332396698735725710', CAST(N'2023-03-22T15:54:11.9380817' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (30, N'1332396697649967710', CAST(N'2023-03-22T15:56:05.1227186' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (31, N'1332396713489206260', CAST(N'2023-03-22T15:56:48.0688283' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (32, N'1332396716099866600', CAST(N'2023-03-22T15:59:00.8824238' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (33, N'1332396719459699910', CAST(N'2023-03-22T15:59:18.1237732' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (34, N'1332396736587863400', CAST(N'2023-03-22T15:59:23.6368839' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (35, N'1332396737935733880', CAST(N'2023-03-22T15:59:25.2641835' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (36, N'1332396723785418580', CAST(N'2023-03-22T15:59:56.2229656' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (37, N'1332396732394792520', CAST(N'2023-03-22T16:00:27.3042007' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (38, N'1332396733902321230', CAST(N'2023-03-22T16:01:37.2893053' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (39, N'1332396754805049940', CAST(N'2023-03-22T16:02:31.5726549' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (40, N'1332396752457412460', CAST(N'2023-03-22T16:02:56.9396156' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (41, N'1332396763963936240', CAST(N'2023-03-22T16:05:35.9707102' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (42, N'1332396760846087200', CAST(N'2023-03-22T16:05:36.2921913' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (43, N'1332396765889498770', CAST(N'2023-03-22T16:05:36.3588241' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (44, N'1332396765725946060', CAST(N'2023-03-22T16:05:36.4433094' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (45, N'1332396770116479820', CAST(N'2023-03-22T16:05:38.5751344' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (46, N'1332396768620046930', CAST(N'2023-03-22T16:05:50.5119186' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (47, N'1332396772083492240', CAST(N'2023-03-22T16:08:12.4249847' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (48, N'1332417707081307780', CAST(N'2023-03-25T02:14:52.1928481' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (49, N'1332425840222089470', CAST(N'2023-03-26T00:52:59.8715692' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (50, N'1332425851361114250', CAST(N'2023-03-26T00:53:50.5827613' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (51, N'1332425864255163360', CAST(N'2023-03-26T00:57:01.2559169' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (52, N'1332425895680511820', CAST(N'2023-03-26T01:01:43.2433265' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (53, N'1332425900293297460', CAST(N'2023-03-26T01:02:08.4119028' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (54, N'1332425914145380420', CAST(N'2023-03-26T01:02:16.3379509' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (55, N'1332425918743452080', CAST(N'2023-03-26T01:03:21.9270445' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (56, N'1332425932082956760', CAST(N'2023-03-26T01:05:18.3644669' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (57, N'1332425922977767570', CAST(N'2023-03-26T01:05:50.8070256' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (58, N'1332425939503110890', CAST(N'2023-03-26T01:07:16.6511034' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (59, N'1332425948534493500', CAST(N'2023-03-26T01:08:13.7304991' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (60, N'1332426023011105790', CAST(N'2023-03-26T01:21:55.3848836' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (61, N'1332426158485795160', CAST(N'2023-03-26T01:45:02.7619412' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (62, N'1332426161880386610', CAST(N'2023-03-26T01:46:52.5778173' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (63, N'1332426181919020800', CAST(N'2023-03-26T01:47:17.1982259' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (64, N'1332426186605168830', CAST(N'2023-03-26T01:47:45.0745968' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (65, N'1332426192047783510', CAST(N'2023-03-26T01:49:02.6606166' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (66, N'1332426228817147440', CAST(N'2023-03-26T01:55:55.6323019' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (67, N'1332426251744377540', CAST(N'2023-03-26T01:59:41.0328629' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (68, N'1332426257809485550', CAST(N'2023-03-26T01:59:59.6586809' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (69, N'1332426250114744690', CAST(N'2023-03-26T02:01:20.3973128' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10002, N'1332468819650418120', CAST(N'2023-03-31T01:16:33.5082535' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10003, N'1332469679672392390', CAST(N'2023-03-31T03:36:45.9720203' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10004, N'1332477795438565450', CAST(N'2023-04-01T02:13:21.0524157' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10005, N'1332477820452055290', CAST(N'2023-04-01T02:15:31.7505743' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10006, N'1332477817561907000', CAST(N'2023-04-01T02:15:42.9863913' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10007, N'1332477817391090320', CAST(N'2023-04-01T02:15:54.8681823' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10008, N'1332477822137396580', CAST(N'2023-04-01T02:16:23.2394433' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10009, N'1332477835613447280', CAST(N'2023-04-01T02:16:42.0785376' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10010, N'1332477837247243050', CAST(N'2023-04-01T02:19:14.6982148' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10011, N'1332666782615869260', CAST(N'2023-04-22T23:09:46.0597618' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10012, N'1332666831997005730', CAST(N'2023-04-22T23:15:31.2508414' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10013, N'1332666834017375780', CAST(N'2023-04-22T23:15:43.2737293' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10014, N'1332666827874397780', CAST(N'2023-04-22T23:16:39.0614820' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10015, N'1332666847443163560', CAST(N'2023-04-22T23:17:46.6863264' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10016, N'1332666990557158360', CAST(N'2023-04-22T23:41:50.6088640' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10017, N'1332666982846582290', CAST(N'2023-04-22T23:41:51.4487715' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10018, N'1332666991880923930', CAST(N'2023-04-22T23:41:51.5126031' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10019, N'1332666985645044630', CAST(N'2023-04-22T23:41:51.5640756' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10020, N'1332666995558266330', CAST(N'2023-04-22T23:42:42.5157757' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10021, N'1332701014325209740', CAST(N'2023-04-26T22:12:53.6378041' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10022, N'1332701007266778210', CAST(N'2023-04-26T22:12:55.4559428' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10023, N'1332701002250506500', CAST(N'2023-04-26T22:12:55.6065400' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10024, N'1332701010176968540', CAST(N'2023-04-26T22:12:55.7112605' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10025, N'1332701095611503370', CAST(N'2023-04-26T22:26:59.9370425' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10026, N'1332701090190585560', CAST(N'2023-04-26T22:27:00.2551925' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10027, N'1332701088746915420', CAST(N'2023-04-26T22:27:00.2930913' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10028, N'1332701083139623710', CAST(N'2023-04-26T22:27:00.3429576' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10029, N'1332701158381832710', CAST(N'2023-04-26T22:37:33.0435113' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10030, N'1332701160490752130', CAST(N'2023-04-26T22:37:33.4893111' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10031, N'1332701148522907480', CAST(N'2023-04-26T22:37:33.5421699' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10032, N'1332701155688939300', CAST(N'2023-04-26T22:37:33.6369147' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10033, N'1332701225759638410', CAST(N'2023-04-26T22:49:00.1106362' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10034, N'1332701229706586250', CAST(N'2023-04-26T22:49:00.5813796' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10035, N'1332701224850636820', CAST(N'2023-04-26T22:49:00.6771213' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10036, N'1332701214438394700', CAST(N'2023-04-26T22:49:00.7549139' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10037, N'1332701242085541920', CAST(N'2023-04-26T22:51:10.9985126' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10038, N'1332701294294362550', CAST(N'2023-04-26T22:59:06.6571160' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10039, N'1332701292572658300', CAST(N'2023-04-26T22:59:06.9862371' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10040, N'1332701290007574310', CAST(N'2023-04-26T22:59:07.0351045' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10041, N'1332701281245020780', CAST(N'2023-04-26T22:59:07.1418199' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10042, N'1332716115441333870', CAST(N'2023-04-28T16:09:37.4878607' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10043, N'1332716098165244680', CAST(N'2023-04-28T16:09:39.1303949' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10044, N'1332716107726481730', CAST(N'2023-04-28T16:09:39.2667636' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10045, N'1332716099320498160', CAST(N'2023-04-28T16:09:39.3415648' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10046, N'1332716099902881650', CAST(N'2023-04-28T16:09:40.1787517' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10047, N'1332716127030316000', CAST(N'2023-04-28T16:11:38.2037768' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10048, N'1332716128008546770', CAST(N'2023-04-28T16:11:38.6225108' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10049, N'1332716130512724400', CAST(N'2023-04-28T16:11:38.6680571' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10050, N'1332716126013829210', CAST(N'2023-04-28T16:11:38.7707825' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10051, N'1332716130472480950', CAST(N'2023-04-28T16:11:39.0063560' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10052, N'1332716134259209630', CAST(N'2023-04-28T16:12:52.7952585' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10053, N'1332716121815208800', CAST(N'2023-04-28T16:12:53.1991782' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10054, N'1332716137516525670', CAST(N'2023-04-28T16:12:53.2580210' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10055, N'1332716137308574820', CAST(N'2023-04-28T16:12:53.3457865' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10056, N'1332716119100869810', CAST(N'2023-04-28T16:12:53.5492655' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10057, N'1332716139143739160', CAST(N'2023-04-28T16:14:54.9925905' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10058, N'1332716134561153330', CAST(N'2023-04-28T16:14:55.3419845' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10059, N'1332716145370950960', CAST(N'2023-04-28T16:14:55.3937520' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10060, N'1332716132266105370', CAST(N'2023-04-28T16:14:55.4436140' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10061, N'1332716139025695810', CAST(N'2023-04-28T16:14:55.6151551' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10062, N'1332718495184495450', CAST(N'2023-04-28T22:49:02.7560556' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10063, N'1332718495771321850', CAST(N'2023-04-28T22:49:04.2081721' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10064, N'1332718510274129910', CAST(N'2023-04-28T22:49:04.3138936' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10065, N'1332718514864176880', CAST(N'2023-04-28T22:49:04.4275856' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10066, N'1332718498091153490', CAST(N'2023-04-28T22:49:05.3850267' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10067, N'1332718504405204270', CAST(N'2023-04-28T22:49:05.7191328' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10068, N'1332718530403943810', CAST(N'2023-04-28T22:52:46.6248459' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10069, N'1332718526172801170', CAST(N'2023-04-28T22:52:47.0177941' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10070, N'1332718536579771180', CAST(N'2023-04-28T22:52:47.0756390' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10071, N'1332718532273938560', CAST(N'2023-04-28T22:52:47.1364761' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10072, N'1332718532048880980', CAST(N'2023-04-28T22:52:47.3219790' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10073, N'1332718536354547060', CAST(N'2023-04-28T22:52:47.3788276' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10074, N'1332718559379869510', CAST(N'2023-04-28T22:58:19.8019704' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10075, N'1332718578491210230', CAST(N'2023-04-28T22:59:58.6939580' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10076, N'1332718590165498480', CAST(N'2023-04-28T23:01:57.6061172' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10077, N'1332718609623776970', CAST(N'2023-04-28T23:05:11.5592482' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10078, N'1332718677770720850', CAST(N'2023-04-28T23:16:57.4206484' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10079, N'1332718684742900450', CAST(N'2023-04-28T23:20:59.2315064' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10080, N'1332718740444482920', CAST(N'2023-04-28T23:27:52.4605749' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10081, N'1332719018579909210', CAST(N'2023-04-29T00:15:47.3564562' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10082, N'1332719033764751430', CAST(N'2023-04-29T00:15:49.1973096' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10083, N'1332719034521400100', CAST(N'2023-04-29T00:15:49.2890641' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10084, N'1332719033452938590', CAST(N'2023-04-29T00:15:49.4557211' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10085, N'1332719027084081020', CAST(N'2023-04-29T00:15:50.5060807' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10086, N'1332719024427452580', CAST(N'2023-04-29T00:15:50.8032846' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10087, N'1332719075535506300', CAST(N'2023-04-29T00:23:05.0132302' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10088, N'1332719079202904850', CAST(N'2023-04-29T00:23:05.4610327' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10089, N'1332719064423107920', CAST(N'2023-04-29T00:23:05.5128943' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10090, N'1332719069293090260', CAST(N'2023-04-29T00:23:05.5627610' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10091, N'1332719065424878640', CAST(N'2023-04-29T00:23:05.8340353' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10092, N'1332719075671152170', CAST(N'2023-04-29T00:23:05.9118278' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10093, N'1332719079014555200', CAST(N'2023-04-29T00:24:20.8483122' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10094, N'1332719072344093260', CAST(N'2023-04-29T00:25:19.8609445' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10095, N'1332719124919513860', CAST(N'2023-04-29T00:33:38.6756006' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10096, N'1332719124950636540', CAST(N'2023-04-29T00:33:39.1094404' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10097, N'1332719126257859490', CAST(N'2023-04-29T00:33:39.2740010' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10098, N'1332719122865443020', CAST(N'2023-04-29T00:33:39.3308483' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10099, N'1332719142965172520', CAST(N'2023-04-29T00:33:39.5233335' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10100, N'1332719124351444110', CAST(N'2023-04-29T00:33:39.5861661' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10101, N'1332719376140761260', CAST(N'2023-04-29T01:15:42.9526954' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10102, N'1332719389833220730', CAST(N'2023-04-29T01:15:44.1943749' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10103, N'1332719376905744220', CAST(N'2023-04-29T01:15:44.4117961' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10104, N'1332719377909412630', CAST(N'2023-04-29T01:15:44.5603960' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10105, N'1332719392557660280', CAST(N'2023-04-29T01:15:45.3103914' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10106, N'1332719395765965170', CAST(N'2023-04-29T01:15:45.5906407' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10107, N'1332719404627440400', CAST(N'2023-04-29T01:20:05.5654163' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10108, N'1332719403862711760', CAST(N'2023-04-29T01:20:06.1169412' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10109, N'1332719408297201270', CAST(N'2023-04-29T01:20:06.1747873' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10110, N'1332719418031483520', CAST(N'2023-04-29T01:20:06.2605579' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10111, N'1332719407079611940', CAST(N'2023-04-29T01:20:06.4909420' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10112, N'1332719401975029510', CAST(N'2023-04-29T01:20:06.5807017' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10113, N'1332719495054010810', CAST(N'2023-04-29T01:34:18.5123241' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10114, N'1332719503398422750', CAST(N'2023-04-29T01:35:39.4375479' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10115, N'1332719499563370410', CAST(N'2023-04-29T01:35:39.7187957' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10116, N'1332719506834604720', CAST(N'2023-04-29T01:35:39.8444620' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10117, N'1332719502939051190', CAST(N'2023-04-29T01:35:40.2054947' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10118, N'1332719511586166750', CAST(N'2023-04-29T01:35:40.3501071' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10119, N'1332735695706959380', CAST(N'2023-04-30T22:34:59.2370645' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10120, N'1332735704930618030', CAST(N'2023-04-30T22:35:33.9344577' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10121, N'1332735699260712570', CAST(N'2023-04-30T22:35:36.4725941' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10122, N'1332735699939307380', CAST(N'2023-04-30T22:35:36.6670736' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10123, N'1332735707823926210', CAST(N'2023-04-30T22:35:36.7498572' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10124, N'1332735712185437840', CAST(N'2023-04-30T22:35:36.8864871' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10125, N'1332735781226971410', CAST(N'2023-04-30T22:48:16.4409680' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10126, N'1332735770859527030', CAST(N'2023-04-30T22:48:16.8917619' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10127, N'1332735778561682630', CAST(N'2023-04-30T22:48:16.9645674' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10128, N'1332735777353842780', CAST(N'2023-04-30T22:48:17.0942213' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10129, N'1332735782121027530', CAST(N'2023-04-30T22:48:17.2527981' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10130, N'1332735782155457550', CAST(N'2023-04-30T22:48:17.3644983' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10131, N'1332735833298542590', CAST(N'2023-04-30T22:57:47.7950537' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10132, N'1332735829344096540', CAST(N'2023-04-30T22:57:48.2847449' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10133, N'1332735841351429250', CAST(N'2023-04-30T22:57:48.4074179' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10134, N'1332735833520532760', CAST(N'2023-04-30T22:57:48.5181212' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10135, N'1332735832067544800', CAST(N'2023-04-30T22:57:48.7455141' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10136, N'1332735847018398750', CAST(N'2023-04-30T22:57:48.8711790' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10137, N'1332736105293438950', CAST(N'2023-04-30T23:43:49.7904397' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10138, N'1332736116118558180', CAST(N'2023-04-30T23:43:50.9917617' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10139, N'1332736113045760410', CAST(N'2023-04-30T23:43:51.0486091' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10140, N'1332736106157990560', CAST(N'2023-04-30T23:43:51.1533302' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10141, N'1332736110865085210', CAST(N'2023-04-30T23:43:51.7836989' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10142, N'1332736122807769590', CAST(N'2023-04-30T23:43:52.0160776' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10143, N'1332736155585039140', CAST(N'2023-04-30T23:49:22.7462749' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10144, N'1332736144877800720', CAST(N'2023-04-30T23:49:23.1980651' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10145, N'1332736137821356250', CAST(N'2023-04-30T23:49:23.2549150' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10146, N'1332736139045694050', CAST(N'2023-04-30T23:49:23.3117638' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10147, N'1332736141807506030', CAST(N'2023-04-30T23:49:23.5092336' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10148, N'1332736139396046980', CAST(N'2023-04-30T23:49:23.5770535' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10149, N'1332736169216027720', CAST(N'2023-04-30T23:53:32.4888225' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10150, N'1332736173849179190', CAST(N'2023-04-30T23:53:32.8777819' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10151, N'1332736179360539420', CAST(N'2023-04-30T23:53:32.9296445' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10152, N'1332736164451793740', CAST(N'2023-04-30T23:53:32.9765191' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10153, N'1332736162035409470', CAST(N'2023-04-30T23:53:33.1660126' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10154, N'1332736167394501450', CAST(N'2023-04-30T23:53:33.2218633' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10155, N'1332736676675605120', CAST(N'2023-05-01T01:18:28.7696540' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10156, N'1332736679262736090', CAST(N'2023-05-01T01:18:29.6752322' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10157, N'1332736685500005550', CAST(N'2023-05-01T01:18:29.7380633' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10158, N'1332736682192221290', CAST(N'2023-05-01T01:18:29.8377964' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10159, N'1332736686946688290', CAST(N'2023-05-01T01:18:30.2217707' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10160, N'1332736673671708750', CAST(N'2023-05-01T01:18:30.4242308' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10161, N'1332736872171490090', CAST(N'2023-05-01T01:51:54.5244846' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10162, N'1332736889836735050', CAST(N'2023-05-01T01:51:55.6534682' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10163, N'1332736880645854900', CAST(N'2023-05-01T01:51:55.7232963' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10164, N'1332736871751247240', CAST(N'2023-05-01T01:51:55.8529338' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10165, N'1332736874481060430', CAST(N'2023-05-01T01:51:56.3000823' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10166, N'1332736874697767320', CAST(N'2023-05-01T01:51:56.4516757' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10167, N'1332742550764409070', CAST(N'2023-05-01T17:38:11.7802743' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10168, N'1332742576035490260', CAST(N'2023-05-01T17:41:05.3986336' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10169, N'1332742589621852970', CAST(N'2023-05-01T17:41:24.0843645' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10170, N'1332742588677528230', CAST(N'2023-05-01T17:42:39.9826689' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10171, N'1332742580767748080', CAST(N'2023-05-01T17:42:42.9248668' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10172, N'1332742594171133650', CAST(N'2023-05-01T17:42:45.6807618' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10173, N'1332742588751984260', CAST(N'2023-05-01T17:43:38.9967561' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10174, N'1332742607229176510', CAST(N'2023-05-01T17:45:07.4957899' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10175, N'1332742604625118180', CAST(N'2023-05-01T17:46:24.3978465' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10176, N'1332742617529334540', CAST(N'2023-05-01T17:46:24.5175257' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10177, N'1332742612127652250', CAST(N'2023-05-01T17:46:24.6471790' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10178, N'1332742601973411770', CAST(N'2023-05-01T17:46:25.2465977' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10179, N'1332742622377267000', CAST(N'2023-05-01T17:48:21.4145309' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10180, N'1332742912410776950', CAST(N'2023-05-01T18:38:00.6308539' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10181, N'1332742929544625360', CAST(N'2023-05-01T18:38:01.1071042' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10182, N'1332742915897933190', CAST(N'2023-05-01T18:38:01.1918783' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10183, N'1332742924883771390', CAST(N'2023-05-01T18:39:40.1563756' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10184, N'1332742935197523650', CAST(N'2023-05-01T18:41:46.6719702' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10185, N'1332742942409302290', CAST(N'2023-05-01T18:41:46.7532683' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10186, N'1332742940475900490', CAST(N'2023-05-01T18:42:46.9464900' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10187, N'1332744853129657850', CAST(N'2023-05-02T00:02:14.1594624' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10188, N'1332744871550312460', CAST(N'2023-05-02T00:02:15.3269934' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10189, N'1332744866202568290', CAST(N'2023-05-02T00:02:15.3958081' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10190, N'1332744859427828440', CAST(N'2023-05-02T00:02:15.5523904' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10191, N'1332744855813830660', CAST(N'2023-05-02T00:02:16.2407347' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10192, N'1332744867413079490', CAST(N'2023-05-02T00:03:59.6653691' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10193, N'1332744879018393940', CAST(N'2023-05-02T00:04:25.3760551' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10194, N'1332744881744575180', CAST(N'2023-05-02T00:04:55.9760353' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10195, N'1332744893011038980', CAST(N'2023-05-02T00:06:39.8601160' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10196, N'1332744888276207950', CAST(N'2023-05-02T00:06:59.7317553' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10197, N'1332745173065785780', CAST(N'2023-05-02T00:52:42.4351326' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10198, N'1332745170811467120', CAST(N'2023-05-02T00:52:43.7964922' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10199, N'1332745177779533280', CAST(N'2023-05-02T00:52:43.9061986' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10200, N'1332745171825957090', CAST(N'2023-05-02T00:52:44.1206260' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10201, N'1332745172554178730', CAST(N'2023-05-02T00:52:50.3683193' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10202, N'1332745160206959890', CAST(N'2023-05-02T00:52:50.4550857' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10203, N'1332750335633403510', CAST(N'2023-05-02T15:13:02.4837648' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10204, N'1332750322964864410', CAST(N'2023-05-02T15:13:04.1273687' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10205, N'1332750320649500400', CAST(N'2023-05-02T15:13:04.2191226' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10206, N'1332750319606658230', CAST(N'2023-05-02T15:13:04.3667276' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10207, N'1332750332235963510', CAST(N'2023-05-02T15:13:35.5722810' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10208, N'1332750342929417910', CAST(N'2023-05-02T15:13:35.7188822' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10209, N'1332750637897685640', CAST(N'2023-05-02T16:04:54.0193783' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10210, N'1332750643912417140', CAST(N'2023-05-02T16:04:54.0153877' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10211, N'1332750650567415130', CAST(N'2023-05-02T16:04:56.5910277' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10212, N'1332750648549224680', CAST(N'2023-05-02T16:04:56.8099166' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10213, N'1332750629992595210', CAST(N'2023-05-02T16:04:56.9408190' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10214, N'1332750645155475470', CAST(N'2023-05-02T16:04:58.5074581' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10215, N'1332750640203653940', CAST(N'2023-05-02T16:04:58.7247921' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10216, N'1332751015572953790', CAST(N'2023-05-02T17:08:06.7521591' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10217, N'1332751023176554080', CAST(N'2023-05-02T17:08:07.8373029' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10218, N'1332751020289656320', CAST(N'2023-05-02T17:08:07.9001354' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10219, N'1332751010612992780', CAST(N'2023-05-02T17:08:08.0946449' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10220, N'1332751025591381320', CAST(N'2023-05-02T17:08:08.9114529' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10221, N'1332751016317051360', CAST(N'2023-05-02T17:08:08.9872504' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10222, N'1332752939804591320', CAST(N'2023-05-02T22:28:04.2021244' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10223, N'1332752939728838810', CAST(N'2023-05-02T22:28:05.4753105' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10224, N'1332752940548768570', CAST(N'2023-05-02T22:28:05.5351524' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10225, N'1332752946610195590', CAST(N'2023-05-02T22:28:05.6847518' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10226, N'1332752931335725120', CAST(N'2023-05-02T22:28:06.3050936' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10227, N'1332752939218997290', CAST(N'2023-05-02T22:28:06.3928576' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10228, N'1332752986831469940', CAST(N'2023-05-02T22:35:00.3144886' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10229, N'1332752987677158320', CAST(N'2023-05-02T22:35:00.6505918' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10230, N'1332752981333280830', CAST(N'2023-05-02T22:35:00.6984624' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10231, N'1332752975460090980', CAST(N'2023-05-02T22:35:00.7712667' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10232, N'1332752987261858890', CAST(N'2023-05-02T22:35:00.9627562' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10233, N'1332752991215140580', CAST(N'2023-05-02T22:35:01.0116251' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10234, N'1332753629872745700', CAST(N'2023-05-03T00:25:18.9196358' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10235, N'1332753636155045220', CAST(N'2023-05-03T00:25:20.7307923' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10236, N'1332753650760005860', CAST(N'2023-05-03T00:25:20.8474806' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10237, N'1332753637684086760', CAST(N'2023-05-03T00:25:21.2753386' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10238, N'1332753646796172640', CAST(N'2023-05-03T00:25:22.3095709' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10239, N'1332753642053011560', CAST(N'2023-05-03T00:25:22.4791167' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10240, N'1332753735542709280', CAST(N'2023-05-03T00:39:28.3102007' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10241, N'1332753729428292130', CAST(N'2023-05-03T00:39:38.0076735' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10242, N'1332753728303801360', CAST(N'2023-05-03T00:39:38.4295455' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10243, N'1332753728380128130', CAST(N'2023-05-03T00:39:38.6728944' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10244, N'1332753737163401850', CAST(N'2023-05-03T00:39:39.1795385' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10245, N'1332753736350339620', CAST(N'2023-05-03T00:39:58.1016260' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10246, N'1332753731351460120', CAST(N'2023-05-03T00:41:07.9903459' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10247, N'1332753753848370250', CAST(N'2023-05-03T00:42:13.4401347' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10248, N'1332753742068529610', CAST(N'2023-05-03T00:42:51.5667426' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10249, N'1332753740101079360', CAST(N'2023-05-03T00:42:52.1621374' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10250, N'1332753756025576650', CAST(N'2023-05-03T00:42:52.2967802' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10251, N'1332753748188288930', CAST(N'2023-05-03T00:42:52.4513646' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10252, N'1332753742623722170', CAST(N'2023-05-03T00:42:52.8552851' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10253, N'1332753756271305650', CAST(N'2023-05-03T00:42:53.0138599' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10254, N'1332753763987213260', CAST(N'2023-05-03T00:44:15.2054839' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10255, N'1332753756683664860', CAST(N'2023-05-03T00:45:50.6640052' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10256, N'1332753755174541900', CAST(N'2023-05-03T00:45:51.1157953' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10257, N'1332753758928252020', CAST(N'2023-05-03T00:45:51.1576842' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10258, N'1332753759822978930', CAST(N'2023-05-03T00:45:51.4159936' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10259, N'1332753766055043040', CAST(N'2023-05-03T00:45:51.6663232' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10260, N'1332753760611703650', CAST(N'2023-05-03T00:46:00.7157368' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10261, N'1332753763760257630', CAST(N'2023-05-03T00:46:47.5396067' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10262, N'1332753786400461070', CAST(N'2023-05-03T00:50:06.9710687' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10263, N'1332753804695931210', CAST(N'2023-05-03T00:53:04.8666472' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10264, N'1332767174511673870', CAST(N'2023-05-04T14:02:49.3284726' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10265, N'1332767181892331370', CAST(N'2023-05-04T14:02:51.2154320' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10266, N'1332767198517171050', CAST(N'2023-05-04T14:02:51.3097616' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10267, N'1332767193694291140', CAST(N'2023-05-04T14:02:51.6123668' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10268, N'1332767196802070170', CAST(N'2023-05-04T14:02:52.8201336' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10269, N'1332767187416932800', CAST(N'2023-05-04T14:02:53.0624872' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10270, N'1332767222907821030', CAST(N'2023-05-04T14:07:33.7820893' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10271, N'1332767206809116700', CAST(N'2023-05-04T14:07:34.2468471' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10272, N'1332767212396735500', CAST(N'2023-05-04T14:07:34.3636252' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10273, N'1332767206950126360', CAST(N'2023-05-04T14:07:34.5021632' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10274, N'1332767223986674410', CAST(N'2023-05-04T14:07:34.8235029' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10275, N'1332767220914534230', CAST(N'2023-05-04T14:07:35.0287547' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10276, N'1332767431624869800', CAST(N'2023-05-04T14:45:34.5998712' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10277, N'1332767434006784660', CAST(N'2023-05-04T14:45:36.1856297' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10278, N'1332767451899377380', CAST(N'2023-05-04T14:45:36.2544453' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10279, N'1332767438776314690', CAST(N'2023-05-04T14:45:36.3312394' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10280, N'1332767443694759380', CAST(N'2023-05-04T14:45:37.0971908' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10281, N'1332767437201512700', CAST(N'2023-05-04T14:45:37.1809672' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10282, N'1332767515278064660', CAST(N'2023-05-04T14:57:25.6560988' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10283, N'1332767506798913160', CAST(N'2023-05-04T14:57:26.4060918' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10284, N'1332767508206048000', CAST(N'2023-05-04T14:57:26.4549624' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10285, N'1332767517715406870', CAST(N'2023-05-04T14:57:26.9775732' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10286, N'1332767516315282180', CAST(N'2023-05-04T14:57:27.2837952' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10287, N'1332767518591317940', CAST(N'2023-05-04T14:57:27.3546067' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10288, N'1332767956438909960', CAST(N'2023-05-04T16:10:04.5880986' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10289, N'1332767951710956030', CAST(N'2023-05-04T16:10:06.7764245' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10290, N'1332767953339863910', CAST(N'2023-05-04T16:10:07.0085293' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10291, N'1332767956799016590', CAST(N'2023-05-04T16:10:08.2941878' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10292, N'1332767953136567450', CAST(N'2023-05-04T16:10:09.9218549' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10293, N'1332767943479619050', CAST(N'2023-05-04T16:10:10.0744727' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10294, N'1332768717136421670', CAST(N'2023-05-04T18:20:11.3017274' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10295, N'1332768725959849900', CAST(N'2023-05-04T18:20:14.4931997' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10296, N'1332768733185207680', CAST(N'2023-05-04T18:20:14.7744416' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10297, N'1332768735880924150', CAST(N'2023-05-04T18:20:15.0955829' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10298, N'1332768724439078000', CAST(N'2023-05-04T18:20:16.3203063' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10299, N'1332768722344023870', CAST(N'2023-05-04T18:20:16.4559430' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10300, N'1332768962609761320', CAST(N'2023-05-04T19:00:31.0179555' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10301, N'1332768974232904780', CAST(N'2023-05-04T19:00:33.6358553' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10302, N'1332768964064644430', CAST(N'2023-05-04T19:00:34.2532035' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10303, N'1332768981793066780', CAST(N'2023-05-04T19:00:34.7069896' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10304, N'1332768975208927930', CAST(N'2023-05-04T19:00:36.2089729' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10305, N'1332768968628781510', CAST(N'2023-05-04T19:00:36.4054490' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10306, N'1332768996559541060', CAST(N'2023-05-04T19:05:35.1825842' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10307, N'1332769002829480700', CAST(N'2023-05-04T19:05:36.0049274' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10308, N'1332768996401580020', CAST(N'2023-05-04T19:05:36.1116412' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10309, N'1332769008388937560', CAST(N'2023-05-04T19:05:36.2492734' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10310, N'1332768995014477620', CAST(N'2023-05-04T19:05:36.5574495' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10311, N'1332769010379825740', CAST(N'2023-05-04T19:05:36.6123041' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10312, N'1332769048897149640', CAST(N'2023-05-04T19:12:29.5699065' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10313, N'1332769039876819260', CAST(N'2023-05-04T19:12:30.3082413' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10314, N'1332769039996023720', CAST(N'2023-05-04T19:12:30.5406211' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10315, N'1332769043760293840', CAST(N'2023-05-04T19:12:31.0293141' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10316, N'1332769040406403740', CAST(N'2023-05-04T19:12:31.3903527' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10317, N'1332769036941219510', CAST(N'2023-05-04T19:12:31.4900801' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10318, N'1332769214057838310', CAST(N'2023-05-04T19:41:24.9102675' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10319, N'1332769316090112830', CAST(N'2023-05-04T19:58:42.1291215' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10320, N'1332769621057806130', CAST(N'2023-05-04T20:49:52.8320961' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10321, N'1332769865985104720', CAST(N'2023-05-04T21:29:54.1097214' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10322, N'1332769880935669410', CAST(N'2023-05-04T21:30:37.8300190' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10323, N'1332769896588873180', CAST(N'2023-05-04T21:32:37.4577801' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10324, N'1332770004654826870', CAST(N'2023-05-04T21:54:24.9063595' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10325, N'1332770069134489710', CAST(N'2023-05-04T22:03:09.9918604' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10326, N'1332770156861978490', CAST(N'2023-05-04T22:17:24.3157945' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10327, N'1332770149894216210', CAST(N'2023-05-04T22:17:25.2074190' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10328, N'1332770150742899200', CAST(N'2023-05-04T22:17:25.4397878' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10329, N'1332770146604216660', CAST(N'2023-05-04T22:17:26.0581341' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10330, N'1332770153741033450', CAST(N'2023-05-04T22:17:26.8579953' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10331, N'1332770147588259450', CAST(N'2023-05-04T22:17:26.9976223' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10332, N'1332770305979193060', CAST(N'2023-05-04T22:42:12.7616740' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10333, N'1332770294488168450', CAST(N'2023-05-04T22:42:13.9415201' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10334, N'1332770302502121270', CAST(N'2023-05-04T22:42:14.1111391' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10335, N'1332770308334400010', CAST(N'2023-05-04T22:42:14.3505694' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10336, N'1332770300688887450', CAST(N'2023-05-04T22:42:15.1165225' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10337, N'1332770295288899120', CAST(N'2023-05-04T22:42:15.1933160' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10338, N'1332770301513400580', CAST(N'2023-05-04T22:43:05.2013415' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10339, N'1332770318855584510', CAST(N'2023-05-04T22:47:07.5349559' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10340, N'1332770387694615240', CAST(N'2023-05-04T22:55:27.4327740' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10341, N'1332770384797039600', CAST(N'2023-05-04T22:55:27.9045122' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10342, N'1332770391533910130', CAST(N'2023-05-04T22:55:28.1179419' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10343, N'1332770393980576970', CAST(N'2023-05-04T22:55:32.9810826' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10344, N'1332770393437752710', CAST(N'2023-05-04T22:56:37.9643226' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10345, N'1332770388070128980', CAST(N'2023-05-04T22:56:38.1318718' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10346, N'1332770432751637160', CAST(N'2023-05-04T23:03:37.6228404' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10347, N'1332770423465891620', CAST(N'2023-05-04T23:03:38.1564131' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10348, N'1332770436433754710', CAST(N'2023-05-04T23:03:38.4636668' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10349, N'1332770440026703120', CAST(N'2023-05-04T23:03:38.5414588' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10350, N'1332770428916894910', CAST(N'2023-05-04T23:03:44.0215074' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10351, N'1332770440931683390', CAST(N'2023-05-04T23:03:58.2891167' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10352, N'1332776595963859020', CAST(N'2023-05-05T16:10:49.5258071' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10353, N'1332776599742414060', CAST(N'2023-05-05T16:10:50.4330651' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10354, N'1332776603935868680', CAST(N'2023-05-05T16:10:50.4869181' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10355, N'1332776593695949290', CAST(N'2023-05-05T16:10:50.6145777' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10356, N'1332776603687405070', CAST(N'2023-05-05T16:10:51.0661950' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10357, N'1332776596218638640', CAST(N'2023-05-05T16:10:51.1715565' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10358, N'1332776609938190710', CAST(N'2023-05-05T16:11:41.4149445' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10359, N'1332776605560522430', CAST(N'2023-05-05T16:12:24.7481090' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10360, N'1332776651686382600', CAST(N'2023-05-05T16:20:41.2204678' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10361, N'1332776654363081590', CAST(N'2023-05-05T16:20:41.6238237' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10362, N'1332776644779013490', CAST(N'2023-05-05T16:20:41.7305361' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10363, N'1332776663325680610', CAST(N'2023-05-05T16:20:41.8093259' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10364, N'1332776665329667300', CAST(N'2023-05-05T16:20:42.0872319' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10365, N'1332776659102353540', CAST(N'2023-05-05T16:20:42.1580428' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10366, N'1332776652455002760', CAST(N'2023-05-05T16:21:56.9266629' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10367, N'1332776687739617870', CAST(N'2023-05-05T16:25:11.3264659' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10368, N'1332776722872991910', CAST(N'2023-05-05T16:32:03.5236761' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10369, N'1332776729857931710', CAST(N'2023-05-05T16:32:49.1112651' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10370, N'1332776728945012560', CAST(N'2023-05-05T16:33:07.7743968' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10371, N'1332776760818921790', CAST(N'2023-05-05T16:37:14.3324243' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10372, N'1332776761769222090', CAST(N'2023-05-05T16:37:27.4237277' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10373, N'1332776758164176510', CAST(N'2023-05-05T16:37:32.6768838' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10374, N'1332776746457995010', CAST(N'2023-05-05T16:37:43.7518482' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10375, N'1332776750039520840', CAST(N'2023-05-05T16:37:49.7126911' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10376, N'1332776767954227610', CAST(N'2023-05-05T16:38:04.7239164' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10377, N'1332776751857721420', CAST(N'2023-05-05T16:38:09.6258434' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10378, N'1332776759187372150', CAST(N'2023-05-05T16:38:13.8511751' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10379, N'1332776832868356470', CAST(N'2023-05-05T16:49:53.7555488' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10380, N'1332776821282875420', CAST(N'2023-05-05T16:49:53.9916344' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10381, N'1332776835731908010', CAST(N'2023-05-05T16:51:41.8749067' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10382, N'1332776843558031280', CAST(N'2023-05-05T16:51:42.2127121' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10383, N'1332776857398372890', CAST(N'2023-05-05T16:53:12.1598189' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10384, N'1332776867201356720', CAST(N'2023-05-05T16:58:37.8370175' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10385, N'1332776873762484880', CAST(N'2023-05-05T16:58:39.5085467' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10386, N'1332776890784729680', CAST(N'2023-05-05T17:00:22.9274852' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10387, N'1332776896476670550', CAST(N'2023-05-05T17:02:50.2797062' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10388, N'1332776938380222970', CAST(N'2023-05-05T17:08:34.7559123' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10389, N'1332776956055964510', CAST(N'2023-05-05T17:11:12.7376522' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10390, N'1332776958501192030', CAST(N'2023-05-05T17:11:19.8153096' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10391, N'1332776966584409640', CAST(N'2023-05-05T17:11:28.1710841' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10392, N'1332776986538437070', CAST(N'2023-05-05T17:14:25.1862610' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10393, N'1332776990398625400', CAST(N'2023-05-05T17:15:49.3325129' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10394, N'1332776981665955630', CAST(N'2023-05-05T17:15:49.8102362' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10395, N'1332776988245152950', CAST(N'2023-05-05T17:16:06.8437900' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10396, N'1332776991442798120', CAST(N'2023-05-05T17:17:13.9379144' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10397, N'1332777005136631940', CAST(N'2023-05-05T17:17:20.8374546' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10398, N'1332776990153766210', CAST(N'2023-05-05T17:18:11.3375347' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10399, N'1332777003076124380', CAST(N'2023-05-05T17:18:21.8843899' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10400, N'1332776999034535640', CAST(N'2023-05-05T17:18:28.0718067' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10401, N'1332777012385794530', CAST(N'2023-05-05T17:18:31.8885992' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10402, N'1332777017268428350', CAST(N'2023-05-05T17:19:37.9324979' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10403, N'1332777017582418110', CAST(N'2023-05-05T17:19:38.5937293' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10404, N'1332777003073201640', CAST(N'2023-05-05T17:19:45.7206687' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10405, N'1332779986590292300', CAST(N'2023-05-06T01:36:41.5924983' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10406, N'1332779998105439230', CAST(N'2023-05-06T01:36:41.9894323' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10407, N'1332779986203703340', CAST(N'2023-05-06T01:36:42.0493054' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10408, N'1332779991700050950', CAST(N'2023-05-06T01:36:42.1839660' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10409, N'1332780000147596650', CAST(N'2023-05-06T01:36:42.7162003' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10410, N'1332779994302514710', CAST(N'2023-05-06T01:36:42.8062976' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10411, N'1332780068460572620', CAST(N'2023-05-06T01:50:51.3094209' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10412, N'1332780071323625500', CAST(N'2023-05-06T01:50:51.7133284' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10413, N'1332780076215071520', CAST(N'2023-05-06T01:50:51.7971059' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10414, N'1332780085160513760', CAST(N'2023-05-06T01:50:51.8489657' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10415, N'1332780068312238560', CAST(N'2023-05-06T01:50:52.0195218' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10416, N'1332780077427355780', CAST(N'2023-05-06T01:50:52.0753601' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10417, N'1332780103893705570', CAST(N'2023-05-06T01:54:33.5418087' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10418, N'1332787887680111420', CAST(N'2023-05-06T23:33:43.1295854' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10419, N'1332787883594819450', CAST(N'2023-05-06T23:33:44.4650667' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10420, N'1332787893369820290', CAST(N'2023-05-06T23:33:44.5468467' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10421, N'1332787895829992040', CAST(N'2023-05-06T23:33:44.7592782' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10422, N'1332787901833751770', CAST(N'2023-05-06T23:33:45.4185931' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10423, N'1332787900129874190', CAST(N'2023-05-06T23:33:45.5344254' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10424, N'1332787934576274340', CAST(N'2023-05-06T23:39:07.5890463' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10425, N'1332787919618586450', CAST(N'2023-05-06T23:39:08.1575240' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10426, N'1332787917048560470', CAST(N'2023-05-06T23:39:08.2682278' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10427, N'1332787921181039110', CAST(N'2023-05-06T23:39:08.3779350' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10428, N'1332787922286957120', CAST(N'2023-05-06T23:39:08.9763374' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10429, N'1332787923161358100', CAST(N'2023-05-06T23:39:09.4131810' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10430, N'1332787937023876770', CAST(N'2023-05-06T23:40:59.1503746' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10431, N'1332787943422953220', CAST(N'2023-05-06T23:41:21.8122379' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10432, N'1332787980062643470', CAST(N'2023-05-06T23:47:05.9811981' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10433, N'1332787977636690960', CAST(N'2023-05-06T23:47:07.0822535' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10434, N'1332787974198467270', CAST(N'2023-05-06T23:47:07.1779967' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10435, N'1332787964844100900', CAST(N'2023-05-06T23:47:07.2478099' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10436, N'1332787970002873270', CAST(N'2023-05-06T23:47:07.4771965' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10437, N'1332787977061544840', CAST(N'2023-05-06T23:47:07.5330571' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10438, N'1332788140722040590', CAST(N'2023-05-07T00:17:15.3964514' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10439, N'1332788157980024340', CAST(N'2023-05-07T00:17:16.8636296' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10440, N'1332788143905300390', CAST(N'2023-05-07T00:17:17.0002663' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10441, N'1332788150176926150', CAST(N'2023-05-07T00:17:17.1468716' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10442, N'1332788146141522160', CAST(N'2023-05-07T00:17:17.9802700' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10443, N'1332788152327084860', CAST(N'2023-05-07T00:17:18.1109189' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10444, N'1332788157345546500', CAST(N'2023-05-07T00:17:58.6357982' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10445, N'1332788188443824210', CAST(N'2023-05-07T00:24:25.5912556' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10446, N'1332788229162843110', CAST(N'2023-05-07T00:30:28.1140598' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10447, N'1332788242566895670', CAST(N'2023-05-07T00:30:28.5718396' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10448, N'1332788230630044820', CAST(N'2023-05-07T00:30:28.7473675' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10449, N'1332788232633628640', CAST(N'2023-05-07T00:30:28.7992284' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10450, N'1332788223471589360', CAST(N'2023-05-07T00:30:29.0146526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10451, N'1332788229862867960', CAST(N'2023-05-07T00:30:29.0714994' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10452, N'1332788276033409080', CAST(N'2023-05-07T00:38:48.0647862' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10453, N'1332788289518346200', CAST(N'2023-05-07T00:38:48.5445028' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10454, N'1332788293063844160', CAST(N'2023-05-07T00:38:48.5953669' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10455, N'1332788293101163550', CAST(N'2023-05-07T00:38:48.7160444' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10456, N'1332788273513295980', CAST(N'2023-05-07T00:38:48.9165064' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10457, N'1332788287113184660', CAST(N'2023-05-07T00:38:48.9952960' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10458, N'1332788386386801070', CAST(N'2023-05-07T00:54:52.9380891' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10459, N'1332788388774126820', CAST(N'2023-05-07T00:54:53.4616885' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10460, N'1332788385705559930', CAST(N'2023-05-07T00:54:53.5853579' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10461, N'1332788380045013590', CAST(N'2023-05-07T00:54:53.6541736' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10462, N'1332788383288182360', CAST(N'2023-05-07T00:54:53.9035064' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10463, N'1332788376659012960', CAST(N'2023-05-07T00:54:53.9583604' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10464, N'1332788605580361780', CAST(N'2023-05-07T01:33:39.3992026' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10465, N'1332788615044130170', CAST(N'2023-05-07T01:33:43.2229755' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10466, N'1332788605130857070', CAST(N'2023-05-07T01:33:44.2113331' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10467, N'1332788611453345130', CAST(N'2023-05-07T01:33:46.3476187' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10468, N'1332788606764551050', CAST(N'2023-05-07T01:33:48.3033885' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10469, N'1332788613525987980', CAST(N'2023-05-07T01:33:48.5218108' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10470, N'1332788629103398980', CAST(N'2023-05-07T01:35:42.3297789' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10471, N'1332788630968213020', CAST(N'2023-05-07T01:35:43.0717911' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10472, N'1332788629859544520', CAST(N'2023-05-07T01:35:43.3640068' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10473, N'1332788633998199720', CAST(N'2023-05-07T01:35:43.6412660' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10474, N'1332788628553743720', CAST(N'2023-05-07T01:35:43.9085510' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10475, N'1332788620925692760', CAST(N'2023-05-07T01:35:43.9833513' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10476, N'1332788669261023380', CAST(N'2023-05-07T01:43:21.0312522' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10477, N'1332788660860712890', CAST(N'2023-05-07T01:43:21.6107030' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10478, N'1332788670846573130', CAST(N'2023-05-07T01:43:21.7762580' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10479, N'1332788673851917880', CAST(N'2023-05-07T01:43:21.8859658' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10480, N'1332788664593920490', CAST(N'2023-05-07T01:43:22.1971349' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10481, N'1332788669045758420', CAST(N'2023-05-07T01:43:22.4763860' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10482, N'1332788768851505670', CAST(N'2023-05-07T02:00:28.2354164' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10483, N'1332788771989639930', CAST(N'2023-05-07T02:00:28.9814210' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10484, N'1332788782021581420', CAST(N'2023-05-07T02:00:29.2666594' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10485, N'1332788777258480930', CAST(N'2023-05-07T02:00:29.4611387' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10486, N'1332788784098511710', CAST(N'2023-05-07T02:00:29.8670522' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10487, N'1332788774738288950', CAST(N'2023-05-07T02:00:29.9967071' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10488, N'1332788818272032500', CAST(N'2023-05-07T02:07:15.0639041' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10489, N'1332788813831210750', CAST(N'2023-05-07T02:07:15.7490710' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10490, N'1332788811638426100', CAST(N'2023-05-07T02:07:15.8557849' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10491, N'1332788816910836440', CAST(N'2023-05-07T02:07:16.0961421' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10492, N'1332788806103839230', CAST(N'2023-05-07T02:07:16.3684133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10493, N'1332788807756097280', CAST(N'2023-05-07T02:07:16.4601690' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10494, N'1332789012536627720', CAST(N'2023-05-07T02:43:38.8838971' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10495, N'1332789024752156950', CAST(N'2023-05-07T02:43:40.8607007' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10496, N'1332789038540687400', CAST(N'2023-05-07T02:43:41.1049295' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10497, N'1332789022284429050', CAST(N'2023-05-07T02:43:41.3897756' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10498, N'1332789033970654730', CAST(N'2023-05-07T02:43:42.8736278' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10499, N'1332789024595387090', CAST(N'2023-05-07T02:43:43.0267355' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10500, N'1332789053110964260', CAST(N'2023-05-07T02:45:38.8209730' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10501, N'1332789064930451080', CAST(N'2023-05-07T02:47:25.5595642' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10502, N'1332789055677840930', CAST(N'2023-05-07T02:47:52.1887147' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10503, N'1332789069323346920', CAST(N'2023-05-07T02:48:05.6149251' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10504, N'1332789069267588490', CAST(N'2023-05-07T02:48:16.6254425' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10505, N'1332789058434051670', CAST(N'2023-05-07T02:49:00.4420206' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10506, N'1332789060807329190', CAST(N'2023-05-07T02:49:16.7330636' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10507, N'1332789068298276880', CAST(N'2023-05-07T02:49:30.7221976' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10508, N'1332789065511601470', CAST(N'2023-05-07T02:49:57.2766508' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10509, N'1332789068589433810', CAST(N'2023-05-07T02:50:14.1185647' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10510, N'1332789077024229190', CAST(N'2023-05-07T02:50:44.1060077' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10511, N'1332789065788710000', CAST(N'2023-05-07T02:50:51.8482111' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10512, N'1332789095674332860', CAST(N'2023-05-07T02:54:31.5199297' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10513, N'1332789105491975940', CAST(N'2023-05-07T02:55:14.9221011' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10514, N'1332789125616928330', CAST(N'2023-05-07T02:58:38.9393369' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10515, N'1332789114220661690', CAST(N'2023-05-07T02:58:39.5456081' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10516, N'1332789132795669600', CAST(N'2023-05-07T02:58:39.7112849' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10517, N'1332789128903562170', CAST(N'2023-05-07T02:58:39.9886421' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10518, N'1332789126849314470', CAST(N'2023-05-07T02:58:40.5756194' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10519, N'1332789113416863430', CAST(N'2023-05-07T02:58:40.7593372' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10520, N'1332789132206715400', CAST(N'2023-05-07T02:58:47.3741913' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10521, N'1332789127534037100', CAST(N'2023-05-07T02:58:57.4146505' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10522, N'1332789143168312080', CAST(N'2023-05-07T03:02:38.0936264' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10523, N'1332789174544461400', CAST(N'2023-05-07T03:08:26.7951312' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10524, N'1332789230709327460', CAST(N'2023-05-07T03:18:02.6036882' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10525, N'1332789253643124840', CAST(N'2023-05-07T03:20:00.6905231' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10526, N'1332789254331376260', CAST(N'2023-05-07T03:20:06.3618369' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10527, N'1332789277724305180', CAST(N'2023-05-07T03:25:06.0561427' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10528, N'1332793308957746830', CAST(N'2023-05-07T14:36:00.4959512' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10529, N'1332793311754584990', CAST(N'2023-05-07T14:36:01.9400904' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10530, N'1332793304124932720', CAST(N'2023-05-07T14:36:02.0717375' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10531, N'1332793299224762170', CAST(N'2023-05-07T14:36:02.2662186' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10532, N'1332793312353028550', CAST(N'2023-05-07T14:36:03.2954645' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10533, N'1332793305881519140', CAST(N'2023-05-07T14:36:03.5029094' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10534, N'1332793309958230280', CAST(N'2023-05-07T14:36:14.3669635' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10535, N'1332793300044682890', CAST(N'2023-05-07T14:36:25.4345134' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10536, N'1332793317377766370', CAST(N'2023-05-07T14:38:08.2403236' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10537, N'1332793320851116030', CAST(N'2023-05-07T14:38:34.8814276' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10538, N'1332793502817515730', CAST(N'2023-05-07T15:08:19.5598111' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10539, N'1332793496286462750', CAST(N'2023-05-07T15:08:19.6685204' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10540, N'1332793511459485620', CAST(N'2023-05-07T15:08:25.0740620' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10541, N'1332793507507522320', CAST(N'2023-05-07T15:08:25.1209368' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10542, N'1332793508552960030', CAST(N'2023-05-07T15:08:26.4733204' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10543, N'1332793500132083270', CAST(N'2023-05-07T15:08:26.7515753' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10544, N'1332793511153796180', CAST(N'2023-05-07T15:08:27.7768340' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10545, N'1332793491805765450', CAST(N'2023-05-07T15:08:29.6887198' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10546, N'1332793499183964540', CAST(N'2023-05-07T15:08:34.4180710' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10547, N'1332793499194753860', CAST(N'2023-05-07T15:08:35.1929986' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10548, N'1332793553120185550', CAST(N'2023-05-07T15:17:48.7706002' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10549, N'1332793565083888100', CAST(N'2023-05-07T15:17:49.3530432' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10550, N'1332793552926574330', CAST(N'2023-05-07T15:17:49.4447975' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10551, N'1332793558433775080', CAST(N'2023-05-07T15:17:49.5195977' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10552, N'1332793554331062670', CAST(N'2023-05-07T15:17:49.7420037' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10553, N'1332793552257956960', CAST(N'2023-05-07T15:17:49.8108194' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10554, N'1332793568887232220', CAST(N'2023-05-07T15:19:58.1474671' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10555, N'1332793562440430300', CAST(N'2023-05-07T15:19:58.6301769' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10556, N'1332793562403503180', CAST(N'2023-05-07T15:19:58.7129601' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10557, N'1332793575407201960', CAST(N'2023-05-07T15:19:58.7787790' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10558, N'1332793568437747830', CAST(N'2023-05-07T15:19:59.0151549' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10559, N'1332793568776496230', CAST(N'2023-05-07T15:19:59.0829657' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10560, N'1332793594292301710', CAST(N'2023-05-07T15:22:24.1908494' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10561, N'1332793599982314130', CAST(N'2023-05-07T15:25:29.6321296' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10562, N'1332793613537852990', CAST(N'2023-05-07T15:26:23.6628463' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10563, N'1332793619083279090', CAST(N'2023-05-07T15:26:28.8422500' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10564, N'1332793684411289110', CAST(N'2023-05-07T15:38:52.9208020' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10565, N'1332793719420470450', CAST(N'2023-05-07T15:44:36.0754412' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10566, N'1332795607317820730', CAST(N'2023-05-07T20:58:42.3701944' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10567, N'1332795596571426850', CAST(N'2023-05-07T20:58:42.8939074' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10568, N'1332795607437672570', CAST(N'2023-05-07T20:58:42.9731647' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10569, N'1332795602207425430', CAST(N'2023-05-07T20:58:43.1127911' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10570, N'1332795604548456670', CAST(N'2023-05-07T20:58:43.3793559' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10571, N'1332795603657065610', CAST(N'2023-05-07T20:58:43.4288709' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10572, N'1332795768617412620', CAST(N'2023-05-07T21:25:52.6697631' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10573, N'1332795766626512970', CAST(N'2023-05-07T21:25:55.2847699' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10574, N'1332795773631736130', CAST(N'2023-05-07T21:25:55.4403533' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10575, N'1332795766922950380', CAST(N'2023-05-07T21:25:55.5989275' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10576, N'1332795768618345950', CAST(N'2023-05-07T21:25:56.5184695' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10577, N'1332795756972634100', CAST(N'2023-05-07T21:25:56.6072321' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10578, N'1332795775708747660', CAST(N'2023-05-07T21:29:15.5361946' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10579, N'1332795815598846830', CAST(N'2023-05-07T21:35:05.5597908' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10580, N'1332795815295450970', CAST(N'2023-05-07T21:35:05.8220897' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10581, N'1332795815057710720', CAST(N'2023-05-07T21:35:05.8709587' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10582, N'1332795828033902680', CAST(N'2023-05-07T21:35:05.9058651' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10583, N'1332795817839690280', CAST(N'2023-05-07T21:35:06.0365158' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10584, N'1332795825599824040', CAST(N'2023-05-07T21:35:06.0630448' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10585, N'1332795858332173500', CAST(N'2023-05-07T21:42:25.8930836' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10586, N'1332795873131375070', CAST(N'2023-05-07T21:42:26.2331725' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10587, N'1332795861921773040', CAST(N'2023-05-07T21:42:26.2900198' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10588, N'1332795869218060500', CAST(N'2023-05-07T21:42:26.3249262' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10589, N'1332795874617049720', CAST(N'2023-05-07T21:42:26.4775181' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10590, N'1332795861059439930', CAST(N'2023-05-07T21:42:26.5194065' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10591, N'1332795930639903520', CAST(N'2023-05-07T21:52:29.8975954' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10592, N'1332795926448113400', CAST(N'2023-05-07T21:52:30.1818360' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10593, N'1332795927027013320', CAST(N'2023-05-07T21:52:30.2705962' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10594, N'1332795930289272730', CAST(N'2023-05-07T21:52:30.3064558' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10595, N'1332795917465438740', CAST(N'2023-05-07T21:52:30.4660293' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10596, N'1332795917994743740', CAST(N'2023-05-07T21:52:30.5119076' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10597, N'1332795937695903470', CAST(N'2023-05-07T21:53:52.7102874' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10598, N'1332795935814896290', CAST(N'2023-05-07T21:53:52.9807721' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10599, N'1332795931431060870', CAST(N'2023-05-07T21:53:53.0673166' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10600, N'1332795924570414110', CAST(N'2023-05-07T21:53:53.1281531' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10601, N'1332795927734599890', CAST(N'2023-05-07T21:53:53.2578063' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10602, N'1332795937775324000', CAST(N'2023-05-07T21:53:53.3036838' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10603, N'1332795994857727030', CAST(N'2023-05-07T22:02:25.5725804' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10604, N'1332795992801638110', CAST(N'2023-05-07T22:02:25.8458495' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10605, N'1332795978480700650', CAST(N'2023-05-07T22:02:25.9076845' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10606, N'1332795992530152440', CAST(N'2023-05-07T22:02:25.9575515' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10607, N'1332795994926509060', CAST(N'2023-05-07T22:02:26.0662598' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10608, N'1332795978732592320', CAST(N'2023-05-07T22:02:26.1151317' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10609, N'1332796138840404420', CAST(N'2023-05-07T22:26:58.7996923' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10610, N'1332796257245461550', CAST(N'2023-05-07T22:46:32.4163125' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10611, N'1332796304923892560', CAST(N'2023-05-07T22:55:03.2180422' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10612, N'1332796309045736710', CAST(N'2023-05-07T22:56:53.4386895' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10613, N'1332796331207871480', CAST(N'2023-05-07T22:59:16.3072716' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10614, N'1332796351256587690', CAST(N'2023-05-07T23:04:07.5753378' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10615, N'1332796361077816230', CAST(N'2023-05-07T23:04:14.6925409' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10616, N'1332796367410676250', CAST(N'2023-05-07T23:05:15.0400224' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10617, N'1332796482826849820', CAST(N'2023-05-07T23:27:34.7650900' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10618, N'1332796747328579670', CAST(N'2023-05-08T00:11:00.6234192' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10619, N'1332796756704590480', CAST(N'2023-05-08T00:11:01.5759752' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10620, N'1332796758828542640', CAST(N'2023-05-08T00:11:01.6238473' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10621, N'1332796746331098370', CAST(N'2023-05-08T00:11:01.7220959' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10622, N'1332796764507725190', CAST(N'2023-05-08T00:11:02.2297388' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10623, N'1332796767101033930', CAST(N'2023-05-08T00:11:02.2845914' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10624, N'1332796915714974890', CAST(N'2023-05-08T00:37:14.7539521' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10625, N'1332796918855160300', CAST(N'2023-05-08T00:37:15.6081280' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10626, N'1332796907067704790', CAST(N'2023-05-08T00:37:15.6513945' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10627, N'1332796907633909510', CAST(N'2023-05-08T00:37:15.7464500' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10628, N'1332796923155868880', CAST(N'2023-05-08T00:37:16.1393987' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10629, N'1332796917251395570', CAST(N'2023-05-08T00:37:16.2239431' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10630, N'1332796923167314490', CAST(N'2023-05-08T00:38:38.0771240' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10631, N'1332796921281764500', CAST(N'2023-05-08T00:38:44.5910793' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10632, N'1332796957330035730', CAST(N'2023-05-08T00:43:43.1151935' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10633, N'1332796959347741640', CAST(N'2023-05-08T00:45:59.8785630' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10634, N'1332797003883041320', CAST(N'2023-05-08T00:50:39.4829946' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10635, N'1332797002887162330', CAST(N'2023-05-08T00:52:16.8632978' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10636, N'1332797018038611590', CAST(N'2023-05-08T00:53:31.1139779' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10637, N'1332797015116895210', CAST(N'2023-05-08T00:54:41.4421049' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10638, N'1332797059067009190', CAST(N'2023-05-08T01:00:17.6713052' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10639, N'1332797062861268700', CAST(N'2023-05-08T01:01:31.0783979' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10640, N'1332797060166319760', CAST(N'2023-05-08T01:02:10.4315071' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10641, N'1332797071050440120', CAST(N'2023-05-08T01:03:07.9312108' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10642, N'1332805349976029540', CAST(N'2023-05-09T00:03:43.4796198' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10643, N'1332805360747481220', CAST(N'2023-05-09T00:03:44.9404860' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10644, N'1332805346708385880', CAST(N'2023-05-09T00:03:45.0187702' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10645, N'1332805343697183500', CAST(N'2023-05-09T00:03:45.1370196' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10646, N'1332805355511801810', CAST(N'2023-05-09T00:03:45.9041210' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10647, N'1332805362674028270', CAST(N'2023-05-09T00:03:45.9769293' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10648, N'1332828698093053030', CAST(N'2023-05-11T16:57:38.4185496' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10649, N'1332828707520413090', CAST(N'2023-05-11T16:57:40.3909124' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10650, N'1332828713718989370', CAST(N'2023-05-11T16:57:40.6073436' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10651, N'1332828727107693730', CAST(N'2023-05-11T16:57:41.0511591' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10652, N'1332828761012130550', CAST(N'2023-05-11T17:03:59.0576370' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10653, N'1332828751091535960', CAST(N'2023-05-11T17:04:05.8398954' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10654, N'1332828764428551920', CAST(N'2023-05-11T17:04:17.5197269' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10655, N'1332828822211097200', CAST(N'2023-05-11T17:14:48.1200659' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10656, N'1332828866431058880', CAST(N'2023-05-11T17:22:22.6779609' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10657, N'1332828875285212900', CAST(N'2023-05-11T17:22:23.1187801' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10658, N'1332828862024548010', CAST(N'2023-05-11T17:22:23.2015585' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10659, N'1332828856593079520', CAST(N'2023-05-11T17:22:23.2992975' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10660, N'1332828885092931160', CAST(N'2023-05-11T17:25:06.8608529' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10661, N'1332828879701867710', CAST(N'2023-05-11T17:25:07.2887065' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10662, N'1332828886670457190', CAST(N'2023-05-11T17:25:07.4592499' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10663, N'1332828878258182630', CAST(N'2023-05-11T17:25:07.5240769' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10664, N'1332828882664637530', CAST(N'2023-05-11T17:25:53.0304066' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10665, N'1332828880417678670', CAST(N'2023-05-11T17:25:53.2129185' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10666, N'1332828883592996160', CAST(N'2023-05-11T17:25:53.3056710' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10667, N'1332828888189027270', CAST(N'2023-05-11T17:25:53.4349085' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10668, N'1332828889334907310', CAST(N'2023-05-11T17:25:53.5645611' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10669, N'1332830668024612260', CAST(N'2023-05-11T22:26:08.1404615' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10670, N'1332830686516339340', CAST(N'2023-05-11T22:26:13.2537894' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10671, N'1332830689481337500', CAST(N'2023-05-11T22:26:13.8292497' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10672, N'1332830697521054190', CAST(N'2023-05-11T22:26:14.6001892' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10673, N'1332830686018983230', CAST(N'2023-05-11T22:26:17.0097447' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10674, N'1332830684133504880', CAST(N'2023-05-11T22:26:17.3508337' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10675, N'1332830800035151730', CAST(N'2023-05-11T22:46:10.2889116' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10676, N'1332830805112050460', CAST(N'2023-05-11T22:46:10.3472638' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10677, N'1332830816023404510', CAST(N'2023-05-11T22:46:10.3652144' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10678, N'1332830811766587380', CAST(N'2023-05-11T22:46:10.4001207' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10679, N'1332830805129746440', CAST(N'2023-05-11T22:46:10.4280464' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10680, N'1332830808620604990', CAST(N'2023-05-11T22:46:11.4762227' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10681, N'1332830824307222630', CAST(N'2023-05-11T22:48:59.6401522' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10682, N'1332830834265690020', CAST(N'2023-05-11T22:48:59.6391545' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10683, N'1332830831735258290', CAST(N'2023-05-11T22:48:59.6551120' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10684, N'1332830827153076440', CAST(N'2023-05-11T22:48:59.6670805' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10685, N'1332830835306271590', CAST(N'2023-05-11T22:48:59.6810427' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10686, N'1332830815060130320', CAST(N'2023-05-11T22:49:00.1982762' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10687, N'1332830841825990000', CAST(N'2023-05-11T22:50:25.3163949' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10688, N'1332830839736683590', CAST(N'2023-05-11T22:50:25.3173922' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10689, N'1332830826724873430', CAST(N'2023-05-11T22:50:25.3323521' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10690, N'1332830829267780180', CAST(N'2023-05-11T22:50:25.3493058' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10691, N'1332830837053222080', CAST(N'2023-05-11T22:50:25.3642664' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10692, N'1332830837882063140', CAST(N'2023-05-11T22:50:25.8784804' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10693, N'1332830849418697230', CAST(N'2023-05-11T22:52:42.0086331' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10694, N'1332830849364963130', CAST(N'2023-05-11T22:52:42.0106269' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10695, N'1332830844121128870', CAST(N'2023-05-11T22:52:42.0245912' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10696, N'1332830853686221240', CAST(N'2023-05-11T22:52:42.0255867' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10697, N'1332830839187462500', CAST(N'2023-05-11T22:52:42.0385514' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10698, N'1332830857351640770', CAST(N'2023-05-11T22:52:42.5486649' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10699, N'1332830886921692720', CAST(N'2023-05-11T23:00:59.6085673' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10700, N'1332830887395204880', CAST(N'2023-05-11T23:00:59.6095638' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10701, N'1332830893787116350', CAST(N'2023-05-11T23:00:59.6225308' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10702, N'1332830906131268710', CAST(N'2023-05-11T23:00:59.6335006' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10703, N'1332830906366774120', CAST(N'2023-05-11T23:00:59.6484625' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10704, N'1332830895715117260', CAST(N'2023-05-11T23:01:00.1656844' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10705, N'1332830939406516730', CAST(N'2023-05-11T23:11:14.3978487' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10706, N'1332830944249790250', CAST(N'2023-05-11T23:11:14.3978487' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10707, N'1332830943157972710', CAST(N'2023-05-11T23:11:14.3978487' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10708, N'1332830955727356650', CAST(N'2023-05-11T23:11:14.4028361' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10709, N'1332830950398902360', CAST(N'2023-05-11T23:11:14.3978487' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10710, N'1332830949303994750', CAST(N'2023-05-11T23:11:15.6680079' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10711, N'1332830964688915740', CAST(N'2023-05-11T23:13:38.9790549' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10712, N'1332830972337558160', CAST(N'2023-05-11T23:13:38.9850378' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10713, N'1332830983288432550', CAST(N'2023-05-11T23:13:38.9890284' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10714, N'1332830972295683040', CAST(N'2023-05-11T23:13:39.0079778' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10715, N'1332830972592919130', CAST(N'2023-05-11T23:13:39.0139599' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10716, N'1332830969711495390', CAST(N'2023-05-11T23:13:39.5141491' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10717, N'1332831042939640450', CAST(N'2023-05-11T23:24:50.1402640' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10718, N'1332831041159812100', CAST(N'2023-05-11T23:24:50.1462480' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10719, N'1332831048160389640', CAST(N'2023-05-11T23:24:50.1372717' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10720, N'1332831041994370950', CAST(N'2023-05-11T23:24:50.1691866' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10721, N'1332831047423842120', CAST(N'2023-05-11T23:24:50.1781629' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10722, N'1332831033547043850', CAST(N'2023-05-11T23:24:50.6907915' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10723, N'1332831101180368280', CAST(N'2023-05-11T23:35:24.1209037' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10724, N'1332831105299443480', CAST(N'2023-05-11T23:35:24.1219014' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10725, N'1332831102406437140', CAST(N'2023-05-11T23:35:24.1258925' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10726, N'1332831103429462640', CAST(N'2023-05-11T23:35:24.1368611' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10727, N'1332831109025501950', CAST(N'2023-05-11T23:35:24.1248926' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10728, N'1332831097912892110', CAST(N'2023-05-11T23:35:24.5950260' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10729, N'1332831123923131540', CAST(N'2023-05-11T23:37:46.2049730' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10730, N'1332831120161613770', CAST(N'2023-05-11T23:37:46.2049730' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10731, N'1332831108127752660', CAST(N'2023-05-11T23:37:46.2129515' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10732, N'1332831124427483140', CAST(N'2023-05-11T23:37:46.2259173' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10733, N'1332831121108468160', CAST(N'2023-05-11T23:37:46.2448660' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10734, N'1332831109005260610', CAST(N'2023-05-11T23:37:46.7596617' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10735, N'1332831121639681110', CAST(N'2023-05-11T23:38:27.1139869' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10736, N'1332831129393009390', CAST(N'2023-05-11T23:38:54.7911981' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10737, N'1332831248180346580', CAST(N'2023-05-12T00:02:20.7488832' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10738, N'1332831256306805230', CAST(N'2023-05-12T00:02:20.7518751' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10739, N'1332831256517725670', CAST(N'2023-05-12T00:02:20.7568630' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10740, N'1332831267397440870', CAST(N'2023-05-12T00:02:20.7488832' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10741, N'1332831263384613270', CAST(N'2023-05-12T00:02:20.7488832' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10742, N'1332831262062861750', CAST(N'2023-05-12T00:02:23.0490867' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10743, N'1332836504299321330', CAST(N'2023-05-12T14:36:40.2167526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10744, N'1332836508620626310', CAST(N'2023-05-12T14:36:40.2197435' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10745, N'1332836506562311150', CAST(N'2023-05-12T14:36:40.2167526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10746, N'1332836508147428040', CAST(N'2023-05-12T14:36:40.2197435' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10747, N'1332836504090368640', CAST(N'2023-05-12T14:36:40.2167526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10748, N'1332836511375857400', CAST(N'2023-05-12T14:36:40.2167526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10749, N'1332836505499571770', CAST(N'2023-05-12T14:36:41.5338318' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10750, N'1332836512047754880', CAST(N'2023-05-12T14:37:57.5823836' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10751, N'1332836542012462880', CAST(N'2023-05-12T14:42:29.1063258' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10752, N'1332836554121318750', CAST(N'2023-05-12T14:45:03.6609919' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10753, N'1332836558141765770', CAST(N'2023-05-12T14:45:37.4261100' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10754, N'1332836604018411630', CAST(N'2023-05-12T14:53:40.0542286' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10755, N'1332836612460859230', CAST(N'2023-05-12T14:53:40.2058206' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10756, N'1332836618108355000', CAST(N'2023-05-12T14:53:40.2955800' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10757, N'1332836683032799060', CAST(N'2023-05-12T15:06:59.7951492' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10758, N'1332836687411370670', CAST(N'2023-05-12T15:07:00.1970737' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10759, N'1332836701119136910', CAST(N'2023-05-12T15:07:00.3087823' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10760, N'1332836698692665760', CAST(N'2023-05-12T15:07:00.4055165' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10761, N'1332836852802015380', CAST(N'2023-05-12T15:34:52.2367268' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10762, N'1332836866768659170', CAST(N'2023-05-12T15:34:54.4149021' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10763, N'1332836869103340200', CAST(N'2023-05-12T15:34:54.4827724' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10764, N'1332836861018464920', CAST(N'2023-05-12T15:34:54.8580191' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10765, N'1332836863397397460', CAST(N'2023-05-12T15:36:03.6372894' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10766, N'1332836870720491880', CAST(N'2023-05-12T15:36:07.6051062' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10767, N'1332836873704047060', CAST(N'2023-05-12T15:36:09.0381206' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10768, N'1332836865583295630', CAST(N'2023-05-12T15:36:12.3958674' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10769, N'1332836861861890710', CAST(N'2023-05-12T15:36:15.0617379' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10770, N'1332837107426865830', CAST(N'2023-05-12T16:15:41.1600734' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10771, N'1332837109732083770', CAST(N'2023-05-12T16:15:41.1600734' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10772, N'1332837103590058640', CAST(N'2023-05-12T16:15:41.1600734' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10773, N'1332837096255532530', CAST(N'2023-05-12T16:15:41.2777604' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10774, N'1332837114200296920', CAST(N'2023-05-12T16:15:42.9313364' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10775, N'1332837169016817200', CAST(N'2023-05-12T16:26:37.8742617' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10776, N'1332837161568631870', CAST(N'2023-05-12T16:26:37.8742617' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10777, N'1332837170417069240', CAST(N'2023-05-12T16:26:37.8952052' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10778, N'1332837176216586540', CAST(N'2023-05-12T16:26:37.8962025' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10779, N'1332837171023148590', CAST(N'2023-05-12T16:26:37.9331038' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10780, N'1332837175670000300', CAST(N'2023-05-12T16:26:39.3242474' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10781, N'1332837171942702680', CAST(N'2023-05-12T16:28:22.3760383' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10782, N'1332838890372681760', CAST(N'2023-05-12T21:14:33.7617351' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10783, N'1332838930298985820', CAST(N'2023-05-12T21:20:20.9538362' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10784, N'1332838971516127640', CAST(N'2023-05-12T21:25:32.8228449' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10785, N'1332838960911384220', CAST(N'2023-05-12T21:26:13.8410088' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10786, N'1332839006876004960', CAST(N'2023-05-12T21:33:14.8037882' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10787, N'1332839042943973750', CAST(N'2023-05-12T21:38:07.3707060' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10788, N'1332839084062294120', CAST(N'2023-05-12T21:43:46.6125071' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10789, N'1332839074680150120', CAST(N'2023-05-12T21:44:01.1294900' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10790, N'1332839809236643550', CAST(N'2023-05-12T23:45:44.3249256' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10791, N'1332839812589645110', CAST(N'2023-05-12T23:45:45.6730574' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10792, N'1332839803825668370', CAST(N'2023-05-12T23:45:45.7534857' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10793, N'1332839809290518210', CAST(N'2023-05-12T23:45:45.9594834' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10794, N'1332855910536262170', CAST(N'2023-05-14T20:32:33.3875450' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10795, N'1332855914780053630', CAST(N'2023-05-14T20:32:33.3855499' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10796, N'1332856203145589080', CAST(N'2023-05-14T21:18:25.3208840' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10797, N'1332856205232846430', CAST(N'2023-05-14T21:18:25.3208840' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10798, N'1332857065620322920', CAST(N'2023-05-14T23:44:29.1604553' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10799, N'1332857081258964860', CAST(N'2023-05-14T23:44:30.5962462' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10800, N'1332857079132740020', CAST(N'2023-05-14T23:44:30.6656350' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10801, N'1332857075856203310', CAST(N'2023-05-14T23:44:30.9150779' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10802, N'1332857098717321070', CAST(N'2023-05-14T23:49:39.0178440' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10803, N'1332857113059555320', CAST(N'2023-05-14T23:49:39.4746182' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10804, N'1332857112462665170', CAST(N'2023-05-14T23:49:39.6541497' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10805, N'1332857117679313100', CAST(N'2023-05-14T23:49:39.8017547' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10806, N'1332857105246397350', CAST(N'2023-05-14T23:49:48.8176954' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10807, N'1332857114936136240', CAST(N'2023-05-14T23:52:20.1877022' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10808, N'1332857149641454640', CAST(N'2023-05-14T23:55:29.1610864' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10809, N'1332857184918720930', CAST(N'2023-05-15T00:01:01.2630141' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10810, N'1332857180130072280', CAST(N'2023-05-15T00:01:35.6476261' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10811, N'1332857178465648600', CAST(N'2023-05-15T00:01:42.3358409' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10812, N'1332857176613924650', CAST(N'2023-05-15T00:01:56.1116754' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10813, N'1332857298205748050', CAST(N'2023-05-15T00:21:12.1854230' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10814, N'1332857307287418640', CAST(N'2023-05-15T00:21:12.1884154' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10815, N'1332857293522279050', CAST(N'2023-05-15T00:21:12.2322980' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10816, N'1332857303396510980', CAST(N'2023-05-15T00:21:12.2851562' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10817, N'1332857308451158500', CAST(N'2023-05-15T00:21:12.2851562' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10818, N'1332857306363469690', CAST(N'2023-05-15T00:21:13.3734194' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10819, N'1332857307739393500', CAST(N'2023-05-15T00:21:31.8414495' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10820, N'1332857374937015490', CAST(N'2023-05-15T00:32:55.0532997' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10821, N'1332857362323504540', CAST(N'2023-05-15T00:32:55.0702531' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10822, N'1332857376834470710', CAST(N'2023-05-15T00:32:55.0712508' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10823, N'1332857358563296530', CAST(N'2023-05-15T00:32:55.0902005' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10824, N'1332857371767254070', CAST(N'2023-05-15T00:32:55.1191226' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10825, N'1332857363653812670', CAST(N'2023-05-15T00:32:56.1381084' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10826, N'1332857388797982110', CAST(N'2023-05-15T00:36:31.4839265' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10827, N'1332857395982739030', CAST(N'2023-05-15T00:36:31.5647884' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10828, N'1332857388155206510', CAST(N'2023-05-15T00:36:31.5647884' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10829, N'1332857398199896590', CAST(N'2023-05-15T00:36:31.5697255' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10830, N'1332857387312576290', CAST(N'2023-05-15T00:36:31.5787070' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10831, N'1332857379486267690', CAST(N'2023-05-15T00:36:32.7009327' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10832, N'1332857799465806210', CAST(N'2023-05-15T01:47:07.5336959' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10833, N'1332857797757122530', CAST(N'2023-05-15T01:47:07.5267133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10834, N'1332857805300060900', CAST(N'2023-05-15T01:47:07.5267133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10835, N'1332857806150986160', CAST(N'2023-05-15T01:47:07.5267133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10836, N'1332857804023583070', CAST(N'2023-05-15T01:47:07.5267133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10837, N'1332857819678597890', CAST(N'2023-05-15T01:47:09.9073484' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10838, N'1332857903091806720', CAST(N'2023-05-15T02:02:43.0952108' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10839, N'1332857915776768790', CAST(N'2023-05-15T02:02:43.2697440' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10840, N'1332857913578628150', CAST(N'2023-05-15T02:02:43.3964057' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10841, N'1332861790328792980', CAST(N'2023-05-15T12:52:14.4172316' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10842, N'1332861800871262320', CAST(N'2023-05-15T12:52:15.7587640' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10843, N'1332861806162738710', CAST(N'2023-05-15T12:52:15.8285791' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10844, N'1332861798748862970', CAST(N'2023-05-15T12:52:16.0669912' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10845, N'1332865383595825490', CAST(N'2023-05-15T22:49:19.2649194' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10846, N'1332865378937737110', CAST(N'2023-05-15T22:49:19.2649194' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10847, N'1332865371389055970', CAST(N'2023-05-15T22:49:19.2649194' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10848, N'1332866050954163000', CAST(N'2023-05-16T00:40:39.5016666' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10849, N'1332866058360997580', CAST(N'2023-05-16T00:40:39.4976777' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10850, N'1332866050123310060', CAST(N'2023-05-16T00:40:39.4976777' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10851, N'1332866097931776670', CAST(N'2023-05-16T00:49:36.5520784' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10852, N'1332866114937189620', CAST(N'2023-05-16T00:49:36.7286065' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10853, N'1332866114529933470', CAST(N'2023-05-16T00:49:36.8383135' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10854, N'1332866107376179590', CAST(N'2023-05-16T00:50:38.6750372' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10855, N'1332866109695311620', CAST(N'2023-05-16T00:50:38.7059528' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10856, N'1332866116223207850', CAST(N'2023-05-16T00:50:38.7089447' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10857, N'1332866144134612520', CAST(N'2023-05-16T00:54:11.6507993' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10858, N'1332866138732922940', CAST(N'2023-05-16T00:54:11.6527936' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10859, N'1332866129505421940', CAST(N'2023-05-16T00:54:11.7884333' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10860, N'1332866144093256540', CAST(N'2023-05-16T00:54:27.9926840' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10861, N'1332866141608148870', CAST(N'2023-05-16T00:54:28.1320704' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10862, N'1332866128239966000', CAST(N'2023-05-16T00:54:28.1659802' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10863, N'1332866136819974020', CAST(N'2023-05-16T00:54:28.2048763' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10864, N'1332866139966494830', CAST(N'2023-05-16T00:54:41.7854697' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10865, N'1332866165296452880', CAST(N'2023-05-16T00:58:37.3328547' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10866, N'1332866168371486560', CAST(N'2023-05-16T01:00:00.2065358' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10867, N'1332866166851430900', CAST(N'2023-05-16T01:00:05.3452675' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10868, N'1332866217635297560', CAST(N'2023-05-16T01:09:28.7037096' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10869, N'1332866286686858090', CAST(N'2023-05-16T01:19:10.1444341' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10870, N'1332866309952449330', CAST(N'2023-05-16T01:22:54.9590493' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10871, N'1332866307708823140', CAST(N'2023-05-16T01:22:55.0109099' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10872, N'1332866303727709930', CAST(N'2023-05-16T01:22:55.4826480' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10873, N'1332866328233464580', CAST(N'2023-05-16T01:27:23.9271492' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10874, N'1332866338309527660', CAST(N'2023-05-16T01:27:23.9331328' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10875, N'1332866325140562820', CAST(N'2023-05-16T01:27:23.9670420' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10876, N'1332866449064006860', CAST(N'2023-05-16T01:44:52.5538400' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10877, N'1332866429339792870', CAST(N'2023-05-16T01:44:52.5717914' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10878, N'1332866439722803560', CAST(N'2023-05-16T01:44:52.5797711' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10879, N'1332866440467145340', CAST(N'2023-05-16T01:44:52.6526737' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10880, N'1332866437452646590', CAST(N'2023-05-16T01:45:15.5778396' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10881, N'1332872144885954410', CAST(N'2023-05-16T17:34:43.8430294' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10882, N'1332872146207458560', CAST(N'2023-05-16T17:34:43.8439702' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10883, N'1332872136357876540', CAST(N'2023-05-16T17:34:43.8430294' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10884, N'1332872132836543880', CAST(N'2023-05-16T17:34:43.8489791' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10885, N'1332872137088044160', CAST(N'2023-05-16T17:34:43.8641703' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10886, N'1332872136796727690', CAST(N'2023-05-16T17:34:43.8712327' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10887, N'1332872139333137080', CAST(N'2023-05-16T17:34:43.8430294' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10888, N'1332872143881424920', CAST(N'2023-05-16T17:34:45.6788456' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10889, N'1332872133260311710', CAST(N'2023-05-16T17:34:45.7390857' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10890, N'1332872165079112290', CAST(N'2023-05-16T17:37:41.8637013' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10891, N'1332873822154702150', CAST(N'2023-05-16T22:15:41.8415797' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10892, N'1332873809269183330', CAST(N'2023-05-16T22:15:41.8355923' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10893, N'1332873811600681800', CAST(N'2023-05-16T22:15:41.8355923' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10894, N'1332873820558205180', CAST(N'2023-05-16T22:15:41.8355923' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10895, N'1332873809267494880', CAST(N'2023-05-16T22:15:41.8355923' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10896, N'1332873830575823820', CAST(N'2023-05-16T22:15:41.8415797' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10897, N'1332873830524224740', CAST(N'2023-05-16T22:15:43.9708845' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10898, N'1332873827565413810', CAST(N'2023-05-16T22:15:44.0416964' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10899, N'1332873822864639210', CAST(N'2023-05-16T22:15:44.1474121' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10900, N'1332873826983086980', CAST(N'2023-05-16T22:17:27.4043516' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10901, N'1332873828943023150', CAST(N'2023-05-16T22:17:27.4133274' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10902, N'1332874155333758340', CAST(N'2023-05-16T23:10:49.2540459' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10903, N'1332874152514738170', CAST(N'2023-05-16T23:10:49.2540459' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10904, N'1332874208704154060', CAST(N'2023-05-16T23:20:22.7395489' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10905, N'1332874192578914770', CAST(N'2023-05-16T23:20:22.7255862' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10906, N'1332874225395763550', CAST(N'2023-05-16T23:21:09.8123579' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10907, N'1332874267935969350', CAST(N'2023-05-16T23:30:28.8200314' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10908, N'1332874257024638650', CAST(N'2023-05-16T23:30:28.8200314' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10909, N'1332874279886347750', CAST(N'2023-05-16T23:30:50.3197059' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10910, N'1332874281410839300', CAST(N'2023-05-16T23:33:17.4317089' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10911, N'1332874294502448590', CAST(N'2023-05-16T23:33:17.4297092' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10912, N'1332874300511361620', CAST(N'2023-05-16T23:35:04.9061943' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10913, N'1332874306838750570', CAST(N'2023-05-16T23:36:04.4122749' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10914, N'1332874309389083100', CAST(N'2023-05-16T23:37:11.7854249' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10915, N'1332874330442650530', CAST(N'2023-05-16T23:40:03.2644759' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10916, N'1332874338513193040', CAST(N'2023-05-16T23:40:03.2664688' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10917, N'1332874342694312320', CAST(N'2023-05-16T23:42:23.3610824' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10918, N'1332874346357692710', CAST(N'2023-05-16T23:42:37.9978171' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10919, N'1332874352219475310', CAST(N'2023-05-16T23:44:53.0485048' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10920, N'1332874355895379790', CAST(N'2023-05-16T23:44:53.0604732' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10921, N'1332874350817033730', CAST(N'2023-05-16T23:45:05.5939812' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10922, N'1332874365075503010', CAST(N'2023-05-16T23:45:19.2110360' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10923, N'1332874433081195920', CAST(N'2023-05-16T23:55:18.9047467' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10924, N'1332874418414435770', CAST(N'2023-05-16T23:55:42.8896408' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10925, N'1332874442610170510', CAST(N'2023-05-16T23:57:24.0096778' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10926, N'1332874724123142110', CAST(N'2023-05-17T00:45:47.5634882' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10927, N'1332874720963971410', CAST(N'2023-05-17T00:45:47.5634882' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10928, N'1332880521362718200', CAST(N'2023-05-17T16:52:44.9203499' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10929, N'1332880514649420240', CAST(N'2023-05-17T16:52:44.9203499' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10930, N'1332880554679343060', CAST(N'2023-05-17T16:58:56.3998716' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10931, N'1332880551363902170', CAST(N'2023-05-17T16:58:56.3998716' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10932, N'1332880542519118000', CAST(N'2023-05-17T16:58:56.3998716' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10933, N'1332880562688661270', CAST(N'2023-05-17T16:58:57.1124969' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10934, N'1332880568528967560', CAST(N'2023-05-17T16:58:57.1513949' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10935, N'1332880573940752610', CAST(N'2023-05-17T17:02:17.9604822' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10936, N'1332880580026471810', CAST(N'2023-05-17T17:02:18.1067204' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10937, N'1332880604660505220', CAST(N'2023-05-17T17:04:20.5453392' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10938, N'1332880594146487270', CAST(N'2023-05-17T17:04:20.6091687' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10939, N'1332880606133903610', CAST(N'2023-05-17T17:05:29.6035614' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10940, N'1332880621501536350', CAST(N'2023-05-17T17:08:48.4103686' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10941, N'1332880626463673460', CAST(N'2023-05-17T17:08:48.4492645' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10942, N'1332880636475075220', CAST(N'2023-05-17T17:09:13.1716140' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10943, N'1332880659652410310', CAST(N'2023-05-17T17:13:37.2068375' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10944, N'1332880720860320890', CAST(N'2023-05-17T17:24:59.7995955' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10945, N'1332880723294901400', CAST(N'2023-05-17T17:25:11.1519800' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10946, N'1332880731285761960', CAST(N'2023-05-17T17:25:11.2999896' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10947, N'1332880722944864490', CAST(N'2023-05-17T17:25:11.3489654' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10948, N'1332880724415056960', CAST(N'2023-05-17T17:25:11.4680318' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10949, N'1332880713458656710', CAST(N'2023-05-17T17:25:11.8592151' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10950, N'1332880730357977980', CAST(N'2023-05-17T17:25:26.3106970' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10951, N'1332880729535739820', CAST(N'2023-05-17T17:27:10.9457982' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10952, N'1332880740071028770', CAST(N'2023-05-17T17:27:27.0579177' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10953, N'1332880726865172940', CAST(N'2023-05-17T17:27:42.4656854' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10954, N'1332880751363610570', CAST(N'2023-05-17T17:28:29.1006748' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10955, N'1332880853322243180', CAST(N'2023-05-17T17:46:11.8394541' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10956, N'1332880854198098630', CAST(N'2023-05-17T17:46:11.8680830' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10957, N'1332880898057249820', CAST(N'2023-05-17T17:56:30.7443248' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10958, N'1332882177137141590', CAST(N'2023-05-17T21:27:22.1669109' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10959, N'1332882174953311180', CAST(N'2023-05-17T21:27:32.2467572' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10960, N'1332882174306005570', CAST(N'2023-05-17T21:27:32.3754111' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10961, N'1332882177446283190', CAST(N'2023-05-17T21:28:01.9732165' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10962, N'1332882191491404300', CAST(N'2023-05-17T21:31:31.9115234' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10963, N'1332882207005668160', CAST(N'2023-05-17T21:31:35.1610948' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10964, N'1332888211560029420', CAST(N'2023-05-18T14:12:56.7208602' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10965, N'1332888205096162150', CAST(N'2023-05-18T14:12:56.7208602' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10966, N'1332888205236711120', CAST(N'2023-05-18T14:12:56.7268437' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10967, N'1332888200455919370', CAST(N'2023-05-18T14:12:56.7208602' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10968, N'1332888207544780530', CAST(N'2023-05-18T14:12:56.7208602' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10969, N'1332888219073245990', CAST(N'2023-05-18T14:12:58.6753014' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10970, N'1332888366220561650', CAST(N'2023-05-18T14:40:47.3895746' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10971, N'1332888369182063830', CAST(N'2023-05-18T14:40:47.3805971' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10972, N'1332888370780562610', CAST(N'2023-05-18T14:40:47.4823253' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10973, N'1332888376771084700', CAST(N'2023-05-18T14:40:47.3805971' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10974, N'1332888368913448020', CAST(N'2023-05-18T14:40:47.3805971' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10975, N'1332888359912743350', CAST(N'2023-05-18T14:40:47.3805971' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10976, N'1332888370471890200', CAST(N'2023-05-18T14:40:48.2542624' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10977, N'1332888383336944740', CAST(N'2023-05-18T14:40:48.2552592' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10978, N'1332888370393540830', CAST(N'2023-05-18T14:40:48.2532658' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10979, N'1332888374572575310', CAST(N'2023-05-18T14:40:48.3091150' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10980, N'1332888365995342970', CAST(N'2023-05-18T14:40:48.3121065' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10981, N'1332888374511075440', CAST(N'2023-05-18T14:40:48.3380385' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10982, N'1332888373559108060', CAST(N'2023-05-18T14:40:49.1418883' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10983, N'1332888373381564300', CAST(N'2023-05-18T14:40:49.3712763' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10984, N'1332888369915819800', CAST(N'2023-05-18T14:41:04.9682432' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10985, N'1332888388591120500', CAST(N'2023-05-18T14:44:16.5651768' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10986, N'1332888394778153810', CAST(N'2023-05-18T14:44:17.4359537' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10987, N'1332888392409849950', CAST(N'2023-05-18T14:44:17.4588929' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10988, N'1332888389155584200', CAST(N'2023-05-18T14:44:17.4848226' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10989, N'1332888405230309120', CAST(N'2023-05-18T14:44:17.5127482' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10990, N'1332888389964330770', CAST(N'2023-05-18T14:44:18.6030538' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10991, N'1332888420620198660', CAST(N'2023-05-18T14:46:42.7628897' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10992, N'1332888410470205670', CAST(N'2023-05-18T14:46:42.7638866' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10993, N'1332888400466819110', CAST(N'2023-05-18T14:46:42.8167453' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10994, N'1332888405669677310', CAST(N'2023-05-18T14:46:42.8307080' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10995, N'1332888403208555060', CAST(N'2023-05-18T14:46:42.8486628' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10996, N'1332888419549109840', CAST(N'2023-05-18T14:46:44.0075605' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10997, N'1332888416379132280', CAST(N'2023-05-18T14:48:42.8260720' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10998, N'1332888514731504570', CAST(N'2023-05-18T15:04:39.8942355' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (10999, N'1332888508058543810', CAST(N'2023-05-18T15:04:39.8952325' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11000, N'1332888517612429440', CAST(N'2023-05-18T15:04:39.9790082' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11001, N'1332888528776514250', CAST(N'2023-05-18T15:04:39.9946179' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11002, N'1332888523326212940', CAST(N'2023-05-18T15:04:40.0149124' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11003, N'1332888509542787010', CAST(N'2023-05-18T15:04:41.0900612' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11004, N'1332888515264409860', CAST(N'2023-05-18T15:04:55.9124638' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11005, N'1332888588671064970', CAST(N'2023-05-18T15:16:07.1376688' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11006, N'1332888580095177120', CAST(N'2023-05-18T15:16:07.1356738' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11007, N'1332888578690668210', CAST(N'2023-05-18T15:16:07.1546231' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11008, N'1332888589381664140', CAST(N'2023-05-18T15:16:07.1995031' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11009, N'1332888578188526570', CAST(N'2023-05-18T15:16:07.2393954' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11010, N'1332888582435790210', CAST(N'2023-05-18T15:16:08.2609920' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11011, N'1332888581042912200', CAST(N'2023-05-18T15:16:13.7580692' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11012, N'1332888615678215800', CAST(N'2023-05-18T15:21:49.2369537' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11013, N'1332888627856119040', CAST(N'2023-05-18T15:21:49.4124870' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11014, N'1332888627757308120', CAST(N'2023-05-18T15:21:49.5291734' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11015, N'1332888621663868510', CAST(N'2023-05-18T15:23:20.5471117' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11016, N'1332888691784852700', CAST(N'2023-05-18T15:32:01.0472268' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11017, N'1332888679166124670', CAST(N'2023-05-18T15:32:01.5429014' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11018, N'1332888678562171940', CAST(N'2023-05-18T15:32:01.7074614' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11019, N'1332888691939293150', CAST(N'2023-05-18T15:32:03.5338500' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11020, N'1332888762350016310', CAST(N'2023-05-18T15:48:10.7600785' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11021, N'1332888772682554210', CAST(N'2023-05-18T15:48:11.7514282' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11022, N'1332888783594236640', CAST(N'2023-05-18T15:48:11.8232357' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11023, N'1332888775806393220', CAST(N'2023-05-18T15:48:12.0645902' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11024, N'1332888788166383440', CAST(N'2023-05-18T15:50:16.6995873' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11025, N'1332888783870484410', CAST(N'2023-05-18T15:50:19.9129964' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11026, N'1332888803380692820', CAST(N'2023-05-18T15:50:34.7253876' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11027, N'1332888793633365920', CAST(N'2023-05-18T15:50:36.5036357' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11028, N'1332888798121930420', CAST(N'2023-05-18T15:50:36.9125403' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11029, N'1332888809717575770', CAST(N'2023-05-18T15:51:43.9353268' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11030, N'1332888810903861930', CAST(N'2023-05-18T15:51:44.4579281' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11031, N'1332888802808434560', CAST(N'2023-05-18T15:51:44.5606532' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11032, N'1332888792806104460', CAST(N'2023-05-18T15:51:46.4755348' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11033, N'1332888814818181360', CAST(N'2023-05-18T15:52:40.5130446' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11034, N'1332889010825209150', CAST(N'2023-05-18T16:27:35.9597273' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11035, N'1332889021393412880', CAST(N'2023-05-18T16:27:37.3101016' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11036, N'1332889023853945940', CAST(N'2023-05-18T16:27:37.4746625' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11037, N'1332889013692991040', CAST(N'2023-05-18T16:27:41.7098699' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11038, N'1332889034005665380', CAST(N'2023-05-18T16:29:18.8995611' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11039, N'1332889034328565240', CAST(N'2023-05-18T16:29:19.3659539' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11040, N'1332889029591801700', CAST(N'2023-05-18T16:29:19.5365039' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11041, N'1332889016541915100', CAST(N'2023-05-18T16:29:19.6172803' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11042, N'1332889018935055770', CAST(N'2023-05-18T16:29:47.3279455' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11043, N'1332889019855161740', CAST(N'2023-05-18T16:29:56.6094251' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11044, N'1332889032043300650', CAST(N'2023-05-18T16:30:34.5871713' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11045, N'1332889033953799380', CAST(N'2023-05-18T16:31:14.3468567' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11046, N'1332889065690124900', CAST(N'2023-05-18T16:35:52.1680698' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11047, N'1332889070144023230', CAST(N'2023-05-18T16:35:52.5290590' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11048, N'1332889056174077660', CAST(N'2023-05-18T16:35:52.7021784' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11049, N'1332889076539098050', CAST(N'2023-05-18T16:35:52.7840133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11050, N'1332889083166264290', CAST(N'2023-05-18T16:40:12.2304598' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11051, N'1332889094153329310', CAST(N'2023-05-18T16:40:12.5406295' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11052, N'1332889095460876320', CAST(N'2023-05-18T16:40:12.7085324' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11053, N'1332889095504965400', CAST(N'2023-05-18T16:40:12.7663838' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11054, N'1332889102241949610', CAST(N'2023-05-18T16:42:21.6329638' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11055, N'1332889105176479970', CAST(N'2023-05-18T16:42:32.2998259' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11056, N'1332889105091217370', CAST(N'2023-05-18T16:42:32.3237612' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11057, N'1332890450646524330', CAST(N'2023-05-18T20:28:21.3929844' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11058, N'1332890452801063050', CAST(N'2023-05-18T20:28:22.4889316' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11059, N'1332890466824607300', CAST(N'2023-05-18T20:28:22.5627342' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11060, N'1332890463173747080', CAST(N'2023-05-18T20:28:22.7534315' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11061, N'1332890539929540390', CAST(N'2023-05-18T20:41:09.9714159' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11062, N'1332890548267938590', CAST(N'2023-05-18T20:41:10.4102413' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11063, N'1332890540891717430', CAST(N'2023-05-18T20:41:10.5648334' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11064, N'1332890534640642520', CAST(N'2023-05-18T20:41:10.6775262' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11065, N'1332890554353220580', CAST(N'2023-05-18T20:44:35.6196240' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11066, N'1332890553468973630', CAST(N'2023-05-18T20:45:31.5664093' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11067, N'1332890571282355730', CAST(N'2023-05-18T20:45:31.5963285' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11068, N'1332890755578480740', CAST(N'2023-05-18T21:18:50.2061690' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11069, N'1332890764814810090', CAST(N'2023-05-18T21:18:50.1981920' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11070, N'1332890764012188420', CAST(N'2023-05-18T21:18:50.1981920' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11071, N'1332890755276196680', CAST(N'2023-05-18T21:18:50.1981920' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11072, N'1332890753639292050', CAST(N'2023-05-18T21:18:50.1981920' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11073, N'1332890766264452310', CAST(N'2023-05-18T21:18:52.0876590' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11074, N'1332890769084631290', CAST(N'2023-05-18T21:18:52.0986300' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11075, N'1332890759455098040', CAST(N'2023-05-18T21:18:52.3140542' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11076, N'1332890758593654430', CAST(N'2023-05-18T21:18:52.3649187' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11077, N'1332890769691540600', CAST(N'2023-05-18T21:18:52.3778830' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11078, N'1332890758505739770', CAST(N'2023-05-18T21:18:52.4058081' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11079, N'1332890763429663360', CAST(N'2023-05-18T21:18:55.9957245' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11080, N'1332890759378509150', CAST(N'2023-05-18T21:18:57.6766924' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11081, N'1332890765859640910', CAST(N'2023-05-18T21:19:11.3446450' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11082, N'1332890764548210690', CAST(N'2023-05-18T21:19:58.2638975' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11083, N'1332890782635689780', CAST(N'2023-05-18T21:20:51.9290538' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11084, N'1332890785665102500', CAST(N'2023-05-18T21:23:25.7662535' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11085, N'1332890784078653330', CAST(N'2023-05-18T21:23:41.6002503' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11086, N'1332890798861950920', CAST(N'2023-05-18T21:23:54.8694925' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11087, N'1332890804345849530', CAST(N'2023-05-18T21:24:10.3046348' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11088, N'1332890807090474410', CAST(N'2023-05-18T21:26:27.0486053' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11089, N'1332890809883589070', CAST(N'2023-05-18T21:26:40.8832019' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11090, N'1332890823960219360', CAST(N'2023-05-18T21:27:37.7921831' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11091, N'1332890811513968040', CAST(N'2023-05-18T21:28:14.8299023' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11092, N'1332890819495980540', CAST(N'2023-05-18T21:28:19.0787381' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11093, N'1332890813466961300', CAST(N'2023-05-18T21:28:42.0389961' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11094, N'1332890831385611710', CAST(N'2023-05-18T21:28:52.6954982' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11095, N'1332898333687705540', CAST(N'2023-05-19T18:22:52.9070161' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11096, N'1332898352888167950', CAST(N'2023-05-19T18:23:07.6363289' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11097, N'1332898347672616950', CAST(N'2023-05-19T18:23:07.6532837' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11098, N'1332898356801390220', CAST(N'2023-05-19T18:24:07.9211891' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11099, N'1332898363739165900', CAST(N'2023-05-19T18:24:09.8628529' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11100, N'1332898367141826950', CAST(N'2023-05-19T18:24:17.3548386' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11101, N'1332898365169614680', CAST(N'2023-05-19T18:24:17.8681234' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11102, N'1332898353217295230', CAST(N'2023-05-19T18:24:18.3028127' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11103, N'1332898358892516970', CAST(N'2023-05-19T18:24:18.7619580' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11104, N'1332898348146338410', CAST(N'2023-05-19T18:24:19.2271324' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11105, N'1332898357641835010', CAST(N'2023-05-19T18:24:19.6620198' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11106, N'1332898349824791270', CAST(N'2023-05-19T18:24:20.1502908' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11107, N'1332898351502676660', CAST(N'2023-05-19T18:24:20.6062759' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11108, N'1332898354982862190', CAST(N'2023-05-19T18:24:21.0376208' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11109, N'1332898367115717310', CAST(N'2023-05-19T18:24:21.4545076' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11110, N'1332898358927251570', CAST(N'2023-05-19T18:24:21.8385526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11111, N'1332898362993430570', CAST(N'2023-05-19T18:24:22.0351683' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11112, N'1332898392697122820', CAST(N'2023-05-19T18:29:03.8889350' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11113, N'1332898387136914140', CAST(N'2023-05-19T18:29:08.8455869' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11114, N'1332898394192205640', CAST(N'2023-05-19T18:29:08.8829990' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11115, N'1332898394396241310', CAST(N'2023-05-19T18:30:19.2548839' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11116, N'1332898441097231180', CAST(N'2023-05-19T18:39:24.0481101' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11117, N'1332898451308363060', CAST(N'2023-05-19T18:41:20.5120114' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11118, N'1332898457409898030', CAST(N'2023-05-19T18:41:28.2306327' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11119, N'1332898456647226610', CAST(N'2023-05-19T18:41:28.2605530' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11120, N'1332898459128844660', CAST(N'2023-05-19T18:42:42.6386518' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11121, N'1332898475253849590', CAST(N'2023-05-19T18:42:49.0492911' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11122, N'1332898460526898110', CAST(N'2023-05-19T18:42:49.0921757' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11123, N'1332898459696160910', CAST(N'2023-05-19T18:43:14.3320988' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11124, N'1332898489936441250', CAST(N'2023-05-19T18:46:56.3615946' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11125, N'1332898505276614730', CAST(N'2023-05-19T18:49:49.7106236' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11126, N'1332898558840884370', CAST(N'2023-05-19T18:56:26.2646018' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11127, N'1332898559612767070', CAST(N'2023-05-19T18:56:26.2985115' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11128, N'1332898557576650440', CAST(N'2023-05-19T18:56:50.4736281' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11129, N'1332898563530460490', CAST(N'2023-05-19T18:58:43.0839422' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11130, N'1332898569705625830', CAST(N'2023-05-19T18:59:07.7484325' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11131, N'1332898565920779550', CAST(N'2023-05-19T18:59:07.8481631' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11132, N'1332898560504943160', CAST(N'2023-05-19T18:59:25.4306964' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11133, N'1332898566669972470', CAST(N'2023-05-19T18:59:42.7516382' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11134, N'1332898573506117670', CAST(N'2023-05-19T19:00:33.1381800' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11135, N'1332898569160827960', CAST(N'2023-05-19T19:00:50.0363083' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11136, N'1332898578319456620', CAST(N'2023-05-19T19:01:30.8296960' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11137, N'1332898582667714050', CAST(N'2023-05-19T19:02:44.9286547' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11138, N'1332898582712112760', CAST(N'2023-05-19T19:02:55.6035979' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11139, N'1332898614041692830', CAST(N'2023-05-19T19:08:45.0617964' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11140, N'1332899806405144540', CAST(N'2023-05-19T22:26:10.3266568' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11141, N'1332899808600171880', CAST(N'2023-05-19T22:27:46.4488372' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11142, N'1332899824519309970', CAST(N'2023-05-19T22:27:46.5934502' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11143, N'1332899830752201570', CAST(N'2023-05-19T22:29:35.4027810' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11144, N'1332899819201954310', CAST(N'2023-05-19T22:29:42.8013622' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11145, N'1332899860432343580', CAST(N'2023-05-19T22:37:51.5795855' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11146, N'1332899870795934830', CAST(N'2023-05-19T22:38:09.1165254' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11147, N'1332899879749363190', CAST(N'2023-05-19T22:38:09.2132677' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11148, N'1332899881860918260', CAST(N'2023-05-19T22:38:52.3540333' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11149, N'1332899883093663970', CAST(N'2023-05-19T22:39:06.3927363' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11150, N'1332899895212794630', CAST(N'2023-05-19T22:39:20.7304916' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11151, N'1332899892159734160', CAST(N'2023-05-19T22:39:29.7136229' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11152, N'1332899893452926990', CAST(N'2023-05-19T22:39:33.3427802' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11153, N'1332899885785335720', CAST(N'2023-05-19T22:40:05.9783674' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11154, N'1332899892005309740', CAST(N'2023-05-19T22:40:26.5974467' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11155, N'1332899900590930910', CAST(N'2023-05-19T22:41:39.6988758' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11156, N'1332899910596692720', CAST(N'2023-05-19T22:42:46.1000597' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11157, N'1332899910427242730', CAST(N'2023-05-19T22:43:09.2706538' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11158, N'1332899919492515820', CAST(N'2023-05-19T22:44:59.0766304' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11159, N'1332899958568007980', CAST(N'2023-05-19T22:51:19.9012615' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11160, N'1332899948795477670', CAST(N'2023-05-19T22:51:19.9152234' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11161, N'1332899967245836350', CAST(N'2023-05-19T22:52:35.8780263' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11162, N'1332899978154813310', CAST(N'2023-05-19T22:52:47.4628422' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11163, N'1332899991095237140', CAST(N'2023-05-19T22:58:03.6040488' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11164, N'1332900007785829510', CAST(N'2023-05-19T22:58:40.7381261' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11165, N'1332900020796986720', CAST(N'2023-05-19T23:01:15.1346825' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11166, N'1332900030576497490', CAST(N'2023-05-19T23:01:44.6387976' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11167, N'1332900032926216330', CAST(N'2023-05-19T23:03:33.3790304' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11168, N'1332900043854635260', CAST(N'2023-05-19T23:03:48.9146152' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11169, N'1332900078889030620', CAST(N'2023-05-19T23:10:49.8263070' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11170, N'1332900052484523890', CAST(N'2023-05-19T23:10:49.8472535' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11171, N'1332900082296538150', CAST(N'2023-05-19T23:10:49.8263070' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11172, N'1332900074748899060', CAST(N'2023-05-19T23:10:49.8263070' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11173, N'1332900110854473530', CAST(N'2023-05-19T23:15:32.8986172' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11174, N'1332900171552453740', CAST(N'2023-05-19T23:26:19.1919303' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11175, N'1332900174886998280', CAST(N'2023-05-19T23:26:19.3375411' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11176, N'1332900176946692910', CAST(N'2023-05-19T23:26:19.4362799' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11177, N'1332900172188306030', CAST(N'2023-05-19T23:26:19.5621634' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11178, N'1332900174978643910', CAST(N'2023-05-19T23:26:22.7710769' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11179, N'1332900235197981080', CAST(N'2023-05-19T23:38:27.2761558' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11180, N'1332900266159610400', CAST(N'2023-05-19T23:41:59.9732783' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11181, N'1332900268733729870', CAST(N'2023-05-19T23:42:00.0929580' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11182, N'1332900263346517670', CAST(N'2023-05-19T23:42:11.7745542' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11183, N'1332900261763609740', CAST(N'2023-05-19T23:42:25.1455492' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11184, N'1332900330561859140', CAST(N'2023-05-19T23:54:34.0265399' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11185, N'1332900344741210100', CAST(N'2023-05-19T23:54:46.1758920' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11186, N'1332900340597121350', CAST(N'2023-05-19T23:54:46.2177794' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11187, N'1332900356566373700', CAST(N'2023-05-19T23:56:11.6699910' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11188, N'1332900339767050460', CAST(N'2023-05-19T23:56:29.7820875' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11189, N'1332900344701752770', CAST(N'2023-05-19T23:56:29.7960497' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11190, N'1332900356088122590', CAST(N'2023-05-19T23:56:45.4846509' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11191, N'1332900356634294420', CAST(N'2023-05-19T23:56:54.1971114' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11192, N'1332900488315281600', CAST(N'2023-05-20T00:21:00.7255012' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11193, N'1332900473581953850', CAST(N'2023-05-20T00:21:00.7255012' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11194, N'1332900480902267340', CAST(N'2023-05-20T00:21:00.7255012' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11195, N'1332907597326377730', CAST(N'2023-05-20T20:06:13.8597215' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11196, N'1332907605739638550', CAST(N'2023-05-20T20:06:13.8597215' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11197, N'1332907621189199250', CAST(N'2023-05-20T20:06:38.5836842' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11198, N'1332910081759750500', CAST(N'2023-05-21T03:00:32.4548811' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11199, N'1332910092820460110', CAST(N'2023-05-21T03:00:32.4469028' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11200, N'1332910084179731250', CAST(N'2023-05-21T03:00:32.4648550' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11201, N'1332910100419504420', CAST(N'2023-05-21T03:00:32.4718389' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11202, N'1332910090621275400', CAST(N'2023-05-21T03:00:32.4548811' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11203, N'1332910090452442680', CAST(N'2023-05-21T03:00:32.4469028' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11204, N'1332910097462073470', CAST(N'2023-05-21T03:00:32.4469028' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11205, N'1332910081777449730', CAST(N'2023-05-21T03:00:32.4608658' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11206, N'1332910092382990670', CAST(N'2023-05-21T03:00:32.4469028' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11207, N'1332910105309663730', CAST(N'2023-05-21T03:00:41.1015315' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11208, N'1332910106144746330', CAST(N'2023-05-21T03:00:56.5234503' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11209, N'1332910150590133910', CAST(N'2023-05-21T03:08:35.5248193' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11210, N'1332910147325059360', CAST(N'2023-05-21T03:08:35.5467573' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11211, N'1332910137143557950', CAST(N'2023-05-21T03:08:44.4382794' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11212, N'1332910201444070140', CAST(N'2023-05-21T03:19:30.2008322' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11213, N'1332910217120581470', CAST(N'2023-05-21T03:19:30.2497139' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11214, N'1332910202935251130', CAST(N'2023-05-21T03:19:37.5388699' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11215, N'1332913864593000210', CAST(N'2023-05-21T13:30:53.9158378' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11216, N'1332913867074042680', CAST(N'2023-05-21T13:30:53.9158378' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11217, N'1332913880268345020', CAST(N'2023-05-21T13:33:10.5157161' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11218, N'1332913943257237930', CAST(N'2023-05-21T13:43:27.5043579' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11219, N'1332913959270917570', CAST(N'2023-05-21T13:43:27.5183203' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11220, N'1332913949006264950', CAST(N'2023-05-21T13:43:34.5501269' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11221, N'1332914074681222370', CAST(N'2023-05-21T14:06:25.3556926' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11222, N'1332914078981148980', CAST(N'2023-05-21T14:06:25.3556926' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11223, N'1332914095405285310', CAST(N'2023-05-21T14:06:49.5770952' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11224, N'1332914268570701210', CAST(N'2023-05-21T14:35:44.0015276' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11225, N'1332914250000600150', CAST(N'2023-05-21T14:35:44.0015276' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11226, N'1332914323983724490', CAST(N'2023-05-21T14:44:36.0889105' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11227, N'1332914369073206710', CAST(N'2023-05-21T14:51:38.7010597' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11228, N'1332914369916697370', CAST(N'2023-05-21T14:51:38.7080420' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11229, N'1332914360125071820', CAST(N'2023-05-21T14:51:45.3936488' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11230, N'1332914368589024050', CAST(N'2023-05-21T14:51:45.8880815' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11231, N'1332914365289662070', CAST(N'2023-05-21T14:51:46.5196909' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11232, N'1332914464743281050', CAST(N'2023-05-21T15:10:25.4731091' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11233, N'1332914473952874870', CAST(N'2023-05-21T15:10:25.4790834' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11234, N'1332914470106699430', CAST(N'2023-05-21T15:10:33.9947392' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11235, N'1332914531444402370', CAST(N'2023-05-21T15:18:43.4689189' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11236, N'1332914526475078160', CAST(N'2023-05-21T15:18:43.5058193' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11237, N'1332914531320942150', CAST(N'2023-05-21T15:18:50.0891320' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11238, N'1332914531444409810', CAST(N'2023-05-21T15:18:50.5366132' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11239, N'1332914554331340770', CAST(N'2023-05-21T15:22:17.4023233' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11240, N'1332914546375425260', CAST(N'2023-05-21T15:22:17.4033111' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11241, N'1332914541311049310', CAST(N'2023-05-21T15:22:24.6127040' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11242, N'1332914536452305170', CAST(N'2023-05-21T15:22:25.0990931' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11243, N'1332914614978639290', CAST(N'2023-05-21T15:32:28.1659452' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11244, N'1332914602284273630', CAST(N'2023-05-21T15:32:28.2746543' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11245, N'1332914598332411430', CAST(N'2023-05-21T15:32:38.9307594' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11246, N'1332914602819384060', CAST(N'2023-05-21T15:32:39.6448873' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11247, N'1332914623271461380', CAST(N'2023-05-21T15:35:24.7021652' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11248, N'1332914613620531240', CAST(N'2023-05-21T15:35:24.8068864' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11249, N'1332914626455695680', CAST(N'2023-05-21T15:35:31.3538426' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11250, N'1332914661962819270', CAST(N'2023-05-21T15:41:56.6566944' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11251, N'1332914667095189530', CAST(N'2023-05-21T15:41:56.6606832' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11252, N'1332914659067090700', CAST(N'2023-05-21T15:42:04.6845986' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11253, N'1332914690667110470', CAST(N'2023-05-21T15:47:01.5203014' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11254, N'1332914686452048910', CAST(N'2023-05-21T15:47:01.5322688' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11255, N'1332914696530150310', CAST(N'2023-05-21T15:47:06.9483501' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11256, N'1332914690647192180', CAST(N'2023-05-21T15:47:07.5309190' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11257, N'1332914696737514200', CAST(N'2023-05-21T15:48:13.7931324' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11258, N'1332914694355065460', CAST(N'2023-05-21T15:48:13.7941301' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11259, N'1332914710219040950', CAST(N'2023-05-21T15:48:19.8228265' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11260, N'1332914733887251290', CAST(N'2023-05-21T15:54:49.7624709' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11261, N'1332914748449171550', CAST(N'2023-05-21T15:54:49.7634675' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11262, N'1332914744048161360', CAST(N'2023-05-21T15:54:57.5587632' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11263, N'1332915077104353730', CAST(N'2023-05-21T16:51:06.7009369' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11264, N'1332915075998287720', CAST(N'2023-05-21T16:51:06.7009369' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11265, N'1332915070057635680', CAST(N'2023-05-21T16:51:06.7019349' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11266, N'1332915060692650070', CAST(N'2023-05-21T16:51:06.7079642' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11267, N'1332915077136544860', CAST(N'2023-05-21T16:51:06.7279421' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11268, N'1332915078730892950', CAST(N'2023-05-21T16:51:27.2435378' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11269, N'1332915085649899220', CAST(N'2023-05-21T16:51:30.5284500' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11270, N'1332915073694313420', CAST(N'2023-05-21T16:51:30.6830380' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11271, N'1332915084906118990', CAST(N'2023-05-21T16:51:30.7488596' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11272, N'1332915069730747660', CAST(N'2023-05-21T16:51:34.5498879' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11273, N'1332915090813895390', CAST(N'2023-05-21T16:52:11.3177106' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11274, N'1332915090639324660', CAST(N'2023-05-21T16:52:22.5118839' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11275, N'1332915075417103570', CAST(N'2023-05-21T16:52:31.4004631' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11276, N'1332915075857155760', CAST(N'2023-05-21T16:52:35.1731588' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11277, N'1332915099889896400', CAST(N'2023-05-21T16:53:32.9949542' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11278, N'1332915101640798910', CAST(N'2023-05-21T16:53:33.0617672' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11279, N'1332915136532252230', CAST(N'2023-05-21T17:00:44.0254825' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11280, N'1332915133412382770', CAST(N'2023-05-21T17:01:11.8050621' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11281, N'1332915153399012660', CAST(N'2023-05-21T17:04:03.0740850' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11282, N'1332915228239029790', CAST(N'2023-05-21T17:16:49.2423934' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11283, N'1332915241237168270', CAST(N'2023-05-21T17:17:45.7193126' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11284, N'1332915234985842600', CAST(N'2023-05-21T17:18:06.6665785' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11285, N'1332915959252925060', CAST(N'2023-05-21T19:18:30.6408573' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11286, N'1332915960173285360', CAST(N'2023-05-21T19:18:30.6408573' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11287, N'1332915974808820590', CAST(N'2023-05-21T19:20:09.1532129' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11288, N'1332916017495343610', CAST(N'2023-05-21T19:27:20.3964135' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11289, N'1332916019298607080', CAST(N'2023-05-21T19:27:30.7847252' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11290, N'1332916006528296020', CAST(N'2023-05-21T19:27:39.8530088' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11291, N'1332916035441664930', CAST(N'2023-05-21T19:31:19.0784026' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11292, N'1332916044590281690', CAST(N'2023-05-21T19:31:36.9400866' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11293, N'1332916044946197650', CAST(N'2023-05-21T19:32:43.5401067' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11294, N'1332916083345188320', CAST(N'2023-05-21T19:37:03.3720896' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11295, N'1332916069883497640', CAST(N'2023-05-21T19:37:03.3860537' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11296, N'1332916079317473280', CAST(N'2023-05-21T19:37:17.1953614' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11297, N'1332916071687962960', CAST(N'2023-05-21T19:37:20.1719651' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11298, N'1332916099907946640', CAST(N'2023-05-21T19:41:13.5757063' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11299, N'1332916133714384780', CAST(N'2023-05-21T19:48:13.8958701' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11300, N'1332916143248836140', CAST(N'2023-05-21T19:48:13.8958701' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11301, N'1332916133520330630', CAST(N'2023-05-21T19:48:22.3886811' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11302, N'1332917544958870770', CAST(N'2023-05-21T23:42:09.7595449' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11303, N'1332917531266834360', CAST(N'2023-05-21T23:42:09.7605422' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11304, N'1332917559518673740', CAST(N'2023-05-21T23:45:10.2809318' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11305, N'1332917569130631990', CAST(N'2023-05-21T23:45:15.9560086' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11306, N'1332917649399988800', CAST(N'2023-05-21T23:58:39.9429344' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11307, N'1332917632587394310', CAST(N'2023-05-21T23:58:39.9489186' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11308, N'1332917645230870760', CAST(N'2023-05-21T23:59:03.2294239' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11309, N'1332917818896833600', CAST(N'2023-05-22T00:27:15.7694631' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11310, N'1332918013759199420', CAST(N'2023-05-22T01:01:09.2685356' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11311, N'1332918021099116920', CAST(N'2023-05-22T01:01:09.2685356' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11312, N'1332918014026354080', CAST(N'2023-05-22T01:01:28.4093059' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11313, N'1332918031456299500', CAST(N'2023-05-22T01:03:59.6287688' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11314, N'1332918032294090600', CAST(N'2023-05-22T01:03:59.6410624' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11315, N'1332918039149413810', CAST(N'2023-05-22T01:04:31.2398510' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11316, N'1332922695041313890', CAST(N'2023-05-22T14:02:15.1049445' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11317, N'1332922689147934790', CAST(N'2023-05-22T14:02:15.1049445' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11318, N'1332923352444445440', CAST(N'2023-05-22T15:50:23.2003522' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11319, N'1332923360977715960', CAST(N'2023-05-22T15:53:00.6565145' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11320, N'1332923364777145710', CAST(N'2023-05-22T15:53:03.9865261' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11321, N'1332923377909997480', CAST(N'2023-05-22T15:53:11.8011009' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11322, N'1332923375083695660', CAST(N'2023-05-22T15:55:21.4654861' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11323, N'1332923387108994870', CAST(N'2023-05-22T15:55:21.6669907' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11324, N'1332923418399263690', CAST(N'2023-05-22T16:02:26.9643070' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11325, N'1332923425556133000', CAST(N'2023-05-22T16:02:41.7639662' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11326, N'1332923438795311560', CAST(N'2023-05-22T16:02:55.1050547' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11327, N'1332924787465442770', CAST(N'2023-05-22T19:49:41.5372434' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11328, N'1332924823866459060', CAST(N'2023-05-22T19:55:33.7524287' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11329, N'1332924845129659930', CAST(N'2023-05-22T19:59:13.7178437' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11330, N'1332924903208749220', CAST(N'2023-05-22T20:10:55.1733126' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11331, N'1332924944126749150', CAST(N'2023-05-22T20:15:02.0277361' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11332, N'1332925370511550420', CAST(N'2023-05-22T21:29:18.5625208' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11333, N'1332925398815230780', CAST(N'2023-05-22T21:29:35.7749010' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11334, N'1332925389116541370', CAST(N'2023-05-22T21:30:46.6619514' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11335, N'1332925394119035120', CAST(N'2023-05-22T21:31:40.4095273' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11336, N'1332925415635644720', CAST(N'2023-05-22T21:32:49.7969359' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11337, N'1332925416116698330', CAST(N'2023-05-22T21:33:22.2807799' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11338, N'1332925440086700510', CAST(N'2023-05-22T21:38:29.6739800' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11339, N'1332925439963955940', CAST(N'2023-05-22T21:38:49.0640836' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11340, N'1332925462173007730', CAST(N'2023-05-22T21:41:09.8608393' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11341, N'1332925465952534340', CAST(N'2023-05-22T21:46:37.1346952' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11342, N'1332925544784770290', CAST(N'2023-05-22T21:56:46.3994949' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11343, N'1332925551462269240', CAST(N'2023-05-22T21:58:12.8832953' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11344, N'1332925556822777370', CAST(N'2023-05-22T21:59:13.3737546' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11345, N'1332925564151971870', CAST(N'2023-05-22T21:59:29.3161988' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11346, N'1332925580992591650', CAST(N'2023-05-22T21:59:59.6820857' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11347, N'1332925565096195790', CAST(N'2023-05-22T22:00:34.4006765' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11348, N'1332925569550463950', CAST(N'2023-05-22T22:01:07.8579886' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11349, N'1332925601582656490', CAST(N'2023-05-22T22:04:02.1085700' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11350, N'1332925600646892860', CAST(N'2023-05-22T22:04:09.2418209' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11351, N'1332925616893512540', CAST(N'2023-05-22T22:07:26.6245738' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11352, N'1332925617551574200', CAST(N'2023-05-22T22:07:48.3542667' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11353, N'1332925702040002210', CAST(N'2023-05-22T22:22:19.2801319' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11354, N'1332925714285987410', CAST(N'2023-05-22T22:22:55.7633567' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11355, N'1332931420289135680', CAST(N'2023-05-23T14:18:09.2373488' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11356, N'1332931433553233380', CAST(N'2023-05-23T14:18:25.3642982' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11357, N'1332931442961438320', CAST(N'2023-05-23T14:18:25.3905030' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11358, N'1332931444876910810', CAST(N'2023-05-23T14:18:25.4422357' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11359, N'1332931442729635380', CAST(N'2023-05-23T14:18:25.4791391' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11360, N'1332931433394172530', CAST(N'2023-05-23T14:18:25.4921019' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11361, N'1332931468104492640', CAST(N'2023-05-23T14:24:08.6427903' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11362, N'1332931578002479070', CAST(N'2023-05-23T14:39:32.8779011' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11363, N'1332931561560817450', CAST(N'2023-05-23T14:39:50.7925487' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11364, N'1332931559886403690', CAST(N'2023-05-23T14:39:50.8164867' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11365, N'1332931578494866410', CAST(N'2023-05-23T14:39:50.8324437' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11366, N'1332931574733130850', CAST(N'2023-05-23T14:39:50.8593700' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11367, N'1332931575847805510', CAST(N'2023-05-23T14:39:50.8843020' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11368, N'1332931778322669730', CAST(N'2023-05-23T15:15:48.5265429' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11369, N'1332931829765908940', CAST(N'2023-05-23T15:24:12.7684968' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11370, N'1332931830940217900', CAST(N'2023-05-23T15:24:22.2646917' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11371, N'1332931839714324380', CAST(N'2023-05-23T15:24:28.9498737' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11372, N'1332931845063618240', CAST(N'2023-05-23T15:26:25.5770899' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11373, N'1332931858624961100', CAST(N'2023-05-23T15:26:37.5314535' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11374, N'1332935018771962300', CAST(N'2023-05-24T00:16:03.2264891' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11375, N'1332935023911301510', CAST(N'2023-05-24T00:17:13.4529197' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11376, N'1332935035912882520', CAST(N'2023-05-24T00:17:30.6905052' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11377, N'1332935056663230460', CAST(N'2023-05-24T00:21:30.1082593' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11378, N'1332935065245478800', CAST(N'2023-05-24T00:21:46.8865730' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11379, N'1332935055105334510', CAST(N'2023-05-24T00:22:14.4612142' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11380, N'1332935082586920760', CAST(N'2023-05-24T00:23:33.6525771' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11381, N'1332935063912645910', CAST(N'2023-05-24T00:23:58.0450506' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11382, N'1332935084933198690', CAST(N'2023-05-24T00:24:19.6129519' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11383, N'1332935078124621300', CAST(N'2023-05-24T00:26:07.4688130' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11384, N'1332935108126341270', CAST(N'2023-05-24T00:27:51.6273104' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11385, N'1332935109731970230', CAST(N'2023-05-24T00:28:18.4725258' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11386, N'1332935112161854570', CAST(N'2023-05-24T00:28:37.2256640' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11387, N'1332935113114676820', CAST(N'2023-05-24T00:30:33.2485749' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11388, N'1332935112065296790', CAST(N'2023-05-24T00:30:33.3995149' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11389, N'1332935111600848290', CAST(N'2023-05-24T00:30:33.9062430' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11390, N'1332935107503462510', CAST(N'2023-05-24T00:30:43.8331695' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11391, N'1332935111313349380', CAST(N'2023-05-24T00:31:12.9529735' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11392, N'1332935412814532960', CAST(N'2023-05-24T01:24:40.0912224' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11393, N'1332935430472194620', CAST(N'2023-05-24T01:24:55.8085311' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11394, N'1332935439945955650', CAST(N'2023-05-24T01:24:55.8306342' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11395, N'1332935441870265560', CAST(N'2023-05-24T01:24:55.8813366' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11396, N'1332935435065918030', CAST(N'2023-05-24T01:24:55.9032769' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11397, N'1332935431586094030', CAST(N'2023-05-24T01:24:55.9162426' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11398, N'1332935435633554120', CAST(N'2023-05-24T01:24:59.9284345' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11399, N'1332935439262640060', CAST(N'2023-05-24T01:25:59.3717241' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11400, N'1332935443322960970', CAST(N'2023-05-24T01:26:24.6125761' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11401, N'1332935452442847290', CAST(N'2023-05-24T01:26:35.4344809' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11402, N'1332935443960555950', CAST(N'2023-05-24T01:27:08.9525757' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11403, N'1332935501699826200', CAST(N'2023-05-24T01:36:07.8217276' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11404, N'1332935523106614790', CAST(N'2023-05-24T01:37:28.5608220' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11405, N'1332935524728133460', CAST(N'2023-05-24T01:37:28.5817092' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11406, N'1332935505896969840', CAST(N'2023-05-24T01:37:28.6307110' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11407, N'1332935522949473420', CAST(N'2023-05-24T01:37:28.6446738' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11408, N'1332935518178293900', CAST(N'2023-05-24T01:37:28.6626256' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11409, N'1332935526277842310', CAST(N'2023-05-24T01:37:33.1523079' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11410, N'1332935512648568650', CAST(N'2023-05-24T01:38:12.5652912' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11411, N'1332935520501171750', CAST(N'2023-05-24T01:38:16.2501279' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11412, N'1332935530641365700', CAST(N'2023-05-24T01:38:52.2849322' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11413, N'1332935528834826320', CAST(N'2023-05-24T01:39:44.3730636' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11414, N'1332935544873200500', CAST(N'2023-05-24T01:41:04.5272060' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11415, N'1332935544902432600', CAST(N'2023-05-24T01:41:33.9470913' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11416, N'1332935543111176510', CAST(N'2023-05-24T01:41:33.9650759' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11417, N'1332935531201749960', CAST(N'2023-05-24T01:41:34.0289058' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11418, N'1332935545670546710', CAST(N'2023-05-24T01:41:34.0458605' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11419, N'1332935535305820620', CAST(N'2023-05-24T01:41:34.0629677' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11420, N'1332935544378129410', CAST(N'2023-05-24T01:41:40.2438356' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11421, N'1332935553657037460', CAST(N'2023-05-24T01:42:17.0205963' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11422, N'1332935551845003640', CAST(N'2023-05-24T01:42:25.1699204' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11423, N'1332935599606557900', CAST(N'2023-05-24T01:57:26.0682323' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11424, N'1332935599606557900', CAST(N'2023-05-24T01:57:26.0465339' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11425, N'1332935639437745420', CAST(N'2023-05-24T01:59:04.2081842' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11426, N'1332935643925533040', CAST(N'2023-05-24T01:59:11.6049798' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11427, N'1332935656326115500', CAST(N'2023-05-24T01:59:11.9466718' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11428, N'1332935655477568260', CAST(N'2023-05-24T01:59:12.0066720' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11429, N'1332935645894141810', CAST(N'2023-05-24T01:59:12.3037067' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11430, N'1332935655888645270', CAST(N'2023-05-24T01:59:12.4341079' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11431, N'1332935650544573780', CAST(N'2023-05-24T01:59:21.6289602' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11432, N'1332935650827460620', CAST(N'2023-05-24T01:59:48.8956214' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11433, N'1332935657197192630', CAST(N'2023-05-24T02:00:05.8069559' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11434, N'1332935672409506070', CAST(N'2023-05-24T02:07:09.9199188' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11435, N'1332935718393995450', CAST(N'2023-05-24T02:15:17.0775500' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11436, N'1332935741448259810', CAST(N'2023-05-24T02:18:54.9262787' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11437, N'1332935771681794370', CAST(N'2023-05-24T02:21:40.6278038' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11438, N'1332935765919584700', CAST(N'2023-05-24T02:21:40.6278038' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11439, N'1332940069823942220', CAST(N'2023-05-24T14:17:56.4937013' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11440, N'1332940081394793190', CAST(N'2023-05-24T14:18:43.6999901' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11441, N'1332940093458606730', CAST(N'2023-05-24T14:18:43.7119586' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11442, N'1332940074642624810', CAST(N'2023-05-24T14:18:43.7508547' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11443, N'1332940086748688840', CAST(N'2023-05-24T14:18:43.7518518' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11444, N'1332940093469203070', CAST(N'2023-05-24T14:18:43.7777821' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11445, N'1332940076331937680', CAST(N'2023-05-24T14:18:58.4533894' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11446, N'1332940084650830450', CAST(N'2023-05-24T14:18:58.5850374' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11447, N'1332940091035540120', CAST(N'2023-05-24T14:18:58.6239341' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11448, N'1332940088215438730', CAST(N'2023-05-24T14:18:58.7550710' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11449, N'1332940076515282580', CAST(N'2023-05-24T14:18:59.1066005' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11450, N'1332940096078279700', CAST(N'2023-05-24T14:19:22.0198003' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11451, N'1332940091880178660', CAST(N'2023-05-24T14:19:22.8938982' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11452, N'1332940096673206650', CAST(N'2023-05-24T14:20:55.2696232' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11453, N'1332940087571200480', CAST(N'2023-05-24T14:21:02.3729832' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11454, N'1332940101536878620', CAST(N'2023-05-24T14:21:02.4727180' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11455, N'1332940088933113370', CAST(N'2023-05-24T14:21:02.5116161' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11456, N'1332940090776155080', CAST(N'2023-05-24T14:21:02.5704556' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11457, N'1332940101891163490', CAST(N'2023-05-24T14:21:02.8185387' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11458, N'1332940102964142010', CAST(N'2023-05-24T14:21:31.9849278' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11459, N'1332940100799651150', CAST(N'2023-05-24T14:21:32.3808679' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11460, N'1332940103575602420', CAST(N'2023-05-24T14:21:38.4217442' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11461, N'1332940096995106110', CAST(N'2023-05-24T14:21:41.8372743' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11462, N'1332940095625575130', CAST(N'2023-05-24T14:21:49.5407236' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11463, N'1332940139997740160', CAST(N'2023-05-24T14:26:38.3766124' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11464, N'1332940126719647570', CAST(N'2023-05-24T14:26:47.3827268' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11465, N'1332940132250682370', CAST(N'2023-05-24T14:26:47.5083881' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11466, N'1332940128978202870', CAST(N'2023-05-24T14:26:47.5562602' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11467, N'1332940129966968800', CAST(N'2023-05-24T14:26:47.6250762' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11468, N'1332940125802527380', CAST(N'2023-05-24T14:26:47.8661153' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11469, N'1332940128271651630', CAST(N'2023-05-24T14:27:16.6277887' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11470, N'1332940124827472250', CAST(N'2023-05-24T14:27:17.0657571' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11471, N'1332940140127545510', CAST(N'2023-05-24T14:27:39.6094831' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11472, N'1332940132597238320', CAST(N'2023-05-24T14:27:45.7636973' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11473, N'1332940131594604390', CAST(N'2023-05-24T14:28:29.8936579' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11474, N'1332940140884820600', CAST(N'2023-05-24T14:28:46.7884316' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11475, N'1332940146302738740', CAST(N'2023-05-24T14:29:24.6835746' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11476, N'1332940158352349450', CAST(N'2023-05-24T14:29:44.8491683' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11477, N'1332940203598018090', CAST(N'2023-05-24T14:38:04.0361580' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11478, N'1332940292216988530', CAST(N'2023-05-24T14:54:16.6545962' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11479, N'1332940326088967020', CAST(N'2023-05-24T14:57:34.4036840' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11480, N'1332940317474230590', CAST(N'2023-05-24T14:57:39.1638133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11481, N'1332940307261656120', CAST(N'2023-05-24T14:57:39.3034384' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11482, N'1332940306944690830', CAST(N'2023-05-24T14:57:39.3857341' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11483, N'1332940321789597400', CAST(N'2023-05-24T14:57:39.4699953' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11484, N'1332940318442935740', CAST(N'2023-05-24T14:57:39.8092562' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11485, N'1332940323297207000', CAST(N'2023-05-24T14:59:33.6422187' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11486, N'1332940325964202240', CAST(N'2023-05-24T15:00:00.2364951' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11487, N'1332940339050110740', CAST(N'2023-05-24T15:00:02.3686811' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11488, N'1332940330544538890', CAST(N'2023-05-24T15:00:15.7788243' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11489, N'1332940332774986680', CAST(N'2023-05-24T15:01:46.2936395' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11490, N'1332940351771694680', CAST(N'2023-05-24T15:02:04.2940028' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11491, N'1332940351909444360', CAST(N'2023-05-24T15:03:05.1319226' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11492, N'1332940361383154800', CAST(N'2023-05-24T15:05:32.1584332' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11493, N'1332940391225693590', CAST(N'2023-05-24T15:09:06.4118078' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11494, N'1332940389171219230', CAST(N'2023-05-24T15:09:21.2440064' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11495, N'1332940385668877920', CAST(N'2023-05-24T15:09:21.6680452' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11496, N'1332940384855004740', CAST(N'2023-05-24T15:09:21.7473387' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11497, N'1332940381266711390', CAST(N'2023-05-24T15:09:21.9523784' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11498, N'1332940384796713620', CAST(N'2023-05-24T15:09:22.3681385' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11499, N'1332940399565921800', CAST(N'2023-05-24T15:09:54.9888190' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11500, N'1332940384595044640', CAST(N'2023-05-24T15:10:10.7587047' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11501, N'1332940402476778970', CAST(N'2023-05-24T15:10:11.8214745' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11502, N'1332940402330912540', CAST(N'2023-05-24T15:10:22.4016574' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11503, N'1332940399467930100', CAST(N'2023-05-24T15:10:47.2732795' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11504, N'1332940394354030140', CAST(N'2023-05-24T15:10:53.1836371' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11505, N'1332940405842131520', CAST(N'2023-05-24T15:10:55.1347952' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11506, N'1332940452517920290', CAST(N'2023-05-24T15:18:32.3606036' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11507, N'1332940440035927010', CAST(N'2023-05-24T15:18:41.2336101' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11508, N'1332940452576008090', CAST(N'2023-05-24T15:19:15.1602268' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11509, N'1332940451990349120', CAST(N'2023-05-24T15:19:23.4921635' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11510, N'1332940447511021960', CAST(N'2023-05-24T15:19:26.8611228' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11511, N'1332940460711317960', CAST(N'2023-05-24T15:19:54.0762025' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11512, N'1332941074971165900', CAST(N'2023-05-24T17:03:24.2656870' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11513, N'1332941080971278400', CAST(N'2023-05-24T17:03:49.6111660' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11514, N'1332941080980698580', CAST(N'2023-05-24T17:03:59.6623791' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11515, N'1332941074704877030', CAST(N'2023-05-24T17:04:02.3760612' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11516, N'1332941079374285950', CAST(N'2023-05-24T17:04:10.0849149' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11517, N'1332941075840093310', CAST(N'2023-05-24T17:04:16.6172137' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11518, N'1332941074714248740', CAST(N'2023-05-24T17:04:32.2744234' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11519, N'1332941091998931510', CAST(N'2023-05-24T17:05:19.7628237' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11520, N'1332941075626291860', CAST(N'2023-05-24T17:05:24.7975884' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11521, N'1332941092227756770', CAST(N'2023-05-24T17:05:31.3683201' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11522, N'1332941088019966230', CAST(N'2023-05-24T17:05:45.5459624' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11523, N'1332942825082456270', CAST(N'2023-05-24T21:57:20.9588611' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11524, N'1332942837071630140', CAST(N'2023-05-24T21:58:37.0258010' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11525, N'1332942841237922920', CAST(N'2023-05-24T21:58:37.0836466' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11526, N'1332942840926061630', CAST(N'2023-05-24T21:58:53.1162055' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11527, N'1332942855671401770', CAST(N'2023-05-24T22:00:53.0183725' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11528, N'1332942859310606530', CAST(N'2023-05-24T22:01:03.7496176' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11529, N'1332942847390806330', CAST(N'2023-05-24T22:01:03.7765429' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11530, N'1332942856002041520', CAST(N'2023-05-24T22:01:11.7585815' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11531, N'1332942859388791730', CAST(N'2023-05-24T22:02:30.5753035' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11532, N'1332942861658061490', CAST(N'2023-05-24T22:03:29.9692777' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11533, N'1332942879364119850', CAST(N'2023-05-24T22:03:29.9852330' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11534, N'1332942871244771260', CAST(N'2023-05-24T22:03:36.2057721' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11535, N'1332942892847625670', CAST(N'2023-05-24T22:07:03.1618741' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11536, N'1332942904222199110', CAST(N'2023-05-24T22:07:51.2640157' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11537, N'1332942896144949660', CAST(N'2023-05-24T22:07:51.3597607' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11538, N'1332942907213415090', CAST(N'2023-05-24T22:08:03.1099927' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11539, N'1332942934815804460', CAST(N'2023-05-24T22:14:46.8265243' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11540, N'1332942945068870240', CAST(N'2023-05-24T22:15:00.9340931' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11541, N'1332942949652308660', CAST(N'2023-05-24T22:15:00.9530428' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11542, N'1332942947268270610', CAST(N'2023-05-24T22:15:06.4712065' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11543, N'1332943289950966840', CAST(N'2023-05-24T23:12:16.9084581' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11544, N'1332943290391367510', CAST(N'2023-05-24T23:13:07.1127755' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11545, N'1332943296525403120', CAST(N'2023-05-24T23:13:07.1466848' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11546, N'1332943292836338990', CAST(N'2023-05-24T23:13:13.4723385' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11547, N'1332943302795174650', CAST(N'2023-05-24T23:17:00.5839131' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11548, N'1332943316873455150', CAST(N'2023-05-24T23:17:21.7250728' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11549, N'1332943308977612820', CAST(N'2023-05-24T23:17:21.7739427' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11550, N'1332943312973246480', CAST(N'2023-05-24T23:17:26.1747215' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11551, N'1332943360439575020', CAST(N'2023-05-24T23:25:32.9783389' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11552, N'1332943368463298010', CAST(N'2023-05-24T23:25:58.1879715' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11553, N'1332943357455232920', CAST(N'2023-05-24T23:25:58.2208823' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11554, N'1332943365026445690', CAST(N'2023-05-24T23:26:03.0445953' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11555, N'1332943384892876390', CAST(N'2023-05-24T23:30:14.6378950' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11556, N'1332943391543960090', CAST(N'2023-05-24T23:30:31.1594869' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11557, N'1332943397637306530', CAST(N'2023-05-24T23:30:31.1834242' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11558, N'1332943395021627040', CAST(N'2023-05-24T23:30:38.8168172' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11559, N'1332943409453122790', CAST(N'2023-05-24T23:33:51.5632515' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11560, N'1332943415766509400', CAST(N'2023-05-24T23:34:19.6421847' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11561, N'1332943410705895800', CAST(N'2023-05-24T23:34:19.6571451' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11562, N'1332943416837277130', CAST(N'2023-05-24T23:34:39.0553331' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11563, N'1332943432236709750', CAST(N'2023-05-24T23:38:35.2670684' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11564, N'1332943449699315820', CAST(N'2023-05-24T23:38:38.5484935' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11565, N'1332943436859430810', CAST(N'2023-05-24T23:38:38.5644507' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11566, N'1332943438403379290', CAST(N'2023-05-24T23:38:42.8617201' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11567, N'1332943457638361260', CAST(N'2023-05-24T23:41:51.5944907' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11568, N'1332943470107697280', CAST(N'2023-05-24T23:41:56.1870977' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11569, N'1332943466268294420', CAST(N'2023-05-24T23:41:56.2110329' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11570, N'1332943469798549260', CAST(N'2023-05-24T23:42:20.1957292' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11571, N'1332943485562234270', CAST(N'2023-05-24T23:44:46.6460339' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11572, N'1332943471926729650', CAST(N'2023-05-24T23:44:49.9715825' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11573, N'1332943477389990440', CAST(N'2023-05-24T23:44:49.9935252' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11574, N'1332943490588600740', CAST(N'2023-05-24T23:44:54.9103553' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11575, N'1332943483543829640', CAST(N'2023-05-24T23:47:05.6880209' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11576, N'1332943492352757290', CAST(N'2023-05-24T23:47:17.0137914' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11577, N'1332943496152051480', CAST(N'2023-05-24T23:47:17.1125286' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11578, N'1332943493496198100', CAST(N'2023-05-24T23:47:22.2380046' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11579, N'1332943520699943260', CAST(N'2023-05-24T23:50:26.7128974' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11580, N'1332943521834333630', CAST(N'2023-05-24T23:51:13.2685302' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11581, N'1332943517098400670', CAST(N'2023-05-24T23:51:13.2864821' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11582, N'1332943519575991970', CAST(N'2023-05-24T23:51:18.3067134' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11583, N'1332943529728935230', CAST(N'2023-05-24T23:53:05.7227824' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11584, N'1332943527950263160', CAST(N'2023-05-24T23:53:23.1401420' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11585, N'1332943525747332870', CAST(N'2023-05-24T23:53:23.1431342' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11586, N'1332943536027902370', CAST(N'2023-05-24T23:53:28.3745807' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11587, N'1332943559097794360', CAST(N'2023-05-24T23:59:23.4023857' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11588, N'1332943565240305070', CAST(N'2023-05-24T23:59:38.2225035' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11589, N'1332943562480475360', CAST(N'2023-05-24T23:59:38.2783533' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11590, N'1332943574289928670', CAST(N'2023-05-24T23:59:43.3790425' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11591, N'1332943599621135440', CAST(N'2023-05-25T00:03:23.5046283' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11592, N'1332943595624019900', CAST(N'2023-05-25T00:03:29.5801834' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11593, N'1332943581932463390', CAST(N'2023-05-25T00:03:29.6123293' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11594, N'1332943602100610510', CAST(N'2023-05-25T00:03:34.8462922' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11595, N'1332943611061811630', CAST(N'2023-05-25T00:06:33.1630813' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11596, N'1332943601448313410', CAST(N'2023-05-25T00:06:38.3906212' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11597, N'1332943603363185110', CAST(N'2023-05-25T00:06:38.4105673' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11598, N'1332943615960322350', CAST(N'2023-05-25T00:06:44.0600187' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11599, N'1332943668496597490', CAST(N'2023-05-25T00:17:44.4556995' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11600, N'1332943681930561300', CAST(N'2023-05-25T00:18:17.7720240' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11601, N'1332943683109940700', CAST(N'2023-05-25T00:18:17.8188989' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11602, N'1332943685943057650', CAST(N'2023-05-25T00:18:22.8728904' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11603, N'1332943712492303730', CAST(N'2023-05-25T00:25:08.2131823' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11604, N'1332943734667124730', CAST(N'2023-05-25T00:25:39.6052427' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11605, N'1332943715307905680', CAST(N'2023-05-25T00:25:39.6271843' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11606, N'1332943729019035280', CAST(N'2023-05-25T00:25:44.5739442' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11607, N'1332943846785321340', CAST(N'2023-05-25T00:44:58.4399605' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11608, N'1332943853278467300', CAST(N'2023-05-25T00:45:48.0216907' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11609, N'1332943849682911580', CAST(N'2023-05-25T00:45:48.1363841' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11610, N'1332943835765067280', CAST(N'2023-05-25T00:45:53.0531004' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11611, N'1332943891698606490', CAST(N'2023-05-25T00:52:26.0016175' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11612, N'1332943880504520780', CAST(N'2023-05-25T00:52:36.9836259' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11613, N'1332943881833368280', CAST(N'2023-05-25T00:52:37.1142760' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11614, N'1332943887520032720', CAST(N'2023-05-25T00:52:41.9611236' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11615, N'1332943921779778170', CAST(N'2023-05-25T00:57:39.5514704' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11616, N'1332949200197491220', CAST(N'2023-05-25T15:39:51.1558555' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11617, N'1332949204360276630', CAST(N'2023-05-25T15:40:12.4538566' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11618, N'1332949202939230620', CAST(N'2023-05-25T15:40:12.4777491' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11619, N'1332949212938719210', CAST(N'2023-05-25T15:40:20.3524088' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11620, N'1332949223353130290', CAST(N'2023-05-25T15:43:38.8909269' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11621, N'1332949226154604960', CAST(N'2023-05-25T15:43:44.6951789' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11622, N'1332949227797669730', CAST(N'2023-05-25T15:43:44.7121338' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11623, N'1332949229880047630', CAST(N'2023-05-25T15:43:49.5033401' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11624, N'1332949244778067750', CAST(N'2023-05-25T15:47:27.6566004' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11625, N'1332949252819149610', CAST(N'2023-05-25T15:48:02.5952459' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11626, N'1332949259533488450', CAST(N'2023-05-25T15:48:02.6122001' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11627, N'1332949263433138610', CAST(N'2023-05-25T15:48:08.1132019' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11628, N'1332949334739878930', CAST(N'2023-05-25T16:02:01.0541676' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11629, N'1332949336733419330', CAST(N'2023-05-25T16:02:08.0789082' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11630, N'1332949337047372780', CAST(N'2023-05-25T16:02:08.1390725' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11631, N'1332949337781114060', CAST(N'2023-05-25T16:02:25.7778761' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11632, N'1332949341182682280', CAST(N'2023-05-25T16:02:28.7593920' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11633, N'1332949338101196670', CAST(N'2023-05-25T16:02:28.7820739' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11634, N'1332949347769488060', CAST(N'2023-05-25T16:02:37.4861798' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11635, N'1332949353001440690', CAST(N'2023-05-25T16:04:31.4557941' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11636, N'1332949364864265670', CAST(N'2023-05-25T16:04:44.6897679' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11637, N'1332949364538735730', CAST(N'2023-05-25T16:04:44.7057269' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11638, N'1332949368107396130', CAST(N'2023-05-25T16:04:49.8896730' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11639, N'1332949367179885940', CAST(N'2023-05-25T16:05:35.2644809' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11640, N'1332949356583252680', CAST(N'2023-05-25T16:05:47.1589483' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11641, N'1332949370902709110', CAST(N'2023-05-25T16:05:47.1767439' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11642, N'1332949366522612340', CAST(N'2023-05-25T16:05:52.3293659' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11643, N'1332949382658787380', CAST(N'2023-05-25T16:07:34.3778511' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11644, N'1332949380982915110', CAST(N'2023-05-25T16:07:40.9769225' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11645, N'1332949369899926490', CAST(N'2023-05-25T16:07:41.0107409' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11646, N'1332949372430679650', CAST(N'2023-05-25T16:07:47.1285092' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11647, N'1332950063580332170', CAST(N'2023-05-25T18:02:31.3377857' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11648, N'1332950058853942470', CAST(N'2023-05-25T18:02:40.4692753' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11649, N'1332950061479354250', CAST(N'2023-05-25T18:02:40.6258550' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11650, N'1332950065469476310', CAST(N'2023-05-25T18:02:46.8748499' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11651, N'1332950178441405200', CAST(N'2023-05-25T18:21:22.6431624' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11652, N'1332950180946531900', CAST(N'2023-05-25T18:21:48.8897983' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11653, N'1332950176117605560', CAST(N'2023-05-25T18:21:48.9576173' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11654, N'1332950181340601710', CAST(N'2023-05-25T18:21:53.6913895' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11655, N'1332950180965830640', CAST(N'2023-05-25T18:22:44.5765759' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11656, N'1332950195147613300', CAST(N'2023-05-25T18:23:17.6212094' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11657, N'1332950188361655060', CAST(N'2023-05-25T18:23:17.6541232' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11658, N'1332950199850551070', CAST(N'2023-05-25T18:23:24.6342335' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11659, N'1332950204656475760', CAST(N'2023-05-25T18:25:42.1436972' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11660, N'1332950229081790230', CAST(N'2023-05-25T18:30:13.8777097' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11661, N'1332950229096851180', CAST(N'2023-05-25T18:30:13.9475141' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11662, N'1332950241143143790', CAST(N'2023-05-25T18:30:19.1011335' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11663, N'1332951250613322720', CAST(N'2023-05-25T21:20:08.1938361' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11664, N'1332951257180799320', CAST(N'2023-05-25T21:20:13.3804958' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11665, N'1332951253387751310', CAST(N'2023-05-25T21:20:13.4185013' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11666, N'1332951263237633120', CAST(N'2023-05-25T21:20:18.6374015' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11667, N'1332951285465273510', CAST(N'2023-05-25T21:26:35.6156504' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11668, N'1332951297141524940', CAST(N'2023-05-25T21:27:16.3530338' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11669, N'1332951290702732430', CAST(N'2023-05-25T21:27:16.5764362' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11670, N'1332951291175386140', CAST(N'2023-05-25T21:27:21.4237779' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11671, N'1332951468123013290', CAST(N'2023-05-25T21:56:05.4479859' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11672, N'1332951476884318020', CAST(N'2023-05-25T21:56:24.1860817' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11673, N'1332951477624304650', CAST(N'2023-05-25T21:56:31.7096420' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11674, N'1332951469292600110', CAST(N'2023-05-25T21:56:31.7754659' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11675, N'1332951461069994770', CAST(N'2023-05-25T21:56:39.9301647' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11676, N'1332951470179318810', CAST(N'2023-05-25T21:57:20.0757285' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11677, N'1332951467306977180', CAST(N'2023-05-25T21:57:29.4612115' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11678, N'1332951474857447350', CAST(N'2023-05-25T21:57:29.4801604' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11679, N'1332951479657310520', CAST(N'2023-05-25T21:57:43.2568969' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11680, N'1332951537462054570', CAST(N'2023-05-25T22:06:21.8130750' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11681, N'1332951539288132580', CAST(N'2023-05-25T22:06:24.8510414' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11682, N'1332951536349672570', CAST(N'2023-05-25T22:06:24.8749787' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11683, N'1332951532989469550', CAST(N'2023-05-25T22:06:30.7225788' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11684, N'1332951583408389530', CAST(N'2023-05-25T22:16:09.2668881' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11685, N'1332951592534559490', CAST(N'2023-05-25T22:16:17.6493516' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11686, N'1332951587339553540', CAST(N'2023-05-25T22:16:17.6772766' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11687, N'1332951580613176220', CAST(N'2023-05-25T22:16:24.6436079' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11688, N'1332951654516528770', CAST(N'2023-05-25T22:28:58.3910812' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11689, N'1332951665233107780', CAST(N'2023-05-25T22:29:22.3467518' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11690, N'1332951671472499300', CAST(N'2023-05-25T22:29:22.4604481' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11691, N'1332951669613250480', CAST(N'2023-05-25T22:29:27.2572255' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11692, N'1332951762643399020', CAST(N'2023-05-25T22:45:07.3533743' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11693, N'1332951766807883700', CAST(N'2023-05-25T22:45:16.6516813' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11694, N'1332951758651228190', CAST(N'2023-05-25T22:45:16.6646463' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11695, N'1332951761580976780', CAST(N'2023-05-25T22:45:21.4980050' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11696, N'1332951796831353510', CAST(N'2023-05-25T22:49:36.8702291' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11697, N'1332951799128773700', CAST(N'2023-05-25T22:49:45.4187311' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11698, N'1332951779415096780', CAST(N'2023-05-25T22:49:45.4915362' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11699, N'1332951794928016120', CAST(N'2023-05-25T22:49:51.8297401' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11700, N'1332951999726816570', CAST(N'2023-05-25T23:24:22.0878002' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11701, N'1332952006802042790', CAST(N'2023-05-25T23:24:27.6511026' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11702, N'1332951999512314730', CAST(N'2023-05-25T23:24:27.6909957' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11703, N'1332952003949239740', CAST(N'2023-05-25T23:24:35.3951607' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11704, N'1332952016566002900', CAST(N'2023-05-25T23:28:31.6635484' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11705, N'1332952097905490030', CAST(N'2023-05-25T23:41:02.2814952' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11706, N'1332952096476483090', CAST(N'2023-05-25T23:41:02.2964554' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11707, N'1332952093791849080', CAST(N'2023-05-25T23:41:07.5548451' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11708, N'1332952193168324920', CAST(N'2023-05-25T23:58:25.8470014' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11709, N'1332952198201439610', CAST(N'2023-05-25T23:59:17.2139841' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11710, N'1332952197306672470', CAST(N'2023-05-25T23:59:24.7394133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11711, N'1332952216213632090', CAST(N'2023-05-25T23:59:24.8032413' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11712, N'1332952217188389090', CAST(N'2023-05-25T23:59:32.7787906' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11713, N'1332952231551673250', CAST(N'2023-05-26T00:01:51.0245820' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11714, N'1332952214874708700', CAST(N'2023-05-26T00:01:59.9937168' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11715, N'1332952223004474470', CAST(N'2023-05-26T00:02:00.1283603' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11716, N'1332952213638485760', CAST(N'2023-05-26T00:02:07.1590053' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11717, N'1332952268514970270', CAST(N'2023-05-26T00:09:08.2790120' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11718, N'1332952267797708800', CAST(N'2023-05-26T00:09:11.8828973' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11719, N'1332952264229832310', CAST(N'2023-05-26T00:09:11.9467264' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11720, N'1332952257620089240', CAST(N'2023-05-26T00:09:16.5133841' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11721, N'1332952303176406930', CAST(N'2023-05-26T00:15:10.9323679' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11722, N'1332952306987950150', CAST(N'2023-05-26T00:15:14.6897523' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11723, N'1332952293373124810', CAST(N'2023-05-26T00:15:14.7166792' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11724, N'1332952309287074610', CAST(N'2023-05-26T00:15:20.5306475' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11725, N'1332952363881743870', CAST(N'2023-05-26T00:25:02.5501264' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11726, N'1332952363896456800', CAST(N'2023-05-26T00:25:08.3381303' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11727, N'1332952362154350330', CAST(N'2023-05-26T00:25:08.3660547' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11728, N'1332952364007084370', CAST(N'2023-05-26T00:25:12.7042930' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11729, N'1332952370430109800', CAST(N'2023-05-26T00:26:46.3964294' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11730, N'1332952380734192590', CAST(N'2023-05-26T00:26:57.1016447' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11731, N'1332952366000594420', CAST(N'2023-05-26T00:26:57.1245828' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11732, N'1332952381798632860', CAST(N'2023-05-26T00:27:01.7369805' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11733, N'1332952521899616710', CAST(N'2023-05-26T00:52:38.4063472' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11734, N'1332952536060787450', CAST(N'2023-05-26T00:52:43.0725831' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11735, N'1332952525101827560', CAST(N'2023-05-26T00:52:43.6450475' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11736, N'1332952530155308130', CAST(N'2023-05-26T00:52:48.3903453' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11737, N'1332952546987889210', CAST(N'2023-05-26T00:54:30.8724825' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11738, N'1332952537937699120', CAST(N'2023-05-26T00:55:03.8239677' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11739, N'1332952546206701940', CAST(N'2023-05-26T00:55:03.8818135' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11740, N'1332952544217171200', CAST(N'2023-05-26T00:55:13.5549233' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11741, N'1332952605862065180', CAST(N'2023-05-26T01:05:28.0802564' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11742, N'1332952604847871950', CAST(N'2023-05-26T01:05:41.6966178' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11743, N'1332952601162574680', CAST(N'2023-05-26T01:05:41.7736845' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11744, N'1332952615245237440', CAST(N'2023-05-26T01:05:47.2104596' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11745, N'1332952609396382480', CAST(N'2023-05-26T01:06:59.8609206' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11746, N'1332952612240256700', CAST(N'2023-05-26T01:07:24.1855199' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11747, N'1332952625195503930', CAST(N'2023-05-26T01:07:24.3431009' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11748, N'1332952606338140220', CAST(N'2023-05-26T01:07:29.2240354' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11749, N'1332952624445405070', CAST(N'2023-05-26T01:08:31.8374109' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11750, N'1332952634447217820', CAST(N'2023-05-26T01:09:19.2352831' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11751, N'1332952627790921220', CAST(N'2023-05-26T01:09:19.3905790' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11752, N'1332952627460012710', CAST(N'2023-05-26T01:09:25.2539954' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11753, N'1332952643737571230', CAST(N'2023-05-26T01:10:57.0773354' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11754, N'1332952646125358550', CAST(N'2023-05-26T01:11:08.0718695' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11755, N'1332952642868612830', CAST(N'2023-05-26T01:11:08.1182634' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11756, N'1332952635194140580', CAST(N'2023-05-26T01:11:14.7853700' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11757, N'1332952665645218400', CAST(N'2023-05-26T01:15:50.4599233' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11758, N'1332952672428807480', CAST(N'2023-05-26T01:15:56.4880396' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11759, N'1332952674546267400', CAST(N'2023-05-26T01:15:56.5617748' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11760, N'1332952664173624410', CAST(N'2023-05-26T01:16:06.9127168' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11761, N'1332952704389443750', CAST(N'2023-05-26T01:20:46.9725080' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11762, N'1332952694397623630', CAST(N'2023-05-26T01:20:54.5976733' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11763, N'1332952694833544680', CAST(N'2023-05-26T01:20:54.6385657' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11764, N'1332952706873261710', CAST(N'2023-05-26T01:20:58.8913959' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11765, N'1332952728618632310', CAST(N'2023-05-26T01:24:51.2030181' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11766, N'1332952718331719180', CAST(N'2023-05-26T01:25:25.8160542' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11767, N'1332952712582878820', CAST(N'2023-05-26T01:25:26.0393691' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11768, N'1332952729644518300', CAST(N'2023-05-26T01:25:30.3268939' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11769, N'1332952830339507910', CAST(N'2023-05-26T01:43:11.4928999' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11770, N'1332952828455219940', CAST(N'2023-05-26T01:43:51.4144955' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11771, N'1332952826064575130', CAST(N'2023-05-26T01:43:51.4792150' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11772, N'1332952839960520240', CAST(N'2023-05-26T01:43:58.4033997' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11773, N'1332952850660625200', CAST(N'2023-05-26T01:47:12.9821032' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11774, N'1332952853105805440', CAST(N'2023-05-26T01:47:19.7825529' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11775, N'1332952853442312590', CAST(N'2023-05-26T01:47:19.8015025' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11776, N'1332952850520931710', CAST(N'2023-05-26T01:47:24.6571469' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11777, N'1332952853817730050', CAST(N'2023-05-26T01:48:32.9217088' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11778, N'1332952870613548170', CAST(N'2023-05-26T01:48:54.1412337' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11779, N'1332952853434913370', CAST(N'2023-05-26T01:48:54.1560410' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11780, N'1332952861710750940', CAST(N'2023-05-26T01:48:58.7282189' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11781, N'1332957408088202080', CAST(N'2023-05-26T14:27:00.1221651' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11782, N'1332957412791469910', CAST(N'2023-05-26T14:27:05.4633225' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11783, N'1332957418366336180', CAST(N'2023-05-26T14:27:05.5042142' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11784, N'1332957412667111480', CAST(N'2023-05-26T14:27:10.8011968' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11785, N'1332957435419885850', CAST(N'2023-05-26T14:30:26.8127558' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11786, N'1332957443427827490', CAST(N'2023-05-26T14:30:50.1116753' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11787, N'1332957436929406610', CAST(N'2023-05-26T14:30:50.1246398' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11788, N'1332957438319556420', CAST(N'2023-05-26T14:30:56.6544425' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11789, N'1332957468660940390', CAST(N'2023-05-26T14:34:52.3799791' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11790, N'1332957464458162080', CAST(N'2023-05-26T14:34:55.8777317' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11791, N'1332957453961987680', CAST(N'2023-05-26T14:34:55.8946854' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11792, N'1332957470016625380', CAST(N'2023-05-26T14:35:02.4323791' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11793, N'1332957495830393280', CAST(N'2023-05-26T14:40:48.4688533' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11794, N'1332957503906991040', CAST(N'2023-05-26T14:41:03.7499707' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11795, N'1332957499194725500', CAST(N'2023-05-26T14:41:03.7719142' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11796, N'1332957491583132130', CAST(N'2023-05-26T14:41:08.4363542' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11797, N'1332957537722860370', CAST(N'2023-05-26T14:47:00.1650133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11798, N'1332957547172333580', CAST(N'2023-05-26T14:47:37.9472937' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11799, N'1332957526764144060', CAST(N'2023-05-26T14:47:37.9612582' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11800, N'1332957534821415660', CAST(N'2023-05-26T14:47:43.0071343' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11801, N'1332957560369467110', CAST(N'2023-05-26T14:51:55.9291647' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11802, N'1332957567872739050', CAST(N'2023-05-26T14:51:59.0370784' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11803, N'1332957553634272230', CAST(N'2023-05-26T14:51:59.0570219' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11804, N'1332957560406873920', CAST(N'2023-05-26T14:52:03.1391105' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11805, N'1332957566866978460', CAST(N'2023-05-26T14:53:47.2364587' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11806, N'1332957566294093790', CAST(N'2023-05-26T14:54:08.4411277' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11807, N'1332957572169022350', CAST(N'2023-05-26T14:54:08.5498351' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11808, N'1332957567071355580', CAST(N'2023-05-26T14:54:12.5463651' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11809, N'1332957604118428360', CAST(N'2023-05-26T14:59:59.1296847' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11810, N'1332957604414292050', CAST(N'2023-05-26T15:00:26.1387143' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11811, N'1332957610762860490', CAST(N'2023-05-26T15:00:26.1995520' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11812, N'1332957605968914730', CAST(N'2023-05-26T15:00:31.0639842' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11813, N'1332957636058637780', CAST(N'2023-05-26T15:03:15.8494380' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11814, N'1332957629056392330', CAST(N'2023-05-26T15:03:27.0519979' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11815, N'1332957633672254250', CAST(N'2023-05-26T15:03:27.0739448' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11816, N'1332957626762939310', CAST(N'2023-05-26T15:03:31.0792913' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11817, N'1332957665994690960', CAST(N'2023-05-26T15:08:09.2953518' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11818, N'1332957655798365260', CAST(N'2023-05-26T15:08:13.0063442' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11819, N'1332957652812229890', CAST(N'2023-05-26T15:08:13.0422340' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11820, N'1332957666644918140', CAST(N'2023-05-26T15:08:17.6510012' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11821, N'1332957675475709940', CAST(N'2023-05-26T15:11:44.4222448' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11822, N'1332957691143918570', CAST(N'2023-05-26T15:12:08.4861286' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11823, N'1332957687145095060', CAST(N'2023-05-26T15:12:08.5170470' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11824, N'1332957686474154970', CAST(N'2023-05-26T15:12:13.6810523' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11825, N'1332957687277980400', CAST(N'2023-05-26T15:13:48.0068127' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11826, N'1332957706632454050', CAST(N'2023-05-26T15:15:13.2276107' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11827, N'1332957707321687230', CAST(N'2023-05-26T15:15:13.4350560' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11828, N'1332957695802129120', CAST(N'2023-05-26T15:15:18.0452732' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11829, N'1332958075080395100', CAST(N'2023-05-26T16:18:00.2394231' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11830, N'1332958092448816380', CAST(N'2023-05-26T16:19:42.4040210' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11831, N'1332958097307170310', CAST(N'2023-05-26T16:19:42.7610626' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11832, N'1332958096723553610', CAST(N'2023-05-26T16:19:48.0716895' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11833, N'1332958102150522730', CAST(N'2023-05-26T16:20:45.9018327' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11834, N'1332958091638544330', CAST(N'2023-05-26T16:21:47.3717999' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11835, N'1332958093272019890', CAST(N'2023-05-26T16:21:47.4597978' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11836, N'1332958095527354000', CAST(N'2023-05-26T16:21:52.1265222' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11837, N'1332958103524151850', CAST(N'2023-05-26T16:22:34.3980455' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11838, N'1332958105921957830', CAST(N'2023-05-26T16:23:31.8484180' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11839, N'1332958109633490120', CAST(N'2023-05-26T16:23:32.0067584' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11840, N'1332958113095482650', CAST(N'2023-05-26T16:23:42.9877438' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11841, N'1332958121841200350', CAST(N'2023-05-26T16:24:26.5376649' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11842, N'1332958120646830160', CAST(N'2023-05-26T16:25:14.4332994' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11843, N'1332958125935143740', CAST(N'2023-05-26T16:25:14.4702000' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11844, N'1332958121077791880', CAST(N'2023-05-26T16:25:18.2720245' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11845, N'1332958139541109480', CAST(N'2023-05-26T16:27:03.5106855' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11846, N'1332958126499688410', CAST(N'2023-05-26T16:27:09.3204797' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11847, N'1332958131664100390', CAST(N'2023-05-26T16:27:09.4076302' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11848, N'1332958140100797300', CAST(N'2023-05-26T16:27:15.5312618' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11849, N'1332958155379519010', CAST(N'2023-05-26T16:29:02.5418027' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11850, N'1332958156683114820', CAST(N'2023-05-26T16:29:26.6504244' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11851, N'1332958152545038740', CAST(N'2023-05-26T16:29:26.7401856' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11852, N'1332958141595877130', CAST(N'2023-05-26T16:29:30.8243762' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11853, N'1332960310801193150', CAST(N'2023-05-26T22:32:04.7468492' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11854, N'1332960316608454240', CAST(N'2023-05-26T22:32:11.3990041' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11855, N'1332960316633458170', CAST(N'2023-05-26T22:32:11.4179525' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11856, N'1332960514868495390', CAST(N'2023-05-26T23:05:53.0353541' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11857, N'1332960524122491310', CAST(N'2023-05-26T23:06:10.9484534' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11858, N'1332960524410312250', CAST(N'2023-05-26T23:06:11.0262458' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11859, N'1332960530005222330', CAST(N'2023-05-26T23:06:16.8754230' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11860, N'1332960559916154060', CAST(N'2023-05-26T23:10:12.4361620' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11861, N'1332960551478399120', CAST(N'2023-05-26T23:10:15.6111198' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11862, N'1332960549039215960', CAST(N'2023-05-26T23:10:15.6510130' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11863, N'1332960556829032640', CAST(N'2023-05-26T23:10:20.9924797' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11864, N'1332960805370320040', CAST(N'2023-05-26T23:53:12.7932786' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11865, N'1332960799808967090', CAST(N'2023-05-26T23:53:16.6915897' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11866, N'1332960808178381130', CAST(N'2023-05-26T23:53:16.7165225' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11867, N'1332960818038035360', CAST(N'2023-05-26T23:53:21.1346523' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11868, N'1332960842580380220', CAST(N'2023-05-26T23:58:17.6192003' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11869, N'1332960840882458500', CAST(N'2023-05-26T23:58:22.2730128' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11870, N'1332960837255156380', CAST(N'2023-05-26T23:58:22.3039299' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11871, N'1332960849174270050', CAST(N'2023-05-26T23:58:27.0027264' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11872, N'1332960888510496130', CAST(N'2023-05-27T00:07:09.1503308' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11873, N'1332960889842499840', CAST(N'2023-05-27T00:07:14.1953852' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11874, N'1332960885715632540', CAST(N'2023-05-27T00:07:14.2233104' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11875, N'1332960895598402210', CAST(N'2023-05-27T00:07:19.0695131' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11876, N'1332960910427003100', CAST(N'2023-05-27T00:09:08.7325421' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11877, N'1332960909875173780', CAST(N'2023-05-27T00:09:13.5438183' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11878, N'1332960896905853810', CAST(N'2023-05-27T00:09:13.5667561' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11879, N'1332960899669613650', CAST(N'2023-05-27T00:09:23.6861397' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11880, N'1332961669603905920', CAST(N'2023-05-27T02:15:55.3556096' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11881, N'1332961673361911810', CAST(N'2023-05-27T02:16:01.1441647' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11882, N'1332961675079502130', CAST(N'2023-05-27T02:16:01.1661055' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11883, N'1332961665005179810', CAST(N'2023-05-27T02:16:07.4029596' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11884, N'1332961670022609990', CAST(N'2023-05-27T02:17:45.6251798' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11885, N'1332961694676607920', CAST(N'2023-05-27T02:20:03.9673479' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11886, N'1332961698832592620', CAST(N'2023-05-27T02:20:04.0082386' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11887, N'1332961685820755180', CAST(N'2023-05-27T02:20:08.7182907' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11888, N'1332961732153828440', CAST(N'2023-05-27T02:27:43.6256155' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11889, N'1332961826424736590', CAST(N'2023-05-27T02:43:26.2206457' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11890, N'1332961841920775680', CAST(N'2023-05-27T02:45:05.1298967' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11891, N'1332961849717981770', CAST(N'2023-05-27T02:45:05.1827531' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11892, N'1332961841926207710', CAST(N'2023-05-27T02:45:09.3133073' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11893, N'1332961848226275310', CAST(N'2023-05-27T02:46:48.2522994' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11894, N'1332961846770132380', CAST(N'2023-05-27T02:47:33.1877221' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11895, N'1332961850413135040', CAST(N'2023-05-27T02:47:33.1986932' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11896, N'1332961853831721110', CAST(N'2023-05-27T02:47:37.4666776' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11897, N'1332961864666924200', CAST(N'2023-05-27T02:49:47.4888917' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11898, N'1332961868804641450', CAST(N'2023-05-27T02:49:58.3195907' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11899, N'1332961863419945530', CAST(N'2023-05-27T02:49:58.3066251' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11900, N'1332961865245747490', CAST(N'2023-05-27T02:50:02.4767633' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11901, N'1332961873640705090', CAST(N'2023-05-27T02:51:44.8622136' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11902, N'1332961875344610620', CAST(N'2023-05-27T02:51:54.9033019' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11903, N'1332961885087932570', CAST(N'2023-05-27T02:51:55.0060271' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11904, N'1332961883294983920', CAST(N'2023-05-27T02:52:00.2089193' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11905, N'1332961897719291010', CAST(N'2023-05-27T02:53:12.5487075' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11906, N'1332961881524050950', CAST(N'2023-05-27T02:53:17.6044555' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11907, N'1332961882433953970', CAST(N'2023-05-27T02:53:17.6573126' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11908, N'1332961882045029490', CAST(N'2023-05-27T02:53:23.6004673' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11909, N'1332961911357654480', CAST(N'2023-05-27T02:55:02.5072835' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11910, N'1332961894804821120', CAST(N'2023-05-27T02:55:26.6963171' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11911, N'1332961911884964810', CAST(N'2023-05-27T02:55:39.1171491' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11912, N'1332961895598421330', CAST(N'2023-05-27T02:55:39.2438095' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11913, N'1332961902556353580', CAST(N'2023-05-27T02:55:44.6328088' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11914, N'1332961906550314000', CAST(N'2023-05-27T02:57:41.3061827' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11915, N'1332961919610639890', CAST(N'2023-05-27T02:57:52.1455022' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11916, N'1332961916129727410', CAST(N'2023-05-27T02:57:52.1674445' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11917, N'1332961926490094850', CAST(N'2023-05-27T02:57:56.9013458' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11918, N'1332962012425269400', CAST(N'2023-05-27T03:13:01.4764334' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11919, N'1332962019298571350', CAST(N'2023-05-27T03:13:09.6556234' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11920, N'1332962012591373340', CAST(N'2023-05-27T03:13:09.6865403' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11921, N'1332962007683694750', CAST(N'2023-05-27T03:13:15.0426393' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11922, N'1332962030924269650', CAST(N'2023-05-27T03:16:55.5128979' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11923, N'1332962034569557090', CAST(N'2023-05-27T03:17:04.7343481' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11924, N'1332962030794035520', CAST(N'2023-05-27T03:17:04.7812230' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11925, N'1332962043791906450', CAST(N'2023-05-27T03:17:09.1219835' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11926, N'1332962078379171720', CAST(N'2023-05-27T03:23:51.1999660' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11927, N'1332962071812904380', CAST(N'2023-05-27T03:24:25.9720493' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11928, N'1332962080892064160', CAST(N'2023-05-27T03:24:26.0139374' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11929, N'1332962087688749620', CAST(N'2023-05-27T03:24:33.9920434' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11930, N'1332962081163307410', CAST(N'2023-05-27T03:24:36.3265448' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11931, N'1332962073385932200', CAST(N'2023-05-27T03:24:48.2046590' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11932, N'1332962082089042420', CAST(N'2023-05-27T03:25:26.3004239' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11933, N'1332966422263198300', CAST(N'2023-05-27T15:30:44.5019808' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11934, N'1332966449678863490', CAST(N'2023-05-27T15:31:43.5505525' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11935, N'1332966431880992530', CAST(N'2023-05-27T15:31:43.5695024' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11936, N'1332966447284434000', CAST(N'2023-05-27T15:32:34.3431883' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11937, N'1332966496975007550', CAST(N'2023-05-27T15:42:18.6117139' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11938, N'1332966501385035200', CAST(N'2023-05-27T15:42:21.5775624' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11939, N'1332966505855141130', CAST(N'2023-05-27T15:42:21.5975096' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11940, N'1332966505476338540', CAST(N'2023-05-27T15:42:26.7510207' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11941, N'1332966576664254010', CAST(N'2023-05-27T15:55:28.5956764' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11942, N'1332966595191336010', CAST(N'2023-05-27T15:55:38.2163594' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11943, N'1332966576535890380', CAST(N'2023-05-27T15:55:38.2432864' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11944, N'1332966588087317790', CAST(N'2023-05-27T15:55:42.9371393' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11945, N'1332966610170838270', CAST(N'2023-05-27T15:58:44.1111780' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11946, N'1332966608548396520', CAST(N'2023-05-27T15:59:24.9333393' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11947, N'1332966601569875450', CAST(N'2023-05-27T15:59:24.9612639' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11948, N'1332966606316980970', CAST(N'2023-05-27T15:59:29.0764602' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11949, N'1332966677351872750', CAST(N'2023-05-27T16:10:53.4005365' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11950, N'1332966673621914400', CAST(N'2023-05-27T16:11:19.1761432' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11951, N'1332966688283903240', CAST(N'2023-05-27T16:11:19.2031170' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11952, N'1332966671298934790', CAST(N'2023-05-27T16:11:25.2947577' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11953, N'1332966796445497330', CAST(N'2023-05-27T16:29:31.1743486' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11954, N'1332966781673539060', CAST(N'2023-05-27T16:29:47.7936108' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11955, N'1332966798585126230', CAST(N'2023-05-27T16:29:47.8464678' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11956, N'1332966800733103360', CAST(N'2023-05-27T16:30:07.0274257' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11957, N'1332966794312594310', CAST(N'2023-05-27T16:30:52.9471347' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11958, N'1332966790716633000', CAST(N'2023-05-27T16:30:59.8838249' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11959, N'1332966800365115050', CAST(N'2023-05-27T16:30:59.9117496' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11960, N'1332966791824124920', CAST(N'2023-05-27T16:31:05.8843074' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11961, N'1332966869715021940', CAST(N'2023-05-27T16:44:39.6201913' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11962, N'1332966885302910120', CAST(N'2023-05-27T16:44:44.2334341' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11963, N'1332966870610798650', CAST(N'2023-05-27T16:44:44.3562158' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11964, N'1332966884141133210', CAST(N'2023-05-27T16:44:49.3992139' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11965, N'1332966967487245290', CAST(N'2023-05-27T16:57:48.6288028' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11966, N'1332966954465472420', CAST(N'2023-05-27T16:58:20.3817739' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11967, N'1332966969701001150', CAST(N'2023-05-27T16:58:20.4357545' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11968, N'1332966956194936970', CAST(N'2023-05-27T16:58:24.7513243' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11969, N'1332967003221911480', CAST(N'2023-05-27T17:05:04.1471461' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11970, N'1332966996643300560', CAST(N'2023-05-27T17:05:07.8417027' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11971, N'1332966996450988270', CAST(N'2023-05-27T17:05:07.8796016' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11972, N'1332967000008124630', CAST(N'2023-05-27T17:05:12.7580943' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11973, N'1332967042951903910', CAST(N'2023-05-27T17:12:28.4812853' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11974, N'1332967049613303110', CAST(N'2023-05-27T17:12:32.6199184' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11975, N'1332967039676672770', CAST(N'2023-05-27T17:12:32.6488424' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11976, N'1332967055665685370', CAST(N'2023-05-27T17:12:37.5321474' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11977, N'1332967140176564350', CAST(N'2023-05-27T17:28:04.7554040' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11978, N'1332967131476721560', CAST(N'2023-05-27T17:28:07.9016106' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11979, N'1332967141682724300', CAST(N'2023-05-27T17:28:07.9215560' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11980, N'1332967136833838610', CAST(N'2023-05-27T17:28:13.2524671' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11981, N'1332967179661449100', CAST(N'2023-05-27T17:34:39.8470770' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11982, N'1332967488402296540', CAST(N'2023-05-27T18:27:05.2127917' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11983, N'1332967502719598990', CAST(N'2023-05-27T18:27:05.2127917' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11984, N'1332967499031283650', CAST(N'2023-05-27T18:27:05.2127917' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11985, N'1332967490141317100', CAST(N'2023-05-27T18:27:05.2257597' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11986, N'1332967498250024180', CAST(N'2023-05-27T18:27:05.2127917' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11987, N'1332967493891392190', CAST(N'2023-05-27T18:27:07.0904971' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11988, N'1332967497381181670', CAST(N'2023-05-27T18:27:07.1105162' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11989, N'1332967489555991970', CAST(N'2023-05-27T18:27:07.1190079' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11990, N'1332967489847557860', CAST(N'2023-05-27T18:27:07.1160151' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11991, N'1332967503300960590', CAST(N'2023-05-27T18:27:42.2504532' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11992, N'1332967520640072590', CAST(N'2023-05-27T18:31:53.8848167' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11993, N'1332967820712507240', CAST(N'2023-05-27T19:21:03.5519846' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11994, N'1332970413217939190', CAST(N'2023-05-28T02:35:15.7465369' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11995, N'1332970425440907210', CAST(N'2023-05-28T02:35:20.8067151' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11996, N'1332970427108809770', CAST(N'2023-05-28T02:35:20.8515948' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11997, N'1332970417546523520', CAST(N'2023-05-28T02:35:20.8934827' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11998, N'1332970429539497210', CAST(N'2023-05-28T02:35:20.9154235' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (11999, N'1332970428246910160', CAST(N'2023-05-28T02:35:20.9294320' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12000, N'1332970449901802490', CAST(N'2023-05-28T02:39:39.8084920' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12001, N'1332974897352174730', CAST(N'2023-05-28T15:01:19.6169844' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12002, N'1332974890099298420', CAST(N'2023-05-28T15:01:24.5663546' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12003, N'1332974889124540260', CAST(N'2023-05-28T15:01:24.6002633' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12004, N'1332974903275369540', CAST(N'2023-05-28T15:01:24.6630954' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12005, N'1332974888525252220', CAST(N'2023-05-28T15:01:24.6830424' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12006, N'1332974909635864630', CAST(N'2023-05-28T15:01:24.7159555' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12007, N'1332974939117092140', CAST(N'2023-05-28T15:07:51.4679539' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12008, N'1332974945452860780', CAST(N'2023-05-28T15:08:01.4968773' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12009, N'1332974929930521060', CAST(N'2023-05-28T15:08:01.5150693' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12010, N'1332974936776356950', CAST(N'2023-05-28T15:08:01.5419975' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12011, N'1332974933027287530', CAST(N'2023-05-28T15:08:01.5529674' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12012, N'1332974931013698090', CAST(N'2023-05-28T15:08:01.5739118' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12013, N'1332974955953933060', CAST(N'2023-05-28T15:09:19.1454395' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12014, N'1332974939992597350', CAST(N'2023-05-28T15:09:42.7353752' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12015, N'1332974941097747690', CAST(N'2023-05-28T15:09:42.7542926' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12016, N'1332974939361908940', CAST(N'2023-05-28T15:09:42.7682461' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12017, N'1332974945158482550', CAST(N'2023-05-28T15:09:42.7871953' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12018, N'1332974954145040740', CAST(N'2023-05-28T15:09:42.8191111' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12019, N'1332974959141621230', CAST(N'2023-05-28T15:12:09.4585260' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12020, N'1332974972260574060', CAST(N'2023-05-28T15:12:28.8611171' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12021, N'1332974976027238710', CAST(N'2023-05-28T15:12:28.8810638' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12022, N'1332974969441766660', CAST(N'2023-05-28T15:12:28.9189635' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12023, N'1332974966654192240', CAST(N'2023-05-28T15:12:28.9428982' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12024, N'1332974971370199000', CAST(N'2023-05-28T15:12:28.9618483' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12025, N'1332974968226559980', CAST(N'2023-05-28T15:13:05.8408448' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12026, N'1332974981053832590', CAST(N'2023-05-28T15:13:43.0128508' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12027, N'1332974974800847080', CAST(N'2023-05-28T15:13:48.1314469' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12028, N'1332974969926094630', CAST(N'2023-05-28T15:14:12.7515162' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12029, N'1332975305400950590', CAST(N'2023-05-28T16:09:03.5022600' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12030, N'1332975310912025470', CAST(N'2023-05-28T16:11:38.8835749' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12031, N'1332975323626844800', CAST(N'2023-05-28T16:11:38.8955404' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12032, N'1332975330538987740', CAST(N'2023-05-28T16:11:38.9214714' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12033, N'1332975310236043150', CAST(N'2023-05-28T16:11:38.9424160' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12034, N'1332975320381402770', CAST(N'2023-05-28T16:11:38.9743299' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12035, N'1332975331685005400', CAST(N'2023-05-28T16:14:21.5347226' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12036, N'1332975429710255500', CAST(N'2023-05-28T16:30:08.5244572' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12037, N'1332975437847578070', CAST(N'2023-05-28T16:30:08.5394193' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12038, N'1332975421160803150', CAST(N'2023-05-28T16:30:08.5633537' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12039, N'1332975440030419240', CAST(N'2023-05-28T16:30:08.5793116' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12040, N'1332975423961351520', CAST(N'2023-05-28T16:30:08.9110786' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12041, N'1332975600182006960', CAST(N'2023-05-28T16:58:54.0434656' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12042, N'1332975611284146590', CAST(N'2023-05-28T16:59:03.8862020' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12043, N'1332975614354361730', CAST(N'2023-05-28T16:59:03.9201467' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12044, N'1332975608106422460', CAST(N'2023-05-28T16:59:03.9530243' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12045, N'1332975602895820650', CAST(N'2023-05-28T16:59:03.9989015' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12046, N'1332975601609672020', CAST(N'2023-05-28T16:59:04.0258294' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12047, N'1332975850097728940', CAST(N'2023-05-28T17:42:24.2689170' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12048, N'1332975863797761150', CAST(N'2023-05-28T17:42:34.2318520' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12049, N'1332975869524671930', CAST(N'2023-05-28T17:42:34.2368374' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12050, N'1332975862621854380', CAST(N'2023-05-28T17:42:34.2557867' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12051, N'1332975876868560750', CAST(N'2023-05-28T17:42:34.2817176' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12052, N'1332975861519399450', CAST(N'2023-05-28T17:42:34.3166238' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12053, N'1332975862489268090', CAST(N'2023-05-28T17:42:36.6547015' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12054, N'1332976008316086520', CAST(N'2023-05-28T18:04:55.6207311' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12055, N'1332975996833907230', CAST(N'2023-05-28T18:04:56.1333587' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12056, N'1332976003342950300', CAST(N'2023-05-28T18:04:56.2540371' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12057, N'1332976000321900650', CAST(N'2023-05-28T18:04:56.5811632' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12058, N'1332975997871967080', CAST(N'2023-05-28T18:04:57.1054178' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12059, N'1332975999858164540', CAST(N'2023-05-28T18:05:17.3809097' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12060, N'1332976007448509760', CAST(N'2023-05-28T18:05:26.2530941' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12061, N'1332976032376328200', CAST(N'2023-05-28T18:10:42.5870604' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12062, N'1332976061527995060', CAST(N'2023-05-28T18:16:01.9491063' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12063, N'1332976167484126810', CAST(N'2023-05-28T18:32:14.0352340' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12064, N'1332976164649703520', CAST(N'2023-05-28T18:33:22.4124260' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12065, N'1332976178859893270', CAST(N'2023-05-28T18:33:22.5829698' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12066, N'1332976192055490030', CAST(N'2023-05-28T18:36:56.6874739' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12067, N'1332976200535805490', CAST(N'2023-05-28T18:37:37.5501471' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12068, N'1332976204156188670', CAST(N'2023-05-28T18:37:37.6857835' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12069, N'1332976226084025750', CAST(N'2023-05-28T18:43:17.9529984' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12070, N'1332976225440507650', CAST(N'2023-05-28T18:43:25.2784484' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12071, N'1332976235823845320', CAST(N'2023-05-28T18:43:25.3143526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12072, N'1332978044710741660', CAST(N'2023-05-28T23:46:38.1942966' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12073, N'1332978041127392080', CAST(N'2023-05-28T23:46:46.5515045' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12074, N'1332978043233168750', CAST(N'2023-05-28T23:46:46.5754342' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12075, N'1332978051912928930', CAST(N'2023-05-28T23:46:46.6093435' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12076, N'1332978048488859840', CAST(N'2023-05-28T23:46:46.6253005' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12077, N'1332978060764816040', CAST(N'2023-05-28T23:46:46.6422545' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12078, N'1332978049798520530', CAST(N'2023-05-28T23:46:50.9085699' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12079, N'1332978048833771810', CAST(N'2023-05-28T23:46:57.2088134' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12080, N'1332978063812689430', CAST(N'2023-05-28T23:47:22.7450538' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12081, N'1332978049122974310', CAST(N'2023-05-28T23:47:57.0064069' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12082, N'1332978063960144930', CAST(N'2023-05-28T23:48:07.5695915' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12083, N'1332978065492451810', CAST(N'2023-05-28T23:48:14.7236921' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12084, N'1332978294578213520', CAST(N'2023-05-29T00:29:34.1425081' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12085, N'1332978339699764230', CAST(N'2023-05-29T00:34:29.6622419' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12086, N'1332978343128217060', CAST(N'2023-05-29T00:34:29.7749407' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12087, N'1332978335346085210', CAST(N'2023-05-29T00:34:29.8048602' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12088, N'1332978346366115920', CAST(N'2023-05-29T00:34:29.8557241' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12089, N'1332978332539868520', CAST(N'2023-05-29T00:34:29.9045933' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12090, N'1332978331293142400', CAST(N'2023-05-29T00:34:34.2617821' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12091, N'1332978365146186780', CAST(N'2023-05-29T00:38:11.2135518' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12092, N'1332978373238881700', CAST(N'2023-05-29T00:41:02.1340075' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12093, N'1332978373140899540', CAST(N'2023-05-29T00:41:22.6258213' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12094, N'1332978378680721370', CAST(N'2023-05-29T00:41:22.6427769' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12095, N'1332978387842638670', CAST(N'2023-05-29T00:41:22.6607287' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12096, N'1332978383230171650', CAST(N'2023-05-29T00:41:22.6866588' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12097, N'1332978389694038670', CAST(N'2023-05-29T00:41:22.7125890' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12098, N'1332978442551662020', CAST(N'2023-05-29T00:50:35.3236120' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12099, N'1332978438797376060', CAST(N'2023-05-29T00:51:02.8505324' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12100, N'1332978431566531930', CAST(N'2023-05-29T00:51:29.6215286' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12101, N'1332978430756286440', CAST(N'2023-05-29T00:51:29.6444668' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12102, N'1332978443950681370', CAST(N'2023-05-29T00:51:29.6554363' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12103, N'1332978437611831150', CAST(N'2023-05-29T00:51:29.6833639' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12104, N'1332978441791492870', CAST(N'2023-05-29T00:51:29.6993195' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12105, N'1332978446646985860', CAST(N'2023-05-29T00:51:36.3635009' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12106, N'1332978444410541530', CAST(N'2023-05-29T00:52:11.2005182' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12107, N'1332978504356762000', CAST(N'2023-05-29T01:02:25.5586914' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12108, N'1332978508751452380', CAST(N'2023-05-29T01:02:55.2103719' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12109, N'1332978503574850600', CAST(N'2023-05-29T01:02:56.6182419' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12110, N'1332978499841612800', CAST(N'2023-05-29T01:02:56.6461672' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12111, N'1332978505688164160', CAST(N'2023-05-29T01:02:56.6711002' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12112, N'1332978498232098100', CAST(N'2023-05-29T01:02:56.6806780' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12113, N'1332978514064608770', CAST(N'2023-05-29T01:03:01.4624879' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12114, N'1332978501397991770', CAST(N'2023-05-29T01:03:25.3374542' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12115, N'1332978509666969600', CAST(N'2023-05-29T01:03:36.3770216' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12116, N'1332978529837437020', CAST(N'2023-05-29T01:07:42.9880480' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12117, N'1332978529015114510', CAST(N'2023-05-29T01:07:49.3510730' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12118, N'1332978540429436110', CAST(N'2023-05-29T01:07:49.3959526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12119, N'1332978590636545670', CAST(N'2023-05-29T01:16:47.0744256' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12120, N'1332978593229230200', CAST(N'2023-05-29T01:16:51.5879397' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12121, N'1332978585643875380', CAST(N'2023-05-29T01:16:51.7863226' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12122, N'1332978585432812270', CAST(N'2023-05-29T01:16:51.8182507' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12123, N'1332978600538750310', CAST(N'2023-05-29T01:16:51.8563525' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12124, N'1332978589352099280', CAST(N'2023-05-29T01:16:51.8611223' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12125, N'1332978595782357060', CAST(N'2023-05-29T01:18:29.9918105' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12126, N'1332983299414858790', CAST(N'2023-05-29T14:22:26.1416469' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12127, N'1332983688886269950', CAST(N'2023-05-29T15:26:03.8994722' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12128, N'1332983702352123950', CAST(N'2023-05-29T15:28:07.9807707' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12129, N'1332983704114137400', CAST(N'2023-05-29T15:28:08.5153412' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12130, N'1332983713734827160', CAST(N'2023-05-29T15:31:27.3398939' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12131, N'1332983720403536240', CAST(N'2023-05-29T15:32:57.4284365' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12132, N'1332983761279584750', CAST(N'2023-05-29T15:38:23.8971401' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12133, N'1332983766447518570', CAST(N'2023-05-29T15:39:24.8044125' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12134, N'1332983764803749450', CAST(N'2023-05-29T15:39:31.3994670' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12135, N'1332983814819071220', CAST(N'2023-05-29T15:45:46.9681435' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12136, N'1332983818299357890', CAST(N'2023-05-29T15:46:22.7447835' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12137, N'1332983815157160400', CAST(N'2023-05-29T15:46:22.7737072' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12138, N'1332983813854262970', CAST(N'2023-05-29T15:46:35.3639007' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12139, N'1332984267654402790', CAST(N'2023-05-29T17:02:19.4722696' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12140, N'1332984271159181140', CAST(N'2023-05-29T17:04:40.8628058' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12141, N'1332984274099303060', CAST(N'2023-05-29T17:04:40.9086833' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12142, N'1332984277313142570', CAST(N'2023-05-29T17:05:09.8896874' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12143, N'1332984284736290300', CAST(N'2023-05-29T17:06:25.2079255' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12144, N'1332984288184758180', CAST(N'2023-05-29T17:06:25.2353682' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12145, N'1332984279565436050', CAST(N'2023-05-29T17:06:25.2772558' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12146, N'1332984293125376870', CAST(N'2023-05-29T17:06:25.6028945' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12147, N'1332984279412441930', CAST(N'2023-05-29T17:06:31.5517474' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12148, N'1332984282874283670', CAST(N'2023-05-29T17:06:47.1107157' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12149, N'1332984287812057000', CAST(N'2023-05-29T17:06:47.3181583' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12150, N'1332984284096409490', CAST(N'2023-05-29T17:06:47.4338532' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12151, N'1332984295110485140', CAST(N'2023-05-29T17:06:47.6682969' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12152, N'1332984300408851230', CAST(N'2023-05-29T17:06:48.1530295' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12153, N'1332984293327543540', CAST(N'2023-05-29T17:06:57.2413133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12154, N'1332984286992180910', CAST(N'2023-05-29T17:07:20.7213343' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12155, N'1332984304177767800', CAST(N'2023-05-29T17:08:05.1356102' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12156, N'1332984293900680490', CAST(N'2023-05-29T17:08:49.3477090' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12157, N'1332984323937552440', CAST(N'2023-05-29T17:10:43.6284689' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12158, N'1332984318452104100', CAST(N'2023-05-29T17:11:03.9918525' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12159, N'1332984308378661560', CAST(N'2023-05-29T17:11:11.1711311' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12160, N'1332984321281061730', CAST(N'2023-05-29T17:11:13.1752091' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12161, N'1332984319593929960', CAST(N'2023-05-29T17:11:37.6956436' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12162, N'1332984330178022920', CAST(N'2023-05-29T17:11:39.2210551' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12163, N'1332984314697651030', CAST(N'2023-05-29T17:12:18.9981952' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12164, N'1332984324898622160', CAST(N'2023-05-29T17:12:20.8844553' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12165, N'1332984328087557300', CAST(N'2023-05-29T17:12:35.5649359' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12166, N'1332984326982192910', CAST(N'2023-05-29T17:13:06.3539128' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12167, N'1332984348775540530', CAST(N'2023-05-29T17:16:12.1210379' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12168, N'1332986192381109890', CAST(N'2023-05-29T22:25:59.8040869' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12169, N'1332986211783121450', CAST(N'2023-05-29T22:27:39.4393171' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12170, N'1332986221223121020', CAST(N'2023-05-29T22:27:39.4393171' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12171, N'1332986233421975580', CAST(N'2023-05-29T22:28:57.7316049' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12172, N'1332986233022775250', CAST(N'2023-05-29T22:29:15.1251518' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12173, N'1332986239971794080', CAST(N'2023-05-29T22:29:52.7062461' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12174, N'1332986285218587030', CAST(N'2023-05-29T22:37:48.2796613' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12175, N'1332986279965789090', CAST(N'2023-05-29T22:38:34.4238063' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12176, N'1332986286000730360', CAST(N'2023-05-29T22:38:34.6711437' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12177, N'1332986285604688290', CAST(N'2023-05-29T22:39:10.3429740' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12178, N'1332986295355670820', CAST(N'2023-05-29T22:40:34.4160842' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12179, N'1332986295002537200', CAST(N'2023-05-29T22:40:45.4417009' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12180, N'1332986306158139650', CAST(N'2023-05-29T22:40:58.0118395' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12181, N'1332986311395935690', CAST(N'2023-05-29T22:44:46.5785150' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12182, N'1332986322773706580', CAST(N'2023-05-29T22:44:46.6263870' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12183, N'1332986325188041170', CAST(N'2023-05-29T22:44:46.6722630' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12184, N'1332986312661585930', CAST(N'2023-05-29T22:44:46.7261201' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12185, N'1332986327959970820', CAST(N'2023-05-29T22:44:49.9600254' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12186, N'1332986320075560700', CAST(N'2023-05-29T22:45:34.7409352' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12187, N'1332986323519314130', CAST(N'2023-05-29T22:45:38.2323432' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12188, N'1332986357788541950', CAST(N'2023-05-29T22:50:22.9083110' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12189, N'1332986363394552170', CAST(N'2023-05-29T22:51:03.4678687' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12190, N'1332986347382407470', CAST(N'2023-05-29T22:51:03.4957934' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12191, N'1332986376660931830', CAST(N'2023-05-29T22:53:47.6689312' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12192, N'1332986383773771850', CAST(N'2023-05-29T22:54:07.8637264' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12193, N'1332986370844391870', CAST(N'2023-05-29T22:54:07.8936461' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12194, N'1332986372820890160', CAST(N'2023-05-29T22:54:22.8748053' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12195, N'1332986382052260000', CAST(N'2023-05-29T22:54:33.0898783' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12196, N'1332986373936857270', CAST(N'2023-05-29T22:54:57.4289913' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12197, N'1332986379157896530', CAST(N'2023-05-29T22:55:18.0864823' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12198, N'1332986397026059740', CAST(N'2023-05-29T22:58:22.4690336' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12199, N'1332986406143607250', CAST(N'2023-05-29T22:59:42.6945015' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12200, N'1332986411385188470', CAST(N'2023-05-29T23:00:37.8556792' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12201, N'1332986620939118050', CAST(N'2023-05-29T23:36:48.7254504' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12202, N'1332986644566503470', CAST(N'2023-05-29T23:37:47.7688763' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12203, N'1332986644405743110', CAST(N'2023-05-29T23:37:48.2436054' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12204, N'1332986635089848450', CAST(N'2023-05-29T23:37:55.3510403' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12205, N'1332986797929076150', CAST(N'2023-05-30T00:05:20.8401420' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12206, N'1332986826239921110', CAST(N'2023-05-30T00:08:24.6002046' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12207, N'1332986818391559480', CAST(N'2023-05-30T00:08:24.7986732' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12208, N'1332986825520738770', CAST(N'2023-05-30T00:08:32.9219311' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12209, N'1332986846658256420', CAST(N'2023-05-30T00:11:35.0026357' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12210, N'1332986877566857130', CAST(N'2023-05-30T00:16:09.7118434' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12211, N'1332986870371818500', CAST(N'2023-05-30T00:16:56.9016909' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12212, N'1332986881557535060', CAST(N'2023-05-30T00:16:57.1709694' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12213, N'1332986871318195480', CAST(N'2023-05-30T00:17:03.7334050' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12214, N'1332986869543515900', CAST(N'2023-05-30T00:17:27.3682367' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12215, N'1332986914425139740', CAST(N'2023-05-30T00:22:49.9167551' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12216, N'1332986905998376650', CAST(N'2023-05-30T00:23:15.1540347' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12217, N'1332986902762050470', CAST(N'2023-05-30T00:23:15.2826904' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12218, N'1332986912059896300', CAST(N'2023-05-30T00:23:21.9279047' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12219, N'1332986916366048960', CAST(N'2023-05-30T00:24:08.5997424' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12220, N'1332987001006692130', CAST(N'2023-05-30T00:39:28.3840423' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12221, N'1332986999948570510', CAST(N'2023-05-30T00:39:36.4687346' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12222, N'1332987006947876470', CAST(N'2023-05-30T00:40:02.3094596' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12223, N'1332987031455129230', CAST(N'2023-05-30T00:44:12.9941098' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12224, N'1332987068609511930', CAST(N'2023-05-30T00:50:40.1761456' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12225, N'1332987079967549740', CAST(N'2023-05-30T00:54:22.0462062' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12226, N'1332987154650824820', CAST(N'2023-05-30T01:03:54.5237582' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12227, N'1332987169522769840', CAST(N'2023-05-30T01:07:06.8572745' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12228, N'1332987209741308810', CAST(N'2023-05-30T01:13:12.5864951' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12229, N'1332987215232415310', CAST(N'2023-05-30T01:15:28.6798474' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12230, N'1332987249285932780', CAST(N'2023-05-30T01:20:21.4267649' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12231, N'1332987269916898280', CAST(N'2023-05-30T01:24:07.9092757' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12232, N'1332993313692945160', CAST(N'2023-05-30T18:09:44.3008846' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12233, N'1332993356274736700', CAST(N'2023-05-30T18:18:08.1796300' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12234, N'1332993366824747280', CAST(N'2023-05-30T18:18:08.4169963' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12235, N'1332994458589967570', CAST(N'2023-05-30T21:25:14.7067159' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12236, N'1332994507794113220', CAST(N'2023-05-30T21:29:11.7721374' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12237, N'1332994506411808810', CAST(N'2023-05-30T21:29:11.9416847' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12238, N'1332994514287531760', CAST(N'2023-05-30T21:29:22.5426505' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12239, N'1332994581561659860', CAST(N'2023-05-30T21:42:45.1305904' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12240, N'1332994594449545270', CAST(N'2023-05-30T21:43:03.1308175' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12241, N'1332994597071490150', CAST(N'2023-05-30T21:43:03.2983754' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12242, N'1332994590805257100', CAST(N'2023-05-30T21:43:08.3937320' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12243, N'1332994602515645220', CAST(N'2023-05-30T21:45:38.8406002' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12244, N'1332994610425161380', CAST(N'2023-05-30T21:45:46.0385879' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12245, N'1332994602847159630', CAST(N'2023-05-30T21:45:46.1004251' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12246, N'1332994595500744240', CAST(N'2023-05-30T21:45:50.6810773' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12247, N'1332994752278026770', CAST(N'2023-05-30T22:10:54.6813337' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12248, N'1332994768879859560', CAST(N'2023-05-30T22:12:45.1766825' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12249, N'1332994762373080570', CAST(N'2023-05-30T22:12:45.1986237' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12250, N'1332994758323134500', CAST(N'2023-05-30T22:12:59.2482035' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12251, N'1332994823691847870', CAST(N'2023-05-30T22:21:09.6675780' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12252, N'1332994814729461590', CAST(N'2023-05-30T22:21:21.1224814' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12253, N'1332994828406666010', CAST(N'2023-05-30T22:21:21.1484103' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12254, N'1332994824227182630', CAST(N'2023-05-30T22:21:26.8871911' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12255, N'1332994885968817620', CAST(N'2023-05-30T22:30:48.7100572' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12256, N'1332994924341384070', CAST(N'2023-05-30T22:40:16.8880455' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12257, N'1332994923769043790', CAST(N'2023-05-30T22:40:16.9079908' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12258, N'1332994940596572850', CAST(N'2023-05-30T22:40:23.1240305' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12259, N'1332995089777549590', CAST(N'2023-05-30T23:05:57.4934193' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12260, N'1332995077031679990', CAST(N'2023-05-30T23:06:04.8291848' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12261, N'1332995081267179010', CAST(N'2023-05-30T23:06:04.8650895' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12262, N'1332995089750822070', CAST(N'2023-05-30T23:06:09.9709140' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12263, N'1332995193122815520', CAST(N'2023-05-30T23:22:53.6584458' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12264, N'1332995187875687130', CAST(N'2023-05-30T23:24:35.3786416' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12265, N'1332995195785458940', CAST(N'2023-05-30T23:25:01.1392615' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12266, N'1332995201601591630', CAST(N'2023-05-30T23:25:01.1751654' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12267, N'1332995198096234460', CAST(N'2023-05-30T23:25:06.2975203' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12268, N'1332995450221484680', CAST(N'2023-05-31T00:07:41.2602811' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12269, N'1332995462712136320', CAST(N'2023-05-31T00:08:50.2716608' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12270, N'1332995470767681560', CAST(N'2023-05-31T00:08:50.3983224' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12271, N'1332995464150403260', CAST(N'2023-05-31T00:09:04.7161448' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12272, N'1332995512228131610', CAST(N'2023-05-31T00:16:18.1080212' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12273, N'1332995515837280260', CAST(N'2023-05-31T00:17:01.8537431' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12274, N'1332995505191268790', CAST(N'2023-05-31T00:17:01.8886497' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12275, N'1332995523882202700', CAST(N'2023-05-31T00:17:09.2120484' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12276, N'1332995522880879980', CAST(N'2023-05-31T00:18:48.5289803' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12277, N'1332995534014153060', CAST(N'2023-05-31T00:20:48.1749531' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12278, N'1332995532087683210', CAST(N'2023-05-31T00:20:48.1998869' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12279, N'1332995534311621370', CAST(N'2023-05-31T00:20:53.8468562' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12280, N'1332995552091394170', CAST(N'2023-05-31T00:22:53.8619884' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12281, N'1332995541651668510', CAST(N'2023-05-31T00:23:04.3723400' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12282, N'1332995545005626030', CAST(N'2023-05-31T00:23:04.4062488' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12283, N'1332995552501072920', CAST(N'2023-05-31T00:23:09.1646586' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12284, N'1332995574823518880', CAST(N'2023-05-31T00:28:16.4791439' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12285, N'1332995576877704910', CAST(N'2023-05-31T00:28:24.5138988' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12286, N'1332995574440829610', CAST(N'2023-05-31T00:28:24.5478068' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12287, N'1332995584285819750', CAST(N'2023-05-31T00:28:30.3612482' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12288, N'1332995622785403080', CAST(N'2023-05-31T00:36:33.5181750' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12289, N'1332995627379633350', CAST(N'2023-05-31T00:36:38.1987927' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12290, N'1332995639357675550', CAST(N'2023-05-31T00:36:38.2137538' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12291, N'1332995625897979630', CAST(N'2023-05-31T00:36:43.1416100' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12292, N'1332995664184216790', CAST(N'2023-05-31T00:42:18.9916458' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12293, N'1332995666457105760', CAST(N'2023-05-31T00:42:33.6707512' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12294, N'1332995670147256800', CAST(N'2023-05-31T00:42:33.7116409' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12295, N'1332995662803979240', CAST(N'2023-05-31T00:42:37.8146584' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12296, N'1332995712160885740', CAST(N'2023-05-31T00:51:16.2657794' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12297, N'1332995724612282370', CAST(N'2023-05-31T00:51:21.8953435' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12298, N'1332995715654216600', CAST(N'2023-05-31T00:51:21.9192797' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12299, N'1332995722961031470', CAST(N'2023-05-31T00:51:26.8470913' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12300, N'1332995729286499470', CAST(N'2023-05-31T00:52:52.4216743' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12301, N'1332995738505657230', CAST(N'2023-05-31T00:53:34.9779908' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12302, N'1332995742499146260', CAST(N'2023-05-31T00:53:35.0069123' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12303, N'1332995743312604700', CAST(N'2023-05-31T00:53:39.7272776' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12304, N'1332995757877414200', CAST(N'2023-05-31T00:56:37.1955180' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12305, N'1332995763530397890', CAST(N'2023-05-31T00:58:00.1985480' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12306, N'1332995752259126340', CAST(N'2023-05-31T00:58:00.2294654' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12307, N'1332995768012970490', CAST(N'2023-05-31T00:58:04.8869990' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12308, N'1332999915436280600', CAST(N'2023-05-31T12:31:38.7963189' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12309, N'1332999932781585310', CAST(N'2023-05-31T12:34:09.1698140' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12310, N'1332999925889224690', CAST(N'2023-05-31T12:34:09.5604986' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12311, N'1332999995335527630', CAST(N'2023-05-31T12:43:20.5947516' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12312, N'1332999983634528440', CAST(N'2023-05-31T12:43:36.9004456' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12313, N'1332999987316081580', CAST(N'2023-05-31T12:43:36.9455930' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12314, N'1333000002118955120', CAST(N'2023-05-31T12:43:36.9704623' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12315, N'1332999999233052070', CAST(N'2023-05-31T12:43:36.9862373' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12316, N'1332999983343818550', CAST(N'2023-05-31T12:43:37.0043984' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12317, N'1332999990557016160', CAST(N'2023-05-31T12:43:43.0921357' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12318, N'1333000162291355470', CAST(N'2023-05-31T13:14:15.3205335' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12319, N'1333000172155076590', CAST(N'2023-05-31T13:14:54.7529237' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12320, N'1333000175589120060', CAST(N'2023-05-31T13:14:54.9942768' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12321, N'1333000175434914550', CAST(N'2023-05-31T13:14:54.9958851' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12322, N'1333000185125707820', CAST(N'2023-05-31T13:14:55.2815099' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12323, N'1333000173494358760', CAST(N'2023-05-31T13:14:55.4779824' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12324, N'1333000175712457180', CAST(N'2023-05-31T13:15:04.1681444' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12325, N'1333000192169843530', CAST(N'2023-05-31T13:17:01.1480321' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12326, N'1333000195668767520', CAST(N'2023-05-31T13:17:20.6025691' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12327, N'1333000227134106140', CAST(N'2023-05-31T13:23:07.0755385' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12328, N'1333000227073102490', CAST(N'2023-05-31T13:23:24.5186973' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12329, N'1333000226958479420', CAST(N'2023-05-31T13:23:30.1312623' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12330, N'1333000226077869730', CAST(N'2023-05-31T13:23:59.2265852' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12331, N'1333001140396730550', CAST(N'2023-05-31T15:56:45.5474982' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12332, N'1333001177114405130', CAST(N'2023-05-31T16:00:19.1994442' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12333, N'1333001183075092370', CAST(N'2023-05-31T16:00:19.2154034' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12334, N'1333001168442057600', CAST(N'2023-05-31T16:00:27.5440400' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12335, N'1333001165721467470', CAST(N'2023-05-31T16:00:31.9409148' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12336, N'1333001187125129650', CAST(N'2023-05-31T16:02:45.7096684' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12337, N'1333001195620152750', CAST(N'2023-05-31T16:03:30.7733061' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12338, N'1333001201996181700', CAST(N'2023-05-31T16:03:57.8693480' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12339, N'1333001195630549540', CAST(N'2023-05-31T16:03:57.9022606' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12340, N'1333001189293116080', CAST(N'2023-05-31T16:04:02.9298088' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12341, N'1333001212956132500', CAST(N'2023-05-31T16:09:32.6582357' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12342, N'1333001242317229940', CAST(N'2023-05-31T16:13:08.7438825' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12343, N'1333001297406806160', CAST(N'2023-05-31T16:20:59.8334216' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12344, N'1333003413830109910', CAST(N'2023-05-31T22:13:54.8806813' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12345, N'1333003411704844090', CAST(N'2023-05-31T22:14:01.8845765' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12346, N'1333003416169554380', CAST(N'2023-05-31T22:14:01.9464115' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12347, N'1333003422382557910', CAST(N'2023-05-31T22:14:10.2121636' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12348, N'1333003428310095160', CAST(N'2023-05-31T22:16:48.5574692' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12349, N'1333003439723125970', CAST(N'2023-05-31T22:18:40.6184456' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12350, N'1333003457550926310', CAST(N'2023-05-31T22:20:29.0241569' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12351, N'1333003446007940290', CAST(N'2023-05-31T22:21:36.2848107' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12352, N'1333003463581793720', CAST(N'2023-05-31T22:22:58.3563350' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12353, N'1333003473763379240', CAST(N'2023-05-31T22:23:05.9706557' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12354, N'1333003476923001050', CAST(N'2023-05-31T22:23:05.9876084' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12355, N'1333003473944524600', CAST(N'2023-05-31T22:23:13.3583051' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12356, N'1333003504745083960', CAST(N'2023-05-31T22:30:44.0389336' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12357, N'1333003524914100280', CAST(N'2023-05-31T22:30:47.6029185' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12358, N'1333003520911973260', CAST(N'2023-05-31T22:30:47.6368288' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12359, N'1333003517499041820', CAST(N'2023-05-31T22:30:51.7917335' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12360, N'1333003549059554030', CAST(N'2023-05-31T22:35:40.0909024' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12361, N'1333003541247335390', CAST(N'2023-05-31T22:36:03.5393484' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12362, N'1333003557326679590', CAST(N'2023-05-31T22:36:03.5682709' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12363, N'1333003556449040680', CAST(N'2023-05-31T22:36:09.1445841' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12364, N'1333003557859686290', CAST(N'2023-05-31T22:37:23.5377058' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12365, N'1333003558766533470', CAST(N'2023-05-31T22:37:31.6271924' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12366, N'1333003554576927540', CAST(N'2023-05-31T22:37:31.6411147' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12367, N'1333003564720354500', CAST(N'2023-05-31T22:37:36.4552141' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12368, N'1333003650544609440', CAST(N'2023-05-31T22:54:42.9558054' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12369, N'1333003662082224410', CAST(N'2023-05-31T22:54:49.4192813' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12370, N'1333003668016269940', CAST(N'2023-05-31T22:54:49.4382303' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12371, N'1333003650843440210', CAST(N'2023-05-31T22:54:56.4067200' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12372, N'1333003726800962300', CAST(N'2023-05-31T23:08:29.8003954' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12373, N'1333003747828753620', CAST(N'2023-05-31T23:08:39.7708558' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12374, N'1333003734288441500', CAST(N'2023-05-31T23:08:39.8007749' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12375, N'1333003735389764850', CAST(N'2023-05-31T23:08:45.7138631' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12376, N'1333003741455773630', CAST(N'2023-05-31T23:08:47.4392498' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12377, N'1333003758567166110', CAST(N'2023-05-31T23:10:25.4574245' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12378, N'1333003751890251760', CAST(N'2023-05-31T23:10:29.2958156' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12379, N'1333003769379151990', CAST(N'2023-05-31T23:13:00.2104646' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12380, N'1333003781921862090', CAST(N'2023-05-31T23:15:50.5777377' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12381, N'1333003800872994280', CAST(N'2023-05-31T23:18:06.9395416' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12382, N'1333003811300141880', CAST(N'2023-05-31T23:18:18.6684020' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12383, N'1333003799545757410', CAST(N'2023-05-31T23:19:32.9733828' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12384, N'1333003815102820430', CAST(N'2023-05-31T23:19:42.3747933' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12385, N'1333003804512991410', CAST(N'2023-05-31T23:19:42.3947400' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12386, N'1333003815477232540', CAST(N'2023-05-31T23:19:49.0400710' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12387, N'1333003820285881470', CAST(N'2023-05-31T23:20:36.6856987' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12388, N'1333003842205729850', CAST(N'2023-05-31T23:26:22.7183939' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12389, N'1333003843276734970', CAST(N'2023-05-31T23:26:30.9788531' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12390, N'1333003858653729020', CAST(N'2023-05-31T23:26:31.0327090' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12391, N'1333003842743063000', CAST(N'2023-05-31T23:26:46.2196325' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12392, N'1333003859004908770', CAST(N'2023-05-31T23:27:12.1759451' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12393, N'1333003848298367760', CAST(N'2023-05-31T23:27:22.2878466' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12394, N'1333003862659533940', CAST(N'2023-05-31T23:27:22.3157704' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12395, N'1333003862268826900', CAST(N'2023-05-31T23:27:26.3684169' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12396, N'1333003890186574180', CAST(N'2023-05-31T23:33:00.7927726' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12397, N'1333003898610197840', CAST(N'2023-05-31T23:33:05.8768977' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12398, N'1333003898342687540', CAST(N'2023-05-31T23:33:05.8988392' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12399, N'1333003879929342700', CAST(N'2023-05-31T23:33:10.0422350' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12400, N'1333003900658463080', CAST(N'2023-05-31T23:33:42.4516506' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12401, N'1333003895491155910', CAST(N'2023-05-31T23:33:53.8734837' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12402, N'1333003897419217810', CAST(N'2023-05-31T23:33:53.8841020' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12403, N'1333003903452144050', CAST(N'2023-05-31T23:33:57.9378003' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12404, N'1333003928246262600', CAST(N'2023-05-31T23:38:12.2664392' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12405, N'1333003915641417220', CAST(N'2023-05-31T23:38:26.3670020' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12406, N'1333003914153474180', CAST(N'2023-05-31T23:38:26.3829167' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12407, N'1333003926494548470', CAST(N'2023-05-31T23:38:30.8403428' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12408, N'1333003929654114600', CAST(N'2023-05-31T23:40:14.0536399' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12409, N'1333003924380324230', CAST(N'2023-05-31T23:40:19.6563047' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12410, N'1333003929725868840', CAST(N'2023-05-31T23:40:19.7280872' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12411, N'1333003933548980080', CAST(N'2023-05-31T23:40:23.4662529' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12412, N'1333003938073440620', CAST(N'2023-05-31T23:41:03.6834061' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12413, N'1333003946841058820', CAST(N'2023-05-31T23:41:11.8377193' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12414, N'1333003948052343390', CAST(N'2023-05-31T23:41:11.8726262' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12415, N'1333003927792127120', CAST(N'2023-05-31T23:41:15.7099526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12416, N'1333003934422781810', CAST(N'2023-05-31T23:41:50.1783167' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12417, N'1333003937495711910', CAST(N'2023-05-31T23:41:54.3213090' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12418, N'1333003939981944280', CAST(N'2023-05-31T23:41:54.3422544' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12419, N'1333003938513027760', CAST(N'2023-05-31T23:41:58.9339717' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12420, N'1333003954723152290', CAST(N'2023-05-31T23:43:03.5056055' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12421, N'1333003940819616320', CAST(N'2023-05-31T23:43:09.8404063' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12422, N'1333003945203463460', CAST(N'2023-05-31T23:43:09.8633449' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12423, N'1333003941069604650', CAST(N'2023-05-31T23:43:13.5489543' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12424, N'1333003959309963520', CAST(N'2023-05-31T23:43:42.7303833' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12425, N'1333003946304266330', CAST(N'2023-05-31T23:43:47.0663891' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12426, N'1333003943845906010', CAST(N'2023-05-31T23:43:47.0793559' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12427, N'1333003963053294210', CAST(N'2023-05-31T23:43:53.7171980' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12428, N'1333003965714465580', CAST(N'2023-05-31T23:46:22.0072818' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12429, N'1333003981273710450', CAST(N'2023-05-31T23:48:13.8882973' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12430, N'1333003991344595700', CAST(N'2023-05-31T23:48:53.1792558' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12431, N'1333003989560293000', CAST(N'2023-05-31T23:48:53.2380988' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12432, N'1333003988048970660', CAST(N'2023-05-31T23:49:00.1331386' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12433, N'1333003990677440270', CAST(N'2023-05-31T23:51:20.7404405' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12434, N'1333003999325681710', CAST(N'2023-05-31T23:52:57.8714673' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12435, N'1333004010237056150', CAST(N'2023-05-31T23:52:57.9113614' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12436, N'1333004013469537840', CAST(N'2023-05-31T23:53:03.1249686' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12437, N'1333004008235494540', CAST(N'2023-05-31T23:53:39.7137781' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12438, N'1333004042893204430', CAST(N'2023-06-01T00:00:11.4434514' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12439, N'1333004056322274150', CAST(N'2023-06-01T00:01:16.1232793' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12440, N'1333004067665972850', CAST(N'2023-06-01T00:02:57.1346917' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12441, N'1333004070929443460', CAST(N'2023-06-01T00:04:32.0516976' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12442, N'1333004074413416210', CAST(N'2023-06-01T00:04:32.2092758' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12443, N'1333004071624711420', CAST(N'2023-06-01T00:04:38.3927270' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12444, N'1333004085267885920', CAST(N'2023-06-01T00:06:20.9857251' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12445, N'1333004093891601190', CAST(N'2023-06-01T00:06:28.6930720' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12446, N'1333004093363217250', CAST(N'2023-06-01T00:06:28.7209988' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12447, N'1333004083529300360', CAST(N'2023-06-01T00:06:34.0646998' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12448, N'1333004099351289870', CAST(N'2023-06-01T00:08:24.6499679' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12449, N'1333004118981101510', CAST(N'2023-06-01T00:10:41.8007251' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12450, N'1333004115865155750', CAST(N'2023-06-01T00:10:41.8406178' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12451, N'1333004113775634170', CAST(N'2023-06-01T00:10:46.3266816' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12452, N'1333004127424544830', CAST(N'2023-06-01T00:11:37.8992290' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12453, N'1333004131850303740', CAST(N'2023-06-01T00:12:32.4523847' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12454, N'1333004124376026950', CAST(N'2023-06-01T00:12:32.4743260' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12455, N'1333004130771169930', CAST(N'2023-06-01T00:12:38.1458578' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12456, N'1333004134719943880', CAST(N'2023-06-01T00:15:30.1406003' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12457, N'1333004137349737800', CAST(N'2023-06-01T00:15:34.7219750' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12458, N'1333004147321045690', CAST(N'2023-06-01T00:15:34.7459199' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12459, N'1333004140630803580', CAST(N'2023-06-01T00:15:40.4870473' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12460, N'1333004149766541570', CAST(N'2023-06-01T00:17:53.7314287' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12461, N'1333004171430179460', CAST(N'2023-06-01T00:19:12.7899826' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12462, N'1333004164330788910', CAST(N'2023-06-01T00:19:12.8089319' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12463, N'1333004163708630750', CAST(N'2023-06-01T00:19:18.2507026' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12464, N'1333004218995885510', CAST(N'2023-06-01T00:29:41.6882976' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12465, N'1333004220478326440', CAST(N'2023-06-01T00:29:56.7511464' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12466, N'1333004225046273050', CAST(N'2023-06-01T00:29:56.8119843' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12467, N'1333004227777298280', CAST(N'2023-06-01T00:30:03.6372832' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12468, N'1333008477585450060', CAST(N'2023-06-01T12:19:09.4259029' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12469, N'1333008479231027030', CAST(N'2023-06-01T12:19:20.3912915' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12470, N'1333008482510376980', CAST(N'2023-06-01T12:19:20.4381551' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12471, N'1333008493283403710', CAST(N'2023-06-01T12:19:27.9335723' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12472, N'1333008494141916520', CAST(N'2023-06-01T12:20:58.5144741' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12473, N'1333008502625690910', CAST(N'2023-06-01T12:22:48.9377859' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12474, N'1333008508660931030', CAST(N'2023-06-01T12:22:48.9497545' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12475, N'1333008523644899990', CAST(N'2023-06-01T12:25:42.8807896' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12476, N'1333008532526219590', CAST(N'2023-06-01T12:26:11.4475058' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12477, N'1333008548885282840', CAST(N'2023-06-01T12:29:00.4784841' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12478, N'1333008555746515210', CAST(N'2023-06-01T12:30:03.3541531' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12479, N'1333008543188466490', CAST(N'2023-06-01T12:30:03.3990325' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12480, N'1333008553901034570', CAST(N'2023-06-01T12:30:08.2954294' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12481, N'1333008584682748020', CAST(N'2023-06-01T12:34:47.4749676' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12482, N'1333008609717064370', CAST(N'2023-06-01T12:40:42.5685178' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12483, N'1333008622600997010', CAST(N'2023-06-01T12:40:42.6703952' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12484, N'1333008621608501200', CAST(N'2023-06-01T12:40:47.6558004' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12485, N'1333009153345725810', CAST(N'2023-06-01T14:11:08.7456684' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12486, N'1333009166540212010', CAST(N'2023-06-01T14:11:13.6008660' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12487, N'1333009163518024680', CAST(N'2023-06-01T14:11:13.6198149' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12488, N'1333009148781257160', CAST(N'2023-06-01T14:11:18.6816316' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12489, N'1333009213771630720', CAST(N'2023-06-01T14:19:05.8024319' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12490, N'1333009277960906190', CAST(N'2023-06-01T14:29:32.7833687' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12491, N'1333009265685039010', CAST(N'2023-06-01T14:29:32.8571695' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12492, N'1333009260971730520', CAST(N'2023-06-01T14:29:37.3969599' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12493, N'1333009299417330350', CAST(N'2023-06-01T14:34:45.6091641' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12494, N'1333009310446431310', CAST(N'2023-06-01T14:35:14.9627415' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12495, N'1333009291753099500', CAST(N'2023-06-01T14:35:14.9886719' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12496, N'1333009301122597440', CAST(N'2023-06-01T14:35:19.2192665' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12497, N'1333009328514090430', CAST(N'2023-06-01T14:38:06.3449388' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12498, N'1333009324731019660', CAST(N'2023-06-01T14:38:23.4506461' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12499, N'1333009322025428230', CAST(N'2023-06-01T14:38:23.4685970' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12500, N'1333009323756261100', CAST(N'2023-06-01T14:38:27.9825225' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12501, N'1333009330091589680', CAST(N'2023-06-01T14:40:14.6467372' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12502, N'1333009322917165760', CAST(N'2023-06-01T14:40:23.5335964' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12503, N'1333009338281283950', CAST(N'2023-06-01T14:40:23.5944335' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12504, N'1333009324944018190', CAST(N'2023-06-01T14:40:27.4976607' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12505, N'1333009336724859320', CAST(N'2023-06-01T14:41:21.7881544' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12506, N'1333009335924174080', CAST(N'2023-06-01T14:41:34.7576685' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12507, N'1333009348693899380', CAST(N'2023-06-01T14:41:34.8035459' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12508, N'1333009340207449750', CAST(N'2023-06-01T14:41:38.6912098' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12509, N'1333009346164281460', CAST(N'2023-06-01T14:42:19.8318763' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12510, N'1333009354008027420', CAST(N'2023-06-01T14:42:46.8327165' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12511, N'1333009340038197860', CAST(N'2023-06-01T14:42:46.8596451' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12512, N'1333009355819598720', CAST(N'2023-06-01T14:42:50.4610046' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12513, N'1333009361887042420', CAST(N'2023-06-01T14:43:37.1382615' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12514, N'1333009354445326500', CAST(N'2023-06-01T14:43:45.2723087' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12515, N'1333009361600064760', CAST(N'2023-06-01T14:43:45.2882685' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12516, N'1333009343958340970', CAST(N'2023-06-01T14:43:51.0634274' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12517, N'1333009366589363540', CAST(N'2023-06-01T14:44:42.6868063' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12518, N'1333009353356465710', CAST(N'2023-06-01T14:44:47.2128057' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12519, N'1333009366551683160', CAST(N'2023-06-01T14:44:47.2297594' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12520, N'1333009355615364750', CAST(N'2023-06-01T14:44:51.5075321' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12521, N'1333009365349451420', CAST(N'2023-06-01T14:45:58.3109765' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12522, N'1333009373160209420', CAST(N'2023-06-01T14:46:08.9450227' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12523, N'1333009361659296880', CAST(N'2023-06-01T14:46:08.9649692' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12524, N'1333009366516161070', CAST(N'2023-06-01T14:46:14.9757118' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12525, N'1333009382591352420', CAST(N'2023-06-01T14:49:34.3559271' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12526, N'1333009378129724430', CAST(N'2023-06-01T14:49:40.9679537' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12527, N'1333009397593419770', CAST(N'2023-06-01T14:49:41.0377675' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12528, N'1333009392726241310', CAST(N'2023-06-01T14:49:45.6759658' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12529, N'1333009397493091210', CAST(N'2023-06-01T14:50:23.7268437' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12530, N'1333009393883789400', CAST(N'2023-06-01T14:50:35.3891042' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12531, N'1333009402689259900', CAST(N'2023-06-01T14:50:35.4110466' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12532, N'1333009401753695470', CAST(N'2023-06-01T14:50:39.6688577' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12533, N'1333009411940506940', CAST(N'2023-06-01T14:54:57.6394899' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12534, N'1333009428375756280', CAST(N'2023-06-01T14:55:05.8705164' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12535, N'1333009414051111760', CAST(N'2023-06-01T14:55:05.8924572' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12536, N'1333009417935532280', CAST(N'2023-06-01T14:55:09.7737785' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12537, N'1333009445451477010', CAST(N'2023-06-01T14:59:47.0105206' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12538, N'1333009458245233440', CAST(N'2023-06-01T14:59:58.7537139' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12539, N'1333009457358163370', CAST(N'2023-06-01T14:59:58.7686731' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12540, N'1333009444249255630', CAST(N'2023-06-01T15:00:02.7607756' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12541, N'1333009463344170590', CAST(N'2023-06-01T15:01:36.2165188' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12542, N'1333009462388567150', CAST(N'2023-06-01T15:01:49.3560306' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12543, N'1333009460295714960', CAST(N'2023-06-01T15:01:49.3739819' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12544, N'1333009456561815700', CAST(N'2023-06-01T15:01:54.0287893' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12545, N'1333009470600249030', CAST(N'2023-06-01T15:04:10.9667589' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12546, N'1333009490363218030', CAST(N'2023-06-01T15:05:06.1380712' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12547, N'1333009482102509010', CAST(N'2023-06-01T15:05:06.1699860' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12548, N'1333009484683426200', CAST(N'2023-06-01T15:05:10.5459417' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12549, N'1333009477029675260', CAST(N'2023-06-01T15:05:24.6419026' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12550, N'1333009512249238990', CAST(N'2023-06-01T15:10:06.6813644' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12551, N'1333012750013686550', CAST(N'2023-06-02T00:12:16.0141132' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12552, N'1333012786507674330', CAST(N'2023-06-02T00:14:24.3970853' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12553, N'1333012781185011220', CAST(N'2023-06-02T00:14:24.4170313' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12554, N'1333012773358589670', CAST(N'2023-06-02T00:14:29.8142921' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12555, N'1333012796730913190', CAST(N'2023-06-02T00:17:27.1181342' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12556, N'1333012791900164400', CAST(N'2023-06-02T00:17:34.6325058' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12557, N'1333012798968813960', CAST(N'2023-06-02T00:17:34.6624264' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12558, N'1333012805016590830', CAST(N'2023-06-02T00:17:39.2584423' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12559, N'1333012801345315450', CAST(N'2023-06-02T00:19:09.7459471' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12560, N'1333012796782837530', CAST(N'2023-06-02T00:19:14.3337994' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12561, N'1333012802690049180', CAST(N'2023-06-02T00:19:14.3437720' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12562, N'1333012809964619500', CAST(N'2023-06-02T00:19:18.6003470' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12563, N'1333012835510019770', CAST(N'2023-06-02T00:23:51.2662252' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12564, N'1333012827750626340', CAST(N'2023-06-02T00:23:55.7645637' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12565, N'1333012830226369040', CAST(N'2023-06-02T00:23:55.7835116' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12566, N'1333012842735593200', CAST(N'2023-06-02T00:23:59.7514757' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12567, N'1333012896285145780', CAST(N'2023-06-02T00:35:26.4361287' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12568, N'1333012896642179690', CAST(N'2023-06-02T00:35:37.7156460' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12569, N'1333012914453246020', CAST(N'2023-06-02T00:35:37.7435717' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12570, N'1333012909495755410', CAST(N'2023-06-02T00:35:42.4092914' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12571, N'1333012997589656500', CAST(N'2023-06-02T00:50:09.6009294' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12572, N'1333012988840414810', CAST(N'2023-06-02T00:50:16.0350184' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12573, N'1333012987041351480', CAST(N'2023-06-02T00:50:16.0838871' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12574, N'1333012985249398230', CAST(N'2023-06-02T00:50:20.9321735' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12575, N'1333013002097459600', CAST(N'2023-06-02T00:51:48.1575357' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12576, N'1333013002886885260', CAST(N'2023-06-02T00:51:53.1689871' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12577, N'1333013008415407580', CAST(N'2023-06-02T00:51:53.1909282' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12578, N'1333013012984768270', CAST(N'2023-06-02T00:51:57.7184393' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12579, N'1333013004460612520', CAST(N'2023-06-02T00:52:53.5697868' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12580, N'1333013018658064610', CAST(N'2023-06-02T00:53:14.5671002' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12581, N'1333013012663885040', CAST(N'2023-06-02T00:53:14.5780728' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12582, N'1333013004082241930', CAST(N'2023-06-02T00:53:24.1473411' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12583, N'1333013024525912160', CAST(N'2023-06-02T00:55:05.0376794' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12584, N'1333013012895618230', CAST(N'2023-06-02T00:55:10.1020680' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12585, N'1333013027948638480', CAST(N'2023-06-02T00:55:10.1938220' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12586, N'1333013023404006870', CAST(N'2023-06-02T00:55:14.7524799' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12587, N'1333013028110286750', CAST(N'2023-06-02T00:56:14.3128903' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12588, N'1333013033801512480', CAST(N'2023-06-02T00:56:17.8741840' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12589, N'1333013017835135590', CAST(N'2023-06-02T00:56:17.8871501' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12590, N'1333013027143393800', CAST(N'2023-06-02T00:56:22.3507167' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12591, N'1333013043335358700', CAST(N'2023-06-02T00:57:39.6635812' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12592, N'1333013036817224770', CAST(N'2023-06-02T00:57:46.4775408' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12593, N'1333013039122120190', CAST(N'2023-06-02T00:57:46.4934974' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12594, N'1333013036938403200', CAST(N'2023-06-02T00:57:51.3585046' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12595, N'1333013058197067010', CAST(N'2023-06-02T01:01:14.6639094' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12596, N'1333013080386451430', CAST(N'2023-06-02T01:06:14.6310951' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12597, N'1333013089530817180', CAST(N'2023-06-02T01:06:14.6420665' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12598, N'1333013091476365310', CAST(N'2023-06-02T01:06:19.0045105' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12599, N'1333013095224827850', CAST(N'2023-06-02T01:08:09.0070404' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12600, N'1333013097647940000', CAST(N'2023-06-02T01:08:14.8687300' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12601, N'1333013090387781560', CAST(N'2023-06-02T01:08:14.8886778' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12602, N'1333013099152783710', CAST(N'2023-06-02T01:08:19.2248578' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12603, N'1333013122344409500', CAST(N'2023-06-02T01:10:24.4015601' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12604, N'1333013104042538010', CAST(N'2023-06-02T01:10:28.3811274' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12605, N'1333013120670899100', CAST(N'2023-06-02T01:10:28.4050603' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12606, N'1333013110990379570', CAST(N'2023-06-02T01:10:34.1579592' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12607, N'1333013125615475470', CAST(N'2023-06-02T01:13:18.2029013' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12608, N'1333013131413293220', CAST(N'2023-06-02T01:13:21.7056880' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12609, N'1333013124110019260', CAST(N'2023-06-02T01:13:21.7296217' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12610, N'1333013127648282010', CAST(N'2023-06-02T01:13:26.2247535' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12611, N'1333013148498263510', CAST(N'2023-06-02T01:15:47.2594216' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12612, N'1333013155193091900', CAST(N'2023-06-02T01:15:59.1822550' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12613, N'1333013144379772260', CAST(N'2023-06-02T01:15:59.2101802' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12614, N'1333013143315104970', CAST(N'2023-06-02T01:16:03.6098721' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12615, N'1333013147213695170', CAST(N'2023-06-02T01:17:39.1995253' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12616, N'1333013159583495810', CAST(N'2023-06-02T01:17:42.7053971' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12617, N'1333013159996830890', CAST(N'2023-06-02T01:17:42.7462882' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12618, N'1333013163917042530', CAST(N'2023-06-02T01:17:46.3410407' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12619, N'1333013163111011030', CAST(N'2023-06-02T01:19:38.4839561' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12620, N'1333013176286771030', CAST(N'2023-06-02T01:19:42.5769313' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12621, N'1333013177324928180', CAST(N'2023-06-02T01:19:42.6098436' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12622, N'1333013172895763610', CAST(N'2023-06-02T01:19:49.3505928' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12623, N'1333013178183072660', CAST(N'2023-06-02T01:21:37.3544792' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12624, N'1333013187986160800', CAST(N'2023-06-02T01:21:41.1161847' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12625, N'1333013180544769430', CAST(N'2023-06-02T01:21:41.1520886' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12626, N'1333013176650126860', CAST(N'2023-06-02T01:21:45.1055335' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12627, N'1333013191241728060', CAST(N'2023-06-02T01:23:18.8786466' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12628, N'1333013199071939030', CAST(N'2023-06-02T01:23:23.5864651' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12629, N'1333013195341303340', CAST(N'2023-06-02T01:23:23.6163858' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12630, N'1333013192134776630', CAST(N'2023-06-02T01:23:29.8519297' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12631, N'1333013198286711270', CAST(N'2023-06-02T01:24:53.5898640' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12632, N'1333013195152906710', CAST(N'2023-06-02T01:24:57.1063286' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12633, N'1333013204512231170', CAST(N'2023-06-02T01:24:57.1282698' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12634, N'1333013194379456160', CAST(N'2023-06-02T01:25:01.7625822' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12635, N'1333013254469720670', CAST(N'2023-06-02T01:34:48.3544810' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12636, N'1333013253021989400', CAST(N'2023-06-02T01:34:54.1249939' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12637, N'1333013252285299860', CAST(N'2023-06-02T01:34:54.1549364' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12638, N'1333013263020121320', CAST(N'2023-06-02T01:34:58.7493432' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12639, N'1333013302253840240', CAST(N'2023-06-02T01:41:29.0375611' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12640, N'1333013303734972880', CAST(N'2023-06-02T01:42:33.3594441' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12641, N'1333013307471662190', CAST(N'2023-06-02T01:42:33.3977639' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12642, N'1333013296102411230', CAST(N'2023-06-02T01:42:37.5444280' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12643, N'1333013338086513010', CAST(N'2023-06-02T01:48:49.3261454' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12644, N'1333013345563350290', CAST(N'2023-06-02T01:48:54.1709462' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12645, N'1333013336928513820', CAST(N'2023-06-02T01:48:54.2077051' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12646, N'1333013348408625730', CAST(N'2023-06-02T01:48:58.5553310' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12647, N'1333018110049830640', CAST(N'2023-06-02T15:02:34.7306325' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12648, N'1333018101452151580', CAST(N'2023-06-02T15:03:01.2499028' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12649, N'1333018103426170810', CAST(N'2023-06-02T15:03:01.2848097' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12650, N'1333018111757019530', CAST(N'2023-06-02T15:03:08.0302319' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12651, N'1333018199426784990', CAST(N'2023-06-02T15:19:06.6090272' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12652, N'1333018201430636150', CAST(N'2023-06-02T15:19:50.6438168' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12653, N'1333018208278242730', CAST(N'2023-06-02T15:19:50.6876990' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12654, N'1333018204624352810', CAST(N'2023-06-02T15:19:56.4016353' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12655, N'1333018260661415910', CAST(N'2023-06-02T15:27:23.2058208' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12656, N'1333018245871607380', CAST(N'2023-06-02T15:27:31.7299551' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12657, N'1333018255442559240', CAST(N'2023-06-02T15:27:31.8157250' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12658, N'1333018262327385080', CAST(N'2023-06-02T15:27:36.6617563' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12659, N'1333018283970918770', CAST(N'2023-06-02T15:31:22.2041120' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12660, N'1333018277623929040', CAST(N'2023-06-02T15:31:36.1802642' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12661, N'1333018286944316390', CAST(N'2023-06-02T15:31:36.2361193' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12662, N'1333018279141070510', CAST(N'2023-06-02T15:31:40.9086526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12663, N'1333018333434290780', CAST(N'2023-06-02T15:40:18.1854587' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12664, N'1333018336061159930', CAST(N'2023-06-02T15:40:30.3581674' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12665, N'1333018339577875610', CAST(N'2023-06-02T15:40:30.3970639' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12666, N'1333018332920432150', CAST(N'2023-06-02T15:40:34.7915062' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12667, N'1333018346541688690', CAST(N'2023-06-02T15:44:23.4071392' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12668, N'1333018357268631220', CAST(N'2023-06-02T15:44:37.9816691' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12669, N'1333018352446387510', CAST(N'2023-06-02T15:44:37.9966271' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12670, N'1333018348396707650', CAST(N'2023-06-02T15:44:42.2682536' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12671, N'1333018389816229450', CAST(N'2023-06-02T15:48:49.0440682' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12672, N'1333018385233910730', CAST(N'2023-06-02T15:48:53.7963442' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12673, N'1333018389568365260', CAST(N'2023-06-02T15:48:53.8531907' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12674, N'1333018391471265480', CAST(N'2023-06-02T15:48:58.9960506' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12675, N'1333018419963930550', CAST(N'2023-06-02T15:54:39.7682403' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12676, N'1333018420258672610', CAST(N'2023-06-02T15:54:43.6985671' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12677, N'1333018420971565600', CAST(N'2023-06-02T15:54:43.7244970' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12678, N'1333018415119683150', CAST(N'2023-06-02T15:54:48.7355567' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12679, N'1333018426961981310', CAST(N'2023-06-02T15:57:03.8122543' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12680, N'1333018436898536550', CAST(N'2023-06-02T15:57:11.5807818' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12681, N'1333018423588761130', CAST(N'2023-06-02T15:57:11.5969123' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12682, N'1333018432372064790', CAST(N'2023-06-02T15:57:15.4478161' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12683, N'1333018459851346610', CAST(N'2023-06-02T16:02:20.7019391' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12684, N'1333018473160931930', CAST(N'2023-06-02T16:02:30.8812121' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12685, N'1333018473698040430', CAST(N'2023-06-02T16:02:30.9041508' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12686, N'1333018456917036820', CAST(N'2023-06-02T16:02:34.8412980' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12687, N'1333018486736518440', CAST(N'2023-06-02T16:06:10.4818029' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12688, N'1333018496815795040', CAST(N'2023-06-02T16:06:32.4281073' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12689, N'1333018485432563390', CAST(N'2023-06-02T16:06:32.5198623' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12690, N'1333018487396621580', CAST(N'2023-06-02T16:06:37.5389124' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12691, N'1333018501469947120', CAST(N'2023-06-02T16:09:03.3491133' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12692, N'1333018505571915260', CAST(N'2023-06-02T16:09:16.2587695' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12693, N'1333018509978576730', CAST(N'2023-06-02T16:09:16.2783829' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12694, N'1333018501703679730', CAST(N'2023-06-02T16:09:21.7469702' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12695, N'1333018521298208060', CAST(N'2023-06-02T16:11:43.9635041' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12696, N'1333018525266248550', CAST(N'2023-06-02T16:11:55.9454998' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12697, N'1333018517544632680', CAST(N'2023-06-02T16:11:55.9713137' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12698, N'1333018518305678740', CAST(N'2023-06-02T16:11:59.7646397' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12699, N'1333018537487995980', CAST(N'2023-06-02T16:14:18.9796160' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12700, N'1333018528894117810', CAST(N'2023-06-02T16:14:26.6657504' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12701, N'1333018529253489050', CAST(N'2023-06-02T16:14:26.6918825' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12702, N'1333018527433975990', CAST(N'2023-06-02T16:14:31.6262493' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12703, N'1333019994015004910', CAST(N'2023-06-02T20:19:02.2787325' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12704, N'1333020002736433720', CAST(N'2023-06-02T20:19:08.1611402' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12705, N'1333020015259314320', CAST(N'2023-06-02T20:19:08.1790510' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12706, N'1333020910742136980', CAST(N'2023-06-02T22:51:13.8231359' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12707, N'1333020929986383300', CAST(N'2023-06-02T22:53:22.2723178' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12708, N'1333020936641186410', CAST(N'2023-06-02T22:53:22.3191917' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12709, N'1333020945914462250', CAST(N'2023-06-02T22:54:42.7207730' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12710, N'1333020945214027920', CAST(N'2023-06-02T22:55:02.5244264' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12711, N'1333020945607291910', CAST(N'2023-06-02T22:55:02.5435873' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12712, N'1333020942385983360', CAST(N'2023-06-02T22:55:43.8480897' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12713, N'1333020947326719540', CAST(N'2023-06-02T22:55:47.2013609' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12714, N'1333020950384482710', CAST(N'2023-06-02T22:55:47.2133280' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12715, N'1333020967545045820', CAST(N'2023-06-02T22:59:01.0216948' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12716, N'1333020961600256480', CAST(N'2023-06-02T22:59:04.9825280' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12717, N'1333020959914673280', CAST(N'2023-06-02T22:59:04.9974883' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12718, N'1333020984934478590', CAST(N'2023-06-02T23:00:36.9582561' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12719, N'1333020969307172740', CAST(N'2023-06-02T23:00:41.1046601' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12720, N'1333020968634045680', CAST(N'2023-06-02T23:00:41.1186203' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12721, N'1333020984197737790', CAST(N'2023-06-02T23:02:46.2663370' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12722, N'1333020980937480600', CAST(N'2023-06-02T23:03:25.7484587' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12723, N'1333020995682967770', CAST(N'2023-06-02T23:03:25.7602128' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12724, N'1333020999382046290', CAST(N'2023-06-02T23:06:14.1687697' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12725, N'1333021315527795860', CAST(N'2023-06-02T23:58:56.4005619' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12726, N'1333021336303844770', CAST(N'2023-06-03T00:00:20.4151765' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12727, N'1333021335042376320', CAST(N'2023-06-03T00:00:20.4411047' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12728, N'1333021339376355020', CAST(N'2023-06-03T00:00:34.0445508' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12729, N'1333021351929861080', CAST(N'2023-06-03T00:04:50.6855119' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12730, N'1333021363725469680', CAST(N'2023-06-03T00:05:05.9306850' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12731, N'1333021358120721750', CAST(N'2023-06-03T00:05:05.9486357' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12732, N'1333021363120064090', CAST(N'2023-06-03T00:05:38.3163575' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12733, N'1333021392543354410', CAST(N'2023-06-03T00:08:30.8404307' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12734, N'1333021379071855590', CAST(N'2023-06-03T00:09:29.1193657' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12735, N'1333021405810717600', CAST(N'2023-06-03T00:11:57.5418731' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12736, N'1333021413800848860', CAST(N'2023-06-03T00:12:24.3185977' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12737, N'1333021405394001990', CAST(N'2023-06-03T00:13:07.1803767' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12738, N'1333021413780594910', CAST(N'2023-06-03T00:15:00.0601893' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12739, N'1333021426666519990', CAST(N'2023-06-03T00:15:32.4897684' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12740, N'1333021459707522920', CAST(N'2023-06-03T00:22:56.0964157' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12741, N'1333021466825717520', CAST(N'2023-06-03T00:23:00.7268885' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12742, N'1333021458676004490', CAST(N'2023-06-03T00:23:00.7767554' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12743, N'1333021479647692720', CAST(N'2023-06-03T00:23:25.6436673' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12744, N'1333021487534292920', CAST(N'2023-06-03T00:25:49.3957448' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12745, N'1333021494087977050', CAST(N'2023-06-03T00:25:56.1001472' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12746, N'1333021477134204710', CAST(N'2023-06-03T00:25:56.1171020' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12747, N'1333021491508645660', CAST(N'2023-06-03T00:26:35.5009069' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12748, N'1333026802591154100', CAST(N'2023-06-03T15:13:26.8668180' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12749, N'1333026813969456530', CAST(N'2023-06-03T15:13:31.9096529' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12750, N'1333026811382499670', CAST(N'2023-06-03T15:13:31.9256113' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12751, N'1333026893786285390', CAST(N'2023-06-03T15:26:16.4732069' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12752, N'1333026887747451660', CAST(N'2023-06-03T15:26:21.0512875' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12753, N'1333026892801807640', CAST(N'2023-06-03T15:26:21.0742251' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12754, N'1333026971182123010', CAST(N'2023-06-03T15:40:54.8638232' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12755, N'1333026999042161210', CAST(N'2023-06-03T15:43:03.6076455' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12756, N'1333026978779545670', CAST(N'2023-06-03T15:43:03.6435493' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12757, N'1333027180262271830', CAST(N'2023-06-03T16:13:55.4749428' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12758, N'1333027164860403010', CAST(N'2023-06-03T16:14:05.5902994' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12759, N'1333027165813362990', CAST(N'2023-06-03T16:14:05.6118526' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12760, N'1333029231398702680', CAST(N'2023-06-03T21:59:34.8010571' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12761, N'1333029259148761210', CAST(N'2023-06-03T22:01:42.1544489' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12762, N'1333029263326339300', CAST(N'2023-06-03T22:01:42.1604329' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12763, N'1333029271447346320', CAST(N'2023-06-03T22:02:03.0436322' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12764, N'1333029278965175480', CAST(N'2023-06-03T22:03:03.0773246' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12765, N'1333029284578520600', CAST(N'2023-06-03T22:06:10.6501816' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12766, N'1333029285563316130', CAST(N'2023-06-03T22:06:33.0621439' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12767, N'1333029292385836330', CAST(N'2023-06-03T22:06:33.0820905' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12768, N'1333029295879031850', CAST(N'2023-06-03T22:06:59.4142229' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12769, N'1333029322813037180', CAST(N'2023-06-03T22:10:38.3771409' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12770, N'1333029334917798060', CAST(N'2023-06-03T22:13:52.8829926' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12771, N'1333029327244165300', CAST(N'2023-06-03T22:14:29.1532781' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12772, N'1333029341671675240', CAST(N'2023-06-03T22:14:30.7869062' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12773, N'1333029343992497730', CAST(N'2023-06-03T22:15:10.3872606' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12774, N'1333029353103944910', CAST(N'2023-06-03T22:15:46.4245579' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12775, N'1333029349813878620', CAST(N'2023-06-03T22:18:17.9347952' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12776, N'1333029370862813270', CAST(N'2023-06-03T22:21:28.7128685' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12777, N'1333029387005220360', CAST(N'2023-06-03T22:23:16.2391849' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12778, N'1333029382276297740', CAST(N'2023-06-03T22:23:16.4236905' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12779, N'1333029384176630220', CAST(N'2023-06-03T22:23:24.7474121' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12780, N'1333029387171791780', CAST(N'2023-06-03T22:24:21.2027704' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12781, N'1333029409327975560', CAST(N'2023-06-03T22:27:05.8935445' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12782, N'1333029452305150790', CAST(N'2023-06-03T22:32:23.4521649' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12783, N'1333029442318043320', CAST(N'2023-06-03T22:32:23.4541590' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12784, N'1333029443358121300', CAST(N'2023-06-03T22:32:32.7607148' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12785, N'1333029461623987860', CAST(N'2023-06-03T22:36:22.4731577' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12786, N'1333029527839135590', CAST(N'2023-06-03T22:45:04.0888176' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12787, N'1333029521950508190', CAST(N'2023-06-03T22:45:04.1007837' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12788, N'1333029531147288380', CAST(N'2023-06-03T22:45:11.0254048' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12789, N'1333029545270914720', CAST(N'2023-06-03T22:47:39.4921729' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12790, N'1333029529864114780', CAST(N'2023-06-03T22:47:52.8763821' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12791, N'1333029543148896720', CAST(N'2023-06-03T22:47:52.9521787' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12792, N'1333029531942121820', CAST(N'2023-06-03T22:48:00.6091240' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12793, N'1333029542331372650', CAST(N'2023-06-03T22:49:02.9383376' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12794, N'1333029549308797010', CAST(N'2023-06-03T22:53:07.2272832' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12795, N'1333030160340886970', CAST(N'2023-06-04T00:31:53.2857032' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12796, N'1333030174343203560', CAST(N'2023-06-04T00:35:20.3332089' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12797, N'1333030183489714790', CAST(N'2023-06-04T00:35:20.3776031' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12798, N'1333030186204299460', CAST(N'2023-06-04T00:35:27.7924645' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12799, N'1333030195538085680', CAST(N'2023-06-04T00:36:48.8159465' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12800, N'1333030366419835840', CAST(N'2023-06-04T01:06:23.6479595' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12801, N'1333030379661384700', CAST(N'2023-06-04T01:07:56.6913058' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12802, N'1333030373459189510', CAST(N'2023-06-04T01:07:56.7518422' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12803, N'1333030380570631010', CAST(N'2023-06-04T01:07:56.7312908' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12804, N'1333030381552940460', CAST(N'2023-06-04T01:07:56.8075319' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12805, N'1333030380333589090', CAST(N'2023-06-04T01:07:56.8574257' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12806, N'1333030383494016350', CAST(N'2023-06-04T01:08:02.3296864' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12807, N'1333030379554216510', CAST(N'2023-06-04T01:08:28.9288962' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12808, N'1333030389123168530', CAST(N'2023-06-04T01:08:35.7237319' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12809, N'1333030395065894370', CAST(N'2023-06-04T01:08:58.9503339' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12810, N'1333030415646065610', CAST(N'2023-06-04T01:12:36.0286602' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12811, N'1333030411974920320', CAST(N'2023-06-04T01:12:41.2641525' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12812, N'1333030405354964920', CAST(N'2023-06-04T01:12:41.3998382' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12813, N'1333030437842646850', CAST(N'2023-06-04T01:16:47.4208352' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12814, N'1333030437573504450', CAST(N'2023-06-04T01:17:13.3352825' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12815, N'1333030437662066670', CAST(N'2023-06-04T01:18:53.5249444' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12816, N'1333030462309804460', CAST(N'2023-06-04T01:21:22.2328436' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12817, N'1333030464632358590', CAST(N'2023-06-04T01:21:22.2529473' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12818, N'1333030457917170860', CAST(N'2023-06-04T01:21:47.6904437' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12819, N'1333030472811031110', CAST(N'2023-06-04T01:21:58.1971102' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12820, N'1333030471193318700', CAST(N'2023-06-04T01:22:34.5978126' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12821, N'1333030483107189550', CAST(N'2023-06-04T01:26:50.2103470' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12822, N'1333030520535151310', CAST(N'2023-06-04T01:31:48.6404007' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12823, N'1333030517736066350', CAST(N'2023-06-04T01:31:57.7696715' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12824, N'1333030519675016620', CAST(N'2023-06-04T01:32:06.7544400' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12825, N'1333030533076718070', CAST(N'2023-06-04T01:33:11.2591910' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12826, N'1333030523528450280', CAST(N'2023-06-04T01:33:33.9524649' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12827, N'1333030534199456890', CAST(N'2023-06-04T01:33:50.7472877' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12828, N'1333030545959871480', CAST(N'2023-06-04T01:34:06.8041877' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12829, N'1333030544937283410', CAST(N'2023-06-04T01:34:20.2135045' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12830, N'1333030629773153660', CAST(N'2023-06-04T01:51:04.4229149' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12831, N'1333030646716140130', CAST(N'2023-06-04T01:51:19.9430030' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12832, N'1333030640635262500', CAST(N'2023-06-04T01:51:19.9744086' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12833, N'1333035429484577480', CAST(N'2023-06-04T15:11:45.2386716' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12834, N'1333035439602983630', CAST(N'2023-06-04T15:12:29.9557777' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12835, N'1333035437483945730', CAST(N'2023-06-04T15:12:29.9797137' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12836, N'1333035442712453270', CAST(N'2023-06-04T15:12:29.9906840' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12837, N'1333035437590811990', CAST(N'2023-06-04T15:12:30.0345663' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12838, N'1333035450872659140', CAST(N'2023-06-04T15:12:30.0654842' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12839, N'1333035441413235920', CAST(N'2023-06-04T15:12:33.5111306' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12840, N'1333035448308897320', CAST(N'2023-06-04T15:13:13.7726376' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12841, N'1333036171866531320', CAST(N'2023-06-04T17:16:04.2263534' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12842, N'1333036178779204470', CAST(N'2023-06-04T17:16:17.1556703' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12843, N'1333036196300434040', CAST(N'2023-06-04T17:16:17.1845927' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12844, N'1333036190149551830', CAST(N'2023-06-04T17:16:46.2967483' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12845, N'1333036183321078500', CAST(N'2023-06-04T17:16:56.7431116' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12846, N'1333036189106765030', CAST(N'2023-06-04T17:17:02.7447939' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12847, N'1333036192091582890', CAST(N'2023-06-04T17:17:02.7647405' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12848, N'1333036192648043850', CAST(N'2023-06-04T17:17:02.7866818' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12849, N'1333036185487679150', CAST(N'2023-06-04T17:17:02.8639860' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12850, N'1333036187423626420', CAST(N'2023-06-04T17:17:06.6130117' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12851, N'1333036186365606580', CAST(N'2023-06-04T17:17:30.0235348' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12852, N'1333036201372224930', CAST(N'2023-06-04T17:17:43.8251501' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12853, N'1333036201950067770', CAST(N'2023-06-04T17:17:47.1052536' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12854, N'1333036200630483980', CAST(N'2023-06-04T17:17:54.7195728' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12855, N'1333036204616420470', CAST(N'2023-06-04T17:17:59.0906421' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12856, N'1333036199297506570', CAST(N'2023-06-04T17:18:06.9346810' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12857, N'1333036201252962520', CAST(N'2023-06-04T17:18:19.3148654' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12858, N'1333036192159025610', CAST(N'2023-06-04T17:18:34.1960660' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12859, N'1333036214081348950', CAST(N'2023-06-04T17:21:33.1649413' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12860, N'1333036228228695600', CAST(N'2023-06-04T17:22:03.1683847' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12861, N'1333036220586576670', CAST(N'2023-06-04T17:22:28.0685977' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12862, N'1333036259997889200', CAST(N'2023-06-04T17:27:28.1247859' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12863, N'1333036273953342500', CAST(N'2023-06-04T17:29:17.7851637' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12864, N'1333036283737728890', CAST(N'2023-06-04T17:30:27.2655112' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12865, N'1333036287574210990', CAST(N'2023-06-04T17:31:17.4279916' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12866, N'1333036281756707840', CAST(N'2023-06-04T17:31:54.0178372' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12867, N'1333036293107447740', CAST(N'2023-06-04T17:32:31.6557189' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12868, N'1333036309619750650', CAST(N'2023-06-04T17:35:41.1543234' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12869, N'1333036305786602940', CAST(N'2023-06-04T17:36:19.5323870' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12870, N'1333036363963078930', CAST(N'2023-06-04T17:43:47.0934669' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12871, N'1333036349237626020', CAST(N'2023-06-04T17:44:13.2541358' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12872, N'1333036366050155770', CAST(N'2023-06-04T17:45:50.2646748' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12873, N'1333036420897548860', CAST(N'2023-06-04T17:54:01.7641652' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12874, N'1333036409571215730', CAST(N'2023-06-04T17:54:11.6534938' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12875, N'1333036409919078190', CAST(N'2023-06-04T17:54:39.3035356' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12876, N'1333037764111526620', CAST(N'2023-06-04T21:37:35.0821508' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12877, N'1333037752447304150', CAST(N'2023-06-04T21:38:02.5878115' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12878, N'1333037749888038060', CAST(N'2023-06-04T21:38:02.6050397' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12879, N'1333038066743864240', CAST(N'2023-06-04T22:32:11.7970201' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12880, N'1333038097402860320', CAST(N'2023-06-04T22:33:27.8732450' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12881, N'1333038092754680910', CAST(N'2023-06-04T22:33:27.9101468' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12882, N'1333038084474780440', CAST(N'2023-06-04T22:33:56.8927628' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12883, N'1333038140970984350', CAST(N'2023-06-04T22:40:16.7468493' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12884, N'1333038140470535520', CAST(N'2023-06-04T22:40:51.2665687' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12885, N'1333038181894069270', CAST(N'2023-06-04T22:48:07.0002239' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12886, N'1333038186126369210', CAST(N'2023-06-04T22:48:33.3498214' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12887, N'1333038175009483380', CAST(N'2023-06-04T22:48:33.3797409' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12888, N'1333038186629783150', CAST(N'2023-06-04T22:48:46.9743789' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12889, N'1333038424254785270', CAST(N'2023-06-04T23:29:30.3587916' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12890, N'1333038436283949370', CAST(N'2023-06-04T23:32:36.0174071' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12891, N'1333038443033056700', CAST(N'2023-06-04T23:32:47.1705087' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12892, N'1333038448096737370', CAST(N'2023-06-04T23:34:22.1213798' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12893, N'1333038449544750820', CAST(N'2023-06-04T23:34:29.8786274' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12894, N'1333038469547169000', CAST(N'2023-06-04T23:35:12.0534073' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12895, N'1333038460235707900', CAST(N'2023-06-04T23:35:18.5134467' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12896, N'1333038456127722170', CAST(N'2023-06-04T23:35:39.4953511' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12897, N'1333038478014576250', CAST(N'2023-06-04T23:36:48.2622723' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12898, N'1333038479473445180', CAST(N'2023-06-04T23:37:04.7812999' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12899, N'1333038481853175470', CAST(N'2023-06-04T23:39:51.9068273' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12900, N'1333038495204901720', CAST(N'2023-06-04T23:40:00.4659730' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12901, N'1333038487267561370', CAST(N'2023-06-04T23:40:00.4799357' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12902, N'1333038489662246650', CAST(N'2023-06-04T23:40:08.6377438' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12903, N'1333038500946696010', CAST(N'2023-06-04T23:40:36.2403336' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12904, N'1333038577069901760', CAST(N'2023-06-04T23:55:14.7197971' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12905, N'1333038573739222650', CAST(N'2023-06-04T23:55:28.6927931' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12906, N'1333038573160002260', CAST(N'2023-06-04T23:55:28.7336837' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12907, N'1333038594664032620', CAST(N'2023-06-04T23:55:39.3308863' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12908, N'1333038636953872690', CAST(N'2023-06-05T00:02:54.3955497' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12909, N'1333038619534424410', CAST(N'2023-06-05T00:03:02.8784508' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12910, N'1333038626983900850', CAST(N'2023-06-05T00:03:02.9392867' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12911, N'1333038621595015040', CAST(N'2023-06-05T00:03:10.3147596' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12912, N'1333038631914857290', CAST(N'2023-06-05T00:03:20.7571321' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12913, N'1333038669329808570', CAST(N'2023-06-05T00:08:20.1644960' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12914, N'1333038653781569120', CAST(N'2023-06-05T00:08:24.5227026' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12915, N'1333038670477915160', CAST(N'2023-06-05T00:08:24.5536197' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12916, N'1333038662513852620', CAST(N'2023-06-05T00:08:55.1122683' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12917, N'1333038681579376090', CAST(N'2023-06-05T00:11:15.7025557' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12918, N'1333038671750154290', CAST(N'2023-06-05T00:11:23.7405090' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12919, N'1333038688677927620', CAST(N'2023-06-05T00:11:23.7584617' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12920, N'1333038671993591210', CAST(N'2023-06-05T00:11:33.5149837' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12921, N'1333038687105861280', CAST(N'2023-06-05T00:13:16.2103441' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12922, N'1333038688603025450', CAST(N'2023-06-05T00:13:39.4276768' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12923, N'1333038685075131820', CAST(N'2023-06-05T00:13:39.4905077' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12924, N'1333038703487610600', CAST(N'2023-06-05T00:13:47.7905339' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12925, N'1333038712983419040', CAST(N'2023-06-05T00:18:03.7097234' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12926, N'1333038728273469420', CAST(N'2023-06-05T00:18:08.5784349' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12927, N'1333038711322675430', CAST(N'2023-06-05T00:18:08.6023705' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12928, N'1333038710744623980', CAST(N'2023-06-05T00:18:13.9264618' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12929, N'1333044736500879810', CAST(N'2023-06-05T17:02:57.2672558' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12930, N'1333044744118188310', CAST(N'2023-06-05T17:03:17.9625290' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12931, N'1333044760934953860', CAST(N'2023-06-05T17:03:17.9864650' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12932, N'1333044758249861890', CAST(N'2023-06-05T17:03:34.7060686' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12933, N'1333044760978091860', CAST(N'2023-06-05T17:03:40.7593251' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12934, N'1333044750675262170', CAST(N'2023-06-05T17:04:36.0491799' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12935, N'1333044755677492720', CAST(N'2023-06-05T17:05:37.8977260' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12936, N'1333044779899686440', CAST(N'2023-06-05T17:09:19.6582006' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12937, N'1333044795278217230', CAST(N'2023-06-05T17:09:31.0644381' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12938, N'1333044782608589330', CAST(N'2023-06-05T17:09:31.1003436' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12939, N'1333044783449768580', CAST(N'2023-06-05T17:09:35.6471737' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12940, N'1333044830437027900', CAST(N'2023-06-05T17:16:55.2340524' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12941, N'1333044829318469340', CAST(N'2023-06-05T17:17:18.7990688' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12942, N'1333044829115388000', CAST(N'2023-06-05T17:17:18.8299858' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12943, N'1333044831207221610', CAST(N'2023-06-05T17:17:42.3083420' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12944, N'1333044837652839080', CAST(N'2023-06-05T17:17:58.3998669' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12945, N'1333044843680853360', CAST(N'2023-06-05T17:18:18.7285077' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12946, N'1333044834005086780', CAST(N'2023-06-05T17:18:23.9342878' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12947, N'1333044850986114860', CAST(N'2023-06-05T17:19:21.9484186' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12948, N'1333044839908805860', CAST(N'2023-06-05T17:19:31.2249643' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12949, N'1333044856775409100', CAST(N'2023-06-05T17:19:31.2867996' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12950, N'1333044846993187830', CAST(N'2023-06-05T17:19:44.6803165' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12951, N'1333044846872341610', CAST(N'2023-06-05T17:20:22.9658222' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12952, N'1333044858050132710', CAST(N'2023-06-05T17:22:32.9292306' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12953, N'1333045014324175370', CAST(N'2023-06-05T17:48:20.0619923' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12954, N'1333045019263661730', CAST(N'2023-06-05T17:48:37.6597582' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12955, N'1333045019654254950', CAST(N'2023-06-05T17:48:37.7146087' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12956, N'1333045024309997100', CAST(N'2023-06-05T17:49:03.0168683' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12957, N'1333045033437836400', CAST(N'2023-06-05T17:49:07.4725449' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12958, N'1333045075876558950', CAST(N'2023-06-05T17:59:45.4856171' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12959, N'1333045133645106070', CAST(N'2023-06-05T18:06:27.7719737' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12960, N'1333045118897434470', CAST(N'2023-06-05T18:06:27.7889317' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12961, N'1333045139501975510', CAST(N'2023-06-05T18:06:34.7193156' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12962, N'1333047213445561500', CAST(N'2023-06-05T23:57:45.4662755' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12963, N'1333047244912635460', CAST(N'2023-06-05T23:58:32.2258640' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12964, N'1333047249361626220', CAST(N'2023-06-05T23:58:32.3305901' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12965, N'1333047248774285110', CAST(N'2023-06-05T23:58:42.4162041' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12966, N'1333047261786507240', CAST(N'2023-06-06T00:02:19.0960693' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12967, N'1333047266269004230', CAST(N'2023-06-06T00:02:31.9701596' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12968, N'1333047272095938150', CAST(N'2023-06-06T00:02:32.0319949' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12969, N'1333047305657524520', CAST(N'2023-06-06T00:07:55.9422961' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12970, N'1333047323232944770', CAST(N'2023-06-06T00:11:43.9512008' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12971, N'1333047328364580460', CAST(N'2023-06-06T00:12:11.0128874' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12972, N'1333047342140535480', CAST(N'2023-06-06T00:15:13.9705925' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12973, N'1333047394959004840', CAST(N'2023-06-06T00:23:27.2360194' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12974, N'1333047395566613360', CAST(N'2023-06-06T00:24:08.2910618' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12975, N'1333047404006796920', CAST(N'2023-06-06T00:24:08.3179885' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12976, N'1333047405551032460', CAST(N'2023-06-06T00:24:22.5955804' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12977, N'1333047404134530670', CAST(N'2023-06-06T00:27:07.4903245' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12978, N'1333047411202763330', CAST(N'2023-06-06T00:27:27.4608671' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12979, N'1333047523477461970', CAST(N'2023-06-06T00:47:57.5073053' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12980, N'1333047530093295200', CAST(N'2023-06-06T00:48:12.7076438' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12981, N'1333047532463936380', CAST(N'2023-06-06T00:48:12.7345695' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12982, N'1333047545562095420', CAST(N'2023-06-06T00:49:01.6779595' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12983, N'1333047581191843970', CAST(N'2023-06-06T00:53:21.9345361' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12984, N'1333047628942768860', CAST(N'2023-06-06T01:02:52.1319546' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12985, N'1333047627331714020', CAST(N'2023-06-06T01:02:52.1606920' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12986, N'1333047626718672140', CAST(N'2023-06-06T01:03:07.7495797' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12987, N'1333047624611769820', CAST(N'2023-06-06T01:03:15.9697977' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12988, N'1333047636180538370', CAST(N'2023-06-06T01:03:33.9851219' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12989, N'1333047641229077860', CAST(N'2023-06-06T01:03:36.9648123' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12990, N'1333047633700320090', CAST(N'2023-06-06T01:03:52.1227823' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12991, N'1333052881139971620', CAST(N'2023-06-06T15:41:11.6141065' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12992, N'1333052894835255690', CAST(N'2023-06-06T15:41:24.8768262' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12993, N'1333052907905672960', CAST(N'2023-06-06T15:41:24.8997661' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12994, N'1333052903842779670', CAST(N'2023-06-06T15:41:30.6954160' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12995, N'1333052900430213600', CAST(N'2023-06-06T15:41:51.3814484' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12996, N'1333052909954233000', CAST(N'2023-06-06T15:41:51.4213416' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12997, N'1333052905470923170', CAST(N'2023-06-06T15:41:52.6071657' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12998, N'1333052895715048420', CAST(N'2023-06-06T15:41:52.6081633' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (12999, N'1333052905386820890', CAST(N'2023-06-06T15:41:57.6017978' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13000, N'1333052903739963180', CAST(N'2023-06-06T15:42:10.4705043' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13001, N'1333052929121938660', CAST(N'2023-06-06T15:48:04.8863024' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13002, N'1333052945984901500', CAST(N'2023-06-06T15:48:33.8406563' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13003, N'1333052948574230780', CAST(N'2023-06-06T15:48:33.8675849' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13004, N'1333052986107211320', CAST(N'2023-06-06T15:54:36.3115451' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13005, N'1333052998123556170', CAST(N'2023-06-06T15:56:26.6904456' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13006, N'1333052997607374860', CAST(N'2023-06-06T15:56:26.7163772' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13007, N'1333053004029870150', CAST(N'2023-06-06T15:59:13.8829914' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13008, N'1333053017048616110', CAST(N'2023-06-06T15:59:24.5307467' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13009, N'1333053016140834240', CAST(N'2023-06-06T15:59:24.5496965' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13010, N'1333053013942869200', CAST(N'2023-06-06T16:01:31.9540403' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13011, N'1333053012815192180', CAST(N'2023-06-06T16:01:46.5883374' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13012, N'1333053013319666660', CAST(N'2023-06-06T16:01:46.6182580' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13013, N'1333053024076178410', CAST(N'2023-06-06T16:02:18.9311288' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13014, N'1333053041920816470', CAST(N'2023-06-06T16:04:51.3229076' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13015, N'1333053037063951190', CAST(N'2023-06-06T16:04:56.9534846' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13016, N'1333053042692468330', CAST(N'2023-06-06T16:05:05.5616623' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13017, N'1333053042792459740', CAST(N'2023-06-06T16:06:29.9150830' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13018, N'1333053057543370490', CAST(N'2023-06-06T16:08:26.0396552' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13019, N'1333053078646508040', CAST(N'2023-06-06T16:09:47.8415832' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13020, N'1333053091454222190', CAST(N'2023-06-06T16:14:51.5483455' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13021, N'1333053649076162070', CAST(N'2023-06-06T17:47:59.4676312' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13022, N'1333053649326086040', CAST(N'2023-06-06T17:48:05.9240451' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13023, N'1333053650440953540', CAST(N'2023-06-06T17:48:05.9589532' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13024, N'1333061853127423390', CAST(N'2023-06-07T16:35:06.6517750' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13025, N'1333061856167333370', CAST(N'2023-06-07T16:35:34.3567589' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13026, N'1333061870604565770', CAST(N'2023-06-07T16:35:34.3747109' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13027, N'1333061864562345960', CAST(N'2023-06-07T16:37:22.9698742' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13028, N'1333061890032857670', CAST(N'2023-06-07T16:39:19.0592089' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13029, N'1333061900467372340', CAST(N'2023-06-07T16:40:30.2973571' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13030, N'1333061903272531450', CAST(N'2023-06-07T16:40:48.4454080' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13031, N'1333061901876976500', CAST(N'2023-06-07T16:41:21.3334085' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13032, N'1333061920110338300', CAST(N'2023-06-07T16:45:42.9362334' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13033, N'1333061926222133460', CAST(N'2023-06-07T16:46:34.9737872' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13034, N'1333063462758443260', CAST(N'2023-06-07T21:03:37.9017368' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13035, N'1333063984987933810', CAST(N'2023-06-07T22:31:25.7780864' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13036, N'1333064362272893820', CAST(N'2023-06-07T23:33:29.5394741' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13037, N'1333064362503987740', CAST(N'2023-06-07T23:33:38.5799524' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13038, N'1333064381990800510', CAST(N'2023-06-07T23:33:38.6098734' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13039, N'1333064372053010780', CAST(N'2023-06-07T23:33:38.6248329' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13040, N'1333064379876718840', CAST(N'2023-06-07T23:33:38.6737024' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13041, N'1333064368214668340', CAST(N'2023-06-07T23:33:38.9250289' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13042, N'1333064365250089180', CAST(N'2023-06-07T23:34:07.1649054' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13043, N'1333064464590657470', CAST(N'2023-06-07T23:47:23.6421257' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13044, N'1333064448011580130', CAST(N'2023-06-07T23:47:31.6722718' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13045, N'1333064462644415900', CAST(N'2023-06-07T23:47:31.6872319' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13046, N'1333064456123702650', CAST(N'2023-06-07T23:47:31.6982033' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13047, N'1333064454900536160', CAST(N'2023-06-07T23:47:31.7131618' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13048, N'1333064457943030740', CAST(N'2023-06-07T23:47:31.7311152' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13049, N'1333064470671289920', CAST(N'2023-06-07T23:49:19.8485069' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13050, N'1333064458028537870', CAST(N'2023-06-07T23:49:38.8339620' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13051, N'1333064473486852390', CAST(N'2023-06-07T23:51:53.5885201' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13052, N'1333064483639648970', CAST(N'2023-06-07T23:52:19.8084283' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13053, N'1333064490518083660', CAST(N'2023-06-07T23:52:19.8572982' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13054, N'1333064493019762170', CAST(N'2023-06-07T23:52:19.8762463' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13055, N'1333064490850209960', CAST(N'2023-06-07T23:52:19.8902086' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13056, N'1333064476088723840', CAST(N'2023-06-07T23:52:19.9061662' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13057, N'1333064477464125800', CAST(N'2023-06-07T23:52:25.0635121' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13058, N'1333064495210085870', CAST(N'2023-06-07T23:55:32.4242465' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13059, N'1333064503144596740', CAST(N'2023-06-07T23:55:37.9947691' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13060, N'1333064503599720520', CAST(N'2023-06-07T23:55:38.0087314' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13061, N'1333064513161966620', CAST(N'2023-06-07T23:55:38.0266849' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13062, N'1333064498260535560', CAST(N'2023-06-07T23:55:38.0406502' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13063, N'1333064504836431720', CAST(N'2023-06-07T23:55:38.0516172' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13064, N'1333064509078672710', CAST(N'2023-06-07T23:55:43.3084795' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13065, N'1333064510495048570', CAST(N'2023-06-07T23:57:45.1917512' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13066, N'1333064528593262540', CAST(N'2023-06-07T23:58:26.5813716' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13067, N'1333064531498017380', CAST(N'2023-06-07T23:58:26.6003211' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13068, N'1333064517802422100', CAST(N'2023-06-07T23:58:26.6142832' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13069, N'1333064513829891330', CAST(N'2023-06-07T23:58:26.6262516' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13070, N'1333064527698452670', CAST(N'2023-06-07T23:58:26.6422093' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13071, N'1333064531200729510', CAST(N'2023-06-07T23:58:29.5425484' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13072, N'1333064534233504980', CAST(N'2023-06-07T23:58:48.7610505' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13073, N'1333064514916596290', CAST(N'2023-06-07T23:58:57.8100773' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13074, N'1333064534047509560', CAST(N'2023-06-07T23:58:59.4458043' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13075, N'1333064538362621440', CAST(N'2023-06-08T00:00:35.3781102' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13076, N'1333064533046471770', CAST(N'2023-06-08T00:01:07.9691699' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13077, N'1333064557504981340', CAST(N'2023-06-08T00:03:50.1466546' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13078, N'1333064562775982720', CAST(N'2023-06-08T00:07:56.3277509' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13079, N'1333064580106846920', CAST(N'2023-06-08T00:08:23.3157848' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13080, N'1333064576596621810', CAST(N'2023-06-08T00:08:23.3337389' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13081, N'1333064580986725030', CAST(N'2023-06-08T00:08:23.3836034' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13082, N'1333064580244932810', CAST(N'2023-06-08T00:08:23.4105309' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13083, N'1333064591034482550', CAST(N'2023-06-08T00:08:23.4504256' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13084, N'1333064581778752410', CAST(N'2023-06-08T00:08:27.9685608' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13085, N'1333064579162616930', CAST(N'2023-06-08T00:08:51.7266078' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13086, N'1333064625366382630', CAST(N'2023-06-08T00:18:17.5404234' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13087, N'1333064748134930300', CAST(N'2023-06-08T00:34:39.5260572' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13088, N'1333064749809677890', CAST(N'2023-06-08T00:35:50.0824787' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13089, N'1333064735049512750', CAST(N'2023-06-08T00:35:50.1054201' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13090, N'1333064744680553780', CAST(N'2023-06-08T00:35:50.1123987' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13091, N'1333064738263618600', CAST(N'2023-06-08T00:35:50.1423173' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13092, N'1333064735604510240', CAST(N'2023-06-08T00:35:50.1752305' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13093, N'1333064753727709440', CAST(N'2023-06-08T00:36:06.6320961' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13094, N'1333064757471542840', CAST(N'2023-06-08T00:36:22.4265974' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13095, N'1333064757229799710', CAST(N'2023-06-08T00:36:28.1952482' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13096, N'1333064749687711820', CAST(N'2023-06-08T00:36:34.1122404' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13097, N'1333064750310178790', CAST(N'2023-06-08T00:36:41.6735315' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13098, N'1333064773202802880', CAST(N'2023-06-08T00:40:28.6085353' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13099, N'1333064776306872530', CAST(N'2023-06-08T00:41:42.0732780' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13100, N'1333064777719157240', CAST(N'2023-06-08T00:41:42.0892347' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13101, N'1333064788776654710', CAST(N'2023-06-08T00:41:42.1331176' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13102, N'1333064776521407530', CAST(N'2023-06-08T00:41:42.1720140' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13103, N'1333064784168620310', CAST(N'2023-06-08T00:41:42.1929574' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13104, N'1333064782217714830', CAST(N'2023-06-08T00:41:45.9974449' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13105, N'1333078442186606830', CAST(N'2023-06-09T14:40:54.0878519' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13106, N'1333078451770782360', CAST(N'2023-06-09T14:41:32.4791395' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13107, N'1333078455777526740', CAST(N'2023-06-09T14:41:32.5160490' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13108, N'1333078460949477900', CAST(N'2023-06-09T14:41:32.5230227' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13109, N'1333078469531585380', CAST(N'2023-06-09T14:41:32.5389851' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13110, N'1333078469432107090', CAST(N'2023-06-09T14:41:32.5639131' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13111, N'1333078461642115570', CAST(N'2023-06-09T14:41:39.6487533' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13112, N'1333078474836361720', CAST(N'2023-06-09T14:44:09.3976548' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13113, N'1333078468749282230', CAST(N'2023-06-09T14:44:17.8059282' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13114, N'1333078481001967230', CAST(N'2023-06-09T14:44:17.8298666' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13115, N'1333078467118719220', CAST(N'2023-06-09T14:44:17.8817253' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13116, N'1333078486802230720', CAST(N'2023-06-09T14:44:17.8837197' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13117, N'1333078473585657980', CAST(N'2023-06-09T14:44:17.9006752' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13118, N'1333078477068905620', CAST(N'2023-06-09T14:44:21.6840999' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13119, N'1333078950494345810', CAST(N'2023-06-09T16:05:45.4442204' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13120, N'1333078960655264950', CAST(N'2023-06-09T16:06:00.3129656' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13121, N'1333078965956800150', CAST(N'2023-06-09T16:06:00.3478613' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13122, N'1333078975393227970', CAST(N'2023-06-09T16:06:21.0718642' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13123, N'1333078972107375470', CAST(N'2023-06-09T16:06:21.0826757' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13124, N'1333078958876426940', CAST(N'2023-06-09T16:06:21.1527291' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13125, N'1333078977496056550', CAST(N'2023-06-09T16:06:21.1599288' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13126, N'1333078977990726080', CAST(N'2023-06-09T16:06:21.1789764' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13127, N'1333078962992121210', CAST(N'2023-06-09T16:06:24.1890143' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13128, N'1333078982191086600', CAST(N'2023-06-09T16:08:27.6773446' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13129, N'1333078986199764420', CAST(N'2023-06-09T16:08:58.9813449' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13130, N'1333078994021969920', CAST(N'2023-06-09T16:09:08.8198145' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13131, N'1333078989911368610', CAST(N'2023-06-09T16:11:35.6439660' AS DateTime2))
GO
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13132, N'1333079004152624740', CAST(N'2023-06-09T16:11:41.1972677' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13133, N'1333079005581552890', CAST(N'2023-06-09T16:11:50.1627122' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13134, N'1333078999420669330', CAST(N'2023-06-09T16:11:56.0668730' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13135, N'1333079082624372010', CAST(N'2023-06-09T16:25:24.8405540' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13136, N'1333079080328070220', CAST(N'2023-06-09T16:25:41.7059980' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13137, N'1333079084666720560', CAST(N'2023-06-09T16:25:41.7775837' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13138, N'1333079090669024620', CAST(N'2023-06-09T16:25:55.0181181' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13139, N'1333082102751218600', CAST(N'2023-06-10T00:52:08.1982874' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13140, N'1333082192976761540', CAST(N'2023-06-10T01:05:00.2505329' AS DateTime2))
INSERT [dbo].[LST_REQUEST_TOKEN] ([ID], [Token], [CreateDate]) VALUES (13141, N'1333082203267112610', CAST(N'2023-06-10T01:05:00.2543011' AS DateTime2))
SET IDENTITY_INSERT [dbo].[LST_REQUEST_TOKEN] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ON 

INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'عقد إيجار', N'سسس', 1, CAST(N'2023-03-16T20:25:39.9985698' AS DateTime2), CAST(N'2023-03-16T20:25:39.9985698' AS DateTime2), 0, 0)
INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'jdsj', N'wwwww', 0, CAST(N'2023-03-16T20:25:56.8631891' AS DateTime2), CAST(N'2023-03-16T20:26:04.9005530' AS DateTime2), 0, 0)
INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'جواز سفر', N'', 1, CAST(N'2023-03-16T20:26:19.5643948' AS DateTime2), CAST(N'2023-03-16T20:26:19.5643948' AS DateTime2), 0, 0)
INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, N'عقد عمل', N'', 1, CAST(N'2023-03-16T20:26:28.9501078' AS DateTime2), CAST(N'2023-03-16T20:26:28.9501078' AS DateTime2), 0, 0)
INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, N'hg', N'', 1, CAST(N'2023-05-24T17:04:32.2853991' AS DateTime2), CAST(N'2023-05-24T17:04:32.2853991' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_GROUP] ON 

INSERT [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId], [Name], [ParentGroupId], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'مجموعة-1', NULL, N'لا يوجد', 0, 1, CAST(N'2023-03-11T22:59:14.7538153' AS DateTime2), CAST(N'2023-03-11T22:59:14.7538153' AS DateTime2), NULL, NULL)
INSERT [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId], [Name], [ParentGroupId], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, N'مجموعة 3', NULL, N'', 1, 1, CAST(N'2023-03-11T23:06:32.9255545' AS DateTime2), CAST(N'2023-03-11T23:30:02.6735160' AS DateTime2), NULL, 0)
INSERT [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId], [Name], [ParentGroupId], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (6, N'مجموعة-2', 4, N'', 0, 1, CAST(N'2023-05-12T14:37:57.7000705' AS DateTime2), CAST(N'2023-05-12T21:44:01.1364714' AS DateTime2), 0, 0)
INSERT [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId], [Name], [ParentGroupId], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (7, N'موردين الكويت', 6, N'', 0, 1, CAST(N'2023-05-24T15:19:15.1682050' AS DateTime2), CAST(N'2023-05-24T15:19:15.1682050' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_GROUP] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_TYPE] ON 

INSERT [dbo].[LST_SUPPLIER_TYPE] ([SupplierTypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'مورد مؤقت', N'', 1, CAST(N'2023-03-12T00:30:54.0565480' AS DateTime2), CAST(N'2023-03-13T17:53:53.2196698' AS DateTime2), NULL, NULL)
INSERT [dbo].[LST_SUPPLIER_TYPE] ([SupplierTypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'مورد خضار', N'لا يوجد', 1, CAST(N'2023-03-12T00:34:08.6232293' AS DateTime2), CAST(N'2023-03-12T00:34:31.2055870' AS DateTime2), NULL, NULL)
INSERT [dbo].[LST_SUPPLIER_TYPE] ([SupplierTypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'مورد مستمر', N'ب', 1, CAST(N'2023-03-13T17:53:27.2850726' AS DateTime2), CAST(N'2023-05-24T15:19:54.1098254' AS DateTime2), NULL, 0)
INSERT [dbo].[LST_SUPPLIER_TYPE] ([SupplierTypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, N'نوع جديد', N'', 1, CAST(N'2023-05-28T18:05:17.7040459' AS DateTime2), CAST(N'2023-05-28T18:05:17.7040459' AS DateTime2), 0, 0)
INSERT [dbo].[LST_SUPPLIER_TYPE] ([SupplierTypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, N'نوع جديد', N'', 1, CAST(N'2023-05-29T17:11:11.3676065' AS DateTime2), CAST(N'2023-05-29T17:11:11.3676065' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_TYPE] OFF
GO
ALTER TABLE [dbo].[GEN_ASSISTANT_SUPPLIER] ADD  CONSTRAINT [DF_GEN_ASSISTANT_SUPPLIER_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_ASSISTANT_SUPPLIER] ADD  CONSTRAINT [DF_GEN_ASSISTANT_SUPPLIER_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_BANK] ADD  CONSTRAINT [DF_GEN_BANK_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_BANK] ADD  CONSTRAINT [DF_GEN_BANK_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_BRAND] ADD  CONSTRAINT [DF_GEN_BRAND_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_BRAND] ADD  CONSTRAINT [DF_GEN_BRAND_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_Item_Main_Cost]  DEFAULT ((0)) FOR [MainCost]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_Cost]  DEFAULT ((0)) FOR [Cost]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_ConsumerProfitPerc]  DEFAULT ((0)) FOR [ConsumerProfitPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_WholesaleProfitPerc]  DEFAULT ((0)) FOR [WholesaleProfitPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_ConsumerDiscPerc]  DEFAULT ((0)) FOR [ConsumerDiscPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_WholesaleDiscPerc]  DEFAULT ((0)) FOR [WholesaleDiscPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_FreePerc]  DEFAULT ((0)) FOR [FreePerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_DiscPerc]  DEFAULT ((0)) FOR [DiscPerc]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_Item_Main_Price]  DEFAULT ((0)) FOR [MainPrice]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_WholesalePrice]  DEFAULT ((0)) FOR [WholesalePrice]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_IsSpecialOffer]  DEFAULT ((0)) FOR [IsSpecialOffer]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_IsWeight]  DEFAULT ((0)) FOR [IsWeight]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_IsContainExpiryDate]  DEFAULT ((0)) FOR [IsContainExpiryDate]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_IsSellNotAllow]  DEFAULT ((0)) FOR [IsSellNotAllow]
GO
ALTER TABLE [dbo].[GEN_ITEM] ADD  CONSTRAINT [DF_GEN_ITEM_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] ADD  CONSTRAINT [DF_GEN_ITEM_ALLOWED_TRANSACTION_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM_CATEGORY] ADD  CONSTRAINT [DF_GEN_ITEM_Category_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_ITEM_CATEGORY] ADD  CONSTRAINT [DF_GEN_ITEM_Category_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM_GENERALIZATION] ADD  CONSTRAINT [DF_GEN_ITEM_GENERALIZATION_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION] ADD  CONSTRAINT [DF_GEN_ITEM_LOCATION_Balance]  DEFAULT ((0)) FOR [Balance]
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION] ADD  CONSTRAINT [DF_GEN_ITEM_LOCATION_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT] ADD  CONSTRAINT [DF_GEN_ITEM_UNIT_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT] ADD  CONSTRAINT [DF_GEN_ITEM_UNIT_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_LOCATION] ADD  CONSTRAINT [DF_GEN_LOCATION_PurCashCode]  DEFAULT ((0)) FOR [PurCashCode]
GO
ALTER TABLE [dbo].[GEN_LOCATION] ADD  CONSTRAINT [DF_GEN_LOCATION_IsDirectItemConnect]  DEFAULT ((0)) FOR [IsDirectItemConnect]
GO
ALTER TABLE [dbo].[GEN_LOCATION] ADD  CONSTRAINT [DF_GEN_LOCATION_Custody_Account]  DEFAULT ((0)) FOR [CustodyAccount]
GO
ALTER TABLE [dbo].[GEN_LOCATION] ADD  CONSTRAINT [DF_GEN_LOCATION_CustodyControlAccount]  DEFAULT ((0)) FOR [CustodyControlAccount]
GO
ALTER TABLE [dbo].[GEN_LOCATION] ADD  CONSTRAINT [DF_GEN_LOCATION_ZReadExtrasCode]  DEFAULT ((0)) FOR [ZReadExtrasCode]
GO
ALTER TABLE [dbo].[GEN_LOCATION] ADD  CONSTRAINT [DF_GEN_LOCATION_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[GEN_LOCATION] ADD  CONSTRAINT [DF_GEN_LOCATION_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] ADD  CONSTRAINT [DF_GEN_SUPPLIER_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] ADD  CONSTRAINT [DF_GEN_SUPPLIER_IsAllowedPO]  DEFAULT ((1)) FOR [IsAllowedPO]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] ADD  CONSTRAINT [DF_GEN_SUPPLIER_IsAllowedReceipt]  DEFAULT ((1)) FOR [IsAllowedReceipt]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] ADD  CONSTRAINT [DF_GEN_SUPPLIER_IsAllowedReturn]  DEFAULT ((1)) FOR [IsAllowedDirectReturn]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] ADD  CONSTRAINT [DF_GEN_SUPPLIER_IsAllowedReturnDiscount]  DEFAULT ((1)) FOR [IsAllowedReturnDiscount]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] ADD  CONSTRAINT [DF_GEN_SUPPLIER_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] ADD  CONSTRAINT [DF_GEN_SUPPLIER_IsAllowCashingChecks]  DEFAULT ((1)) FOR [IsAllowCashingChecks]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_DOCUMENT] ADD  CONSTRAINT [DF_GEN_SUPPLIER_DOCUMENT_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE] ADD  CONSTRAINT [DF_GEN_SUPPLIER_PHONE_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] ADD  CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] ADD  CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] ADD  CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_SPECIFY_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_UNIT] ADD  CONSTRAINT [DF_GEN_UNIT_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_UNIT] ADD  CONSTRAINT [DF_GEN_UNIT_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[INV_RECEIPT] ADD  CONSTRAINT [DF_INV_RECEIVE_IsRecieveAll]  DEFAULT ((1)) FOR [IsRecieveAll]
GO
ALTER TABLE [dbo].[INV_RECEIPT] ADD  CONSTRAINT [DF_INV_RECEIVE_IsTransfer]  DEFAULT ((0)) FOR [IsTransfer]
GO
ALTER TABLE [dbo].[INV_RECEIPT] ADD  CONSTRAINT [DF_INV_RECEIVE_ISAccountTransfer]  DEFAULT ((0)) FOR [ISAccountTransfer]
GO
ALTER TABLE [dbo].[INV_RECEIPT] ADD  CONSTRAINT [DF_INV_RECEIVE_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS] ADD  CONSTRAINT [DF_INV_RECEIPT_DETAILS_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[LST_CountriesCodes] ADD  CONSTRAINT [DF_LST_CountriesCodes_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[LST_CountriesCodes] ADD  CONSTRAINT [DF_LST_CountriesCodes_currencyId]  DEFAULT ((0)) FOR [currencyId]
GO
ALTER TABLE [dbo].[LST_COUNTRY] ADD  CONSTRAINT [DF_LST_COUNTRY_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[LST_LOCATION_TYPE] ADD  CONSTRAINT [DF_LST_LOCATION_TYPE_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ADD  CONSTRAINT [DF_LST_SUPPLIER_DOCUMENT_TYPE_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] ADD  CONSTRAINT [DF_SupplierGroups_Stopped]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] ADD  CONSTRAINT [DF_SupplierGroups_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_TYPE] ADD  CONSTRAINT [DF_SupplierTypes_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[PUR_PROMOTION] ADD  CONSTRAINT [DF_PUR_PROMOTION_IsStoped]  DEFAULT ((0)) FOR [IsStoped]
GO
ALTER TABLE [dbo].[PUR_PROMOTION] ADD  CONSTRAINT [DF_PUR_PROMOTION_PromotionPercentage]  DEFAULT ((0)) FOR [PromotionPercentage]
GO
ALTER TABLE [dbo].[PUR_PROMOTION] ADD  CONSTRAINT [DF_PUR_PROMOTION_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS] ADD  CONSTRAINT [DF_PUR_PROMOTION_DETAILS_IsItemStoped]  DEFAULT ((0)) FOR [IsItemStoped]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS] ADD  CONSTRAINT [DF_PUR_PROMOTION_DETAILS_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_IsApproved]  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Main_Cost]  DEFAULT ((0)) FOR [MainCost]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Main_Price]  DEFAULT ((0)) FOR [MainPrice]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_ITEM]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_GEN_BRAND] FOREIGN KEY([BrandId])
REFERENCES [dbo].[GEN_BRAND] ([BrandId])
GO
ALTER TABLE [dbo].[GEN_ITEM] CHECK CONSTRAINT [FK_GEN_ITEM_GEN_BRAND]
GO
ALTER TABLE [dbo].[GEN_ITEM]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_GEN_ITEM_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[GEN_ITEM_CATEGORY] ([CategoryId])
GO
ALTER TABLE [dbo].[GEN_ITEM] CHECK CONSTRAINT [FK_GEN_ITEM_GEN_ITEM_Category]
GO
ALTER TABLE [dbo].[GEN_ITEM]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_GEN_SUPPLIER] FOREIGN KEY([SupId])
REFERENCES [dbo].[GEN_SUPPLIER] ([SupId])
GO
ALTER TABLE [dbo].[GEN_ITEM] CHECK CONSTRAINT [FK_GEN_ITEM_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_ITEM]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_LST_COUNTRY] FOREIGN KEY([CountryId])
REFERENCES [dbo].[LST_COUNTRY] ([CountryId])
GO
ALTER TABLE [dbo].[GEN_ITEM] CHECK CONSTRAINT [FK_GEN_ITEM_LST_COUNTRY]
GO
ALTER TABLE [dbo].[GEN_ITEM_ALLOWED_TRANSACTION]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_ALLOWED_TRANSACTION_GEN_ITEM] FOREIGN KEY([ItemId])
REFERENCES [dbo].[GEN_ITEM] ([ItemId])
GO
ALTER TABLE [dbo].[GEN_ITEM_ALLOWED_TRANSACTION] CHECK CONSTRAINT [FK_GEN_ITEM_ALLOWED_TRANSACTION_GEN_ITEM]
GO
ALTER TABLE [dbo].[GEN_ITEM_CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_Category_GEN_ITEM_Category] FOREIGN KEY([CategoryParentId])
REFERENCES [dbo].[GEN_ITEM_CATEGORY] ([CategoryId])
GO
ALTER TABLE [dbo].[GEN_ITEM_CATEGORY] CHECK CONSTRAINT [FK_GEN_ITEM_Category_GEN_ITEM_Category]
GO
ALTER TABLE [dbo].[GEN_ITEM_GENERALIZATION]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_GENERALIZATION_GEN_ITEM] FOREIGN KEY([ItemId])
REFERENCES [dbo].[GEN_ITEM] ([ItemId])
GO
ALTER TABLE [dbo].[GEN_ITEM_GENERALIZATION] CHECK CONSTRAINT [FK_GEN_ITEM_GENERALIZATION_GEN_ITEM]
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_LOCATION_GEN_ITEM] FOREIGN KEY([ItemId])
REFERENCES [dbo].[GEN_ITEM] ([ItemId])
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION] CHECK CONSTRAINT [FK_GEN_ITEM_LOCATION_GEN_ITEM]
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_LOCATION_GEN_LOCATION] FOREIGN KEY([LocationId])
REFERENCES [dbo].[GEN_LOCATION] ([LocationId])
GO
ALTER TABLE [dbo].[GEN_ITEM_LOCATION] CHECK CONSTRAINT [FK_GEN_ITEM_LOCATION_GEN_LOCATION]
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_UNIT_GEN_ITEM] FOREIGN KEY([ItemId])
REFERENCES [dbo].[GEN_ITEM] ([ItemId])
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT] CHECK CONSTRAINT [FK_GEN_ITEM_UNIT_GEN_ITEM]
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT]  WITH CHECK ADD  CONSTRAINT [FK_GEN_ITEM_UNIT_GEN_UNIT] FOREIGN KEY([UnitId])
REFERENCES [dbo].[GEN_UNIT] ([UnitId])
GO
ALTER TABLE [dbo].[GEN_ITEM_UNIT] CHECK CONSTRAINT [FK_GEN_ITEM_UNIT_GEN_UNIT]
GO
ALTER TABLE [dbo].[GEN_LOCATION]  WITH CHECK ADD  CONSTRAINT [FK_GEN_LOCATION_LST_LOCATION_TYPE] FOREIGN KEY([LocationTypeId])
REFERENCES [dbo].[LST_LOCATION_TYPE] ([LocationTypeId])
GO
ALTER TABLE [dbo].[GEN_LOCATION] CHECK CONSTRAINT [FK_GEN_LOCATION_LST_LOCATION_TYPE]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_GEN_ASSISTANT_SUPPLIER] FOREIGN KEY([AssistantSupId])
REFERENCES [dbo].[GEN_ASSISTANT_SUPPLIER] ([AssistantSupId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] CHECK CONSTRAINT [FK_GEN_SUPPLIER_GEN_ASSISTANT_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_GEN_BANK] FOREIGN KEY([BankId])
REFERENCES [dbo].[GEN_BANK] ([BankId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] CHECK CONSTRAINT [FK_GEN_SUPPLIER_GEN_BANK]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_LST_SUPPLIER_GROUP] FOREIGN KEY([SupplierGroupId])
REFERENCES [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] CHECK CONSTRAINT [FK_GEN_SUPPLIER_LST_SUPPLIER_GROUP]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_LST_SUPPLIER_TYPE] FOREIGN KEY([SupplierTypeId])
REFERENCES [dbo].[LST_SUPPLIER_TYPE] ([SupplierTypeId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] CHECK CONSTRAINT [FK_GEN_SUPPLIER_LST_SUPPLIER_TYPE]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_DOCUMENT]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_DOCUMENT_GEN_SUPPLIER] FOREIGN KEY([SupId])
REFERENCES [dbo].[GEN_SUPPLIER] ([SupId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_DOCUMENT] CHECK CONSTRAINT [FK_GEN_SUPPLIER_DOCUMENT_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_DOCUMENT]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_DOCUMENT_LST_SUPPLIER_DOCUMENT_TYPE] FOREIGN KEY([TypeId])
REFERENCES [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_DOCUMENT] CHECK CONSTRAINT [FK_GEN_SUPPLIER_DOCUMENT_LST_SUPPLIER_DOCUMENT_TYPE]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_PHONE_GEN_SUPPLIER] FOREIGN KEY([SupId])
REFERENCES [dbo].[GEN_SUPPLIER] ([SupId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE] CHECK CONSTRAINT [FK_GEN_SUPPLIER_PHONE_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_PHONE_LST_PHONE_TYPE] FOREIGN KEY([PhoneTypeID])
REFERENCES [dbo].[LST_PHONE_TYPE] ([PhoneTypeId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE] CHECK CONSTRAINT [FK_GEN_SUPPLIER_PHONE_LST_PHONE_TYPE]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_SECTOR_GEN_SUPPLIER] FOREIGN KEY([SupId])
REFERENCES [dbo].[GEN_SUPPLIER] ([SupId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] CHECK CONSTRAINT [FK_GEN_SUPPLIER_SECTOR_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_SECTOR_SPECIFY_GEN_SUPPLIER] FOREIGN KEY([SupId])
REFERENCES [dbo].[GEN_SUPPLIER] ([SupId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] CHECK CONSTRAINT [FK_GEN_SUPPLIER_SECTOR_SPECIFY_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_SECTOR_SPECIFY_GEN_SUPPLIER_SECTOR] FOREIGN KEY([SupSectorId])
REFERENCES [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] CHECK CONSTRAINT [FK_GEN_SUPPLIER_SECTOR_SPECIFY_GEN_SUPPLIER_SECTOR]
GO
ALTER TABLE [dbo].[INV_RECEIPT]  WITH CHECK ADD  CONSTRAINT [FK_INV_RECEIPT_GEN_LOCATION] FOREIGN KEY([LocationId])
REFERENCES [dbo].[GEN_LOCATION] ([LocationId])
GO
ALTER TABLE [dbo].[INV_RECEIPT] CHECK CONSTRAINT [FK_INV_RECEIPT_GEN_LOCATION]
GO
ALTER TABLE [dbo].[INV_RECEIPT]  WITH CHECK ADD  CONSTRAINT [FK_INV_RECEIPT_GEN_SUPPLIER] FOREIGN KEY([SupId])
REFERENCES [dbo].[GEN_SUPPLIER] ([SupId])
GO
ALTER TABLE [dbo].[INV_RECEIPT] CHECK CONSTRAINT [FK_INV_RECEIPT_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[INV_RECEIPT]  WITH CHECK ADD  CONSTRAINT [FK_INV_RECEIPT_PUR_PURCHASE_INV] FOREIGN KEY([PurchaseId])
REFERENCES [dbo].[PUR_PURCHASE_INV] ([PurchaseId])
GO
ALTER TABLE [dbo].[INV_RECEIPT] CHECK CONSTRAINT [FK_INV_RECEIPT_PUR_PURCHASE_INV]
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_INV_RECEIPT_DETAILS_GEN_ITEM] FOREIGN KEY([ItemId])
REFERENCES [dbo].[GEN_ITEM] ([ItemId])
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS] CHECK CONSTRAINT [FK_INV_RECEIPT_DETAILS_GEN_ITEM]
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_INV_RECEIPT_DETAILS_INV_RECEIPT] FOREIGN KEY([ReceiptId])
REFERENCES [dbo].[INV_RECEIPT] ([ReceiptId])
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS] CHECK CONSTRAINT [FK_INV_RECEIPT_DETAILS_INV_RECEIPT]
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_INV_RECEIPT_DETAILS_INV_RECEIPT1] FOREIGN KEY([ReceiptId])
REFERENCES [dbo].[INV_RECEIPT] ([ReceiptId])
GO
ALTER TABLE [dbo].[INV_RECEIPT_DETAILS] CHECK CONSTRAINT [FK_INV_RECEIPT_DETAILS_INV_RECEIPT1]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP]  WITH CHECK ADD  CONSTRAINT [FK_LST_SUPPLIER_GROUP_LST_SUPPLIER_GROUP] FOREIGN KEY([ParentGroupId])
REFERENCES [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId])
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] CHECK CONSTRAINT [FK_LST_SUPPLIER_GROUP_LST_SUPPLIER_GROUP]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_PUR_PROMOTION_DETAILS_GEN_ITEM] FOREIGN KEY([ItemId])
REFERENCES [dbo].[GEN_ITEM] ([ItemId])
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS] CHECK CONSTRAINT [FK_PUR_PROMOTION_DETAILS_GEN_ITEM]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_PUR_PROMOTION_DETAILS_PUR_PROMOTION] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[PUR_PROMOTION] ([PromotionId])
GO
ALTER TABLE [dbo].[PUR_PROMOTION_DETAILS] CHECK CONSTRAINT [FK_PUR_PROMOTION_DETAILS_PUR_PROMOTION]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_LOCATION]  WITH CHECK ADD  CONSTRAINT [FK_PUR_PROMOTION_LOCATION_GEN_LOCATION] FOREIGN KEY([LocationId])
REFERENCES [dbo].[GEN_LOCATION] ([LocationId])
GO
ALTER TABLE [dbo].[PUR_PROMOTION_LOCATION] CHECK CONSTRAINT [FK_PUR_PROMOTION_LOCATION_GEN_LOCATION]
GO
ALTER TABLE [dbo].[PUR_PROMOTION_LOCATION]  WITH CHECK ADD  CONSTRAINT [FK_PUR_PROMOTION_LOCATION_PUR_PROMOTION] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[PUR_PROMOTION] ([PromotionId])
GO
ALTER TABLE [dbo].[PUR_PROMOTION_LOCATION] CHECK CONSTRAINT [FK_PUR_PROMOTION_LOCATION_PUR_PROMOTION]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV]  WITH CHECK ADD  CONSTRAINT [FK_PUR_PURCHASE_INV_GEN_LOCATION] FOREIGN KEY([LocationId])
REFERENCES [dbo].[GEN_LOCATION] ([LocationId])
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] CHECK CONSTRAINT [FK_PUR_PURCHASE_INV_GEN_LOCATION]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV]  WITH CHECK ADD  CONSTRAINT [FK_PUR_PURCHASE_INV_GEN_SUPPLIER] FOREIGN KEY([SupId])
REFERENCES [dbo].[GEN_SUPPLIER] ([SupId])
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] CHECK CONSTRAINT [FK_PUR_PURCHASE_INV_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV]  WITH CHECK ADD  CONSTRAINT [FK_PUR_PURCHASE_INV_PUR_PURCHASE_INV] FOREIGN KEY([RefId])
REFERENCES [dbo].[PUR_PURCHASE_INV] ([PurchaseId])
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] CHECK CONSTRAINT [FK_PUR_PURCHASE_INV_PUR_PURCHASE_INV]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_PUR_PURCHASE_INV_DETAILS_GEN_ITEM] FOREIGN KEY([ItemId])
REFERENCES [dbo].[GEN_ITEM] ([ItemId])
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] CHECK CONSTRAINT [FK_PUR_PURCHASE_INV_DETAILS_GEN_ITEM]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_PUR_PURCHASE_INV_DETAILS_PUR_PURCHASE_INV] FOREIGN KEY([PurchaseId])
REFERENCES [dbo].[PUR_PURCHASE_INV] ([PurchaseId])
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] CHECK CONSTRAINT [FK_PUR_PURCHASE_INV_DETAILS_PUR_PURCHASE_INV]
GO
