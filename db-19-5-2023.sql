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
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] DROP CONSTRAINT [FK_LST_SUPPLIER_GROUP_LST_SUPPLIER_GROUP]
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
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Balance]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Main_Price]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Main_Cost]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_IsActive]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] DROP CONSTRAINT [DF_PUR_PURCHASE_INV_IsApproved]
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
/****** Object:  Table [dbo].[PUR_PURCHASE_INV_DETAILS]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUR_PURCHASE_INV_DETAILS]') AND type in (N'U'))
DROP TABLE [dbo].[PUR_PURCHASE_INV_DETAILS]
GO
/****** Object:  Table [dbo].[PUR_PURCHASE_INV]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUR_PURCHASE_INV]') AND type in (N'U'))
DROP TABLE [dbo].[PUR_PURCHASE_INV]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_TYPE]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_SUPPLIER_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_SUPPLIER_TYPE]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_GROUP]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_SUPPLIER_GROUP]') AND type in (N'U'))
DROP TABLE [dbo].[LST_SUPPLIER_GROUP]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_DOCUMENT_TYPE]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_SUPPLIER_DOCUMENT_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_SUPPLIER_DOCUMENT_TYPE]
GO
/****** Object:  Table [dbo].[LST_REQUEST_TOKEN]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_REQUEST_TOKEN]') AND type in (N'U'))
DROP TABLE [dbo].[LST_REQUEST_TOKEN]
GO
/****** Object:  Table [dbo].[LST_PHONE_TYPE]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_PHONE_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_PHONE_TYPE]
GO
/****** Object:  Table [dbo].[LST_LOCATION_TYPE]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_LOCATION_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_LOCATION_TYPE]
GO
/****** Object:  Table [dbo].[LST_COUNTRY]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_COUNTRY]') AND type in (N'U'))
DROP TABLE [dbo].[LST_COUNTRY]
GO
/****** Object:  Table [dbo].[LST_CountriesCodes]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_CountriesCodes]') AND type in (N'U'))
DROP TABLE [dbo].[LST_CountriesCodes]
GO
/****** Object:  Table [dbo].[GEN_UNIT]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_UNIT]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_UNIT]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_SECTOR]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_SECTOR]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_PHONE]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_PHONE]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_PHONE]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_DOCUMENT]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_DOCUMENT]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_DOCUMENT]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER]
GO
/****** Object:  Table [dbo].[GEN_LOCATION]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_LOCATION]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_LOCATION]
GO
/****** Object:  Table [dbo].[GEN_ITEM_UNIT]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_UNIT]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_UNIT]
GO
/****** Object:  Table [dbo].[GEN_ITEM_LOCATION]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_LOCATION]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_LOCATION]
GO
/****** Object:  Table [dbo].[GEN_ITEM_GENERALIZATION]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_GENERALIZATION]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_GENERALIZATION]
GO
/****** Object:  Table [dbo].[GEN_ITEM_CATEGORY]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_CATEGORY]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_CATEGORY]
GO
/****** Object:  Table [dbo].[GEN_ITEM_ALLOWED_TRANSACTION]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM_ALLOWED_TRANSACTION]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM_ALLOWED_TRANSACTION]
GO
/****** Object:  Table [dbo].[GEN_ITEM]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ITEM]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ITEM]
GO
/****** Object:  Table [dbo].[GEN_COMPANY_SETTINGS]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_COMPANY_SETTINGS]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_COMPANY_SETTINGS]
GO
/****** Object:  Table [dbo].[GEN_BRAND]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_BRAND]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_BRAND]
GO
/****** Object:  Table [dbo].[GEN_BANK]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_BANK]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_BANK]
GO
/****** Object:  Table [dbo].[GEN_ASSISTANT_SUPPLIER]    Script Date: 5/19/2023 12:36:37 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ASSISTANT_SUPPLIER]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ASSISTANT_SUPPLIER]
GO
/****** Object:  Table [dbo].[GEN_ASSISTANT_SUPPLIER]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_BANK]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_BRAND]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_COMPANY_SETTINGS]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_ITEM]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_ITEM_ALLOWED_TRANSACTION]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_ITEM_CATEGORY]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_ITEM_GENERALIZATION]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_ITEM_LOCATION]    Script Date: 5/19/2023 12:36:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_ITEM_LOCATION](
	[ItemLocationId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NULL,
	[LocationId] [bigint] NULL,
	[Min_Qty] [int] NOT NULL,
	[Max_Qty] [int] NOT NULL,
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
/****** Object:  Table [dbo].[GEN_ITEM_UNIT]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_LOCATION]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_SUPPLIER]    Script Date: 5/19/2023 12:36:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER](
	[SupId] [bigint] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[GEN_SUPPLIER_DOCUMENT]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_SUPPLIER_PHONE]    Script Date: 5/19/2023 12:36:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER_PHONE](
	[SupPhoneId] [int] IDENTITY(1,1) NOT NULL,
	[SupId] [bigint] NOT NULL,
	[PhoneTypeID] [int] NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
	[PersonName] [nvarchar](150) NOT NULL,
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
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[GEN_UNIT]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[LST_CountriesCodes]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[LST_COUNTRY]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[LST_LOCATION_TYPE]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[LST_PHONE_TYPE]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[LST_REQUEST_TOKEN]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[LST_SUPPLIER_DOCUMENT_TYPE]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[LST_SUPPLIER_GROUP]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[LST_SUPPLIER_TYPE]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[PUR_PURCHASE_INV]    Script Date: 5/19/2023 12:36:37 AM ******/
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
/****** Object:  Table [dbo].[PUR_PURCHASE_INV_DETAILS]    Script Date: 5/19/2023 12:36:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUR_PURCHASE_INV_DETAILS](
	[DetailsId] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [bigint] NULL,
	[PurchaseId] [bigint] NULL,
	[ItemCode] [nvarchar](10) NULL,
	[Barcode] [nvarchar](100) NULL,
	[ItemNotes] [ntext] NULL,
	[Factor] [int] NULL,
	[MainCost] [decimal](18, 3) NOT NULL,
	[Cost] [decimal](18, 3) NOT NULL,
	[MainPrice] [decimal](18, 3) NOT NULL,
	[Price] [money] NOT NULL,
	[Balance] [decimal](18, 3) NOT NULL,
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
SET IDENTITY_INSERT [dbo].[GEN_ASSISTANT_SUPPLIER] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_BANK] ON 

INSERT [dbo].[GEN_BANK] ([BankId], [BankName], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'بنك الشرق', N'لا يوجد ملاحظات', 0, 1, CAST(N'2023-03-15T01:39:19.4711492' AS DateTime2), CAST(N'2023-03-15T01:39:37.5555448' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_BANK] ([BankId], [BankName], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'بنك السوري الفرنسي', N'', 0, 1, CAST(N'2023-03-15T01:39:47.7472585' AS DateTime2), CAST(N'2023-03-15T01:39:47.7472585' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_BANK] ([BankId], [BankName], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'تي', N'', 0, 0, CAST(N'2023-03-15T01:39:55.6375929' AS DateTime2), CAST(N'2023-03-15T01:39:59.1847400' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[GEN_BANK] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_BRAND] ON 

INSERT [dbo].[GEN_BRAND] ([BrandId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'Kentaki -1', N'no comment', 1, 0, CAST(N'2023-04-01T02:13:21.9320647' AS DateTime2), CAST(N'2023-04-01T02:15:43.1455280' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_BRAND] ([BrandId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'Gutccie', N'no', 0, 1, CAST(N'2023-04-01T02:15:54.9356565' AS DateTime2), CAST(N'2023-04-01T02:16:42.1863115' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_BRAND] ([BrandId], [Name], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'HP', N'', 0, 1, CAST(N'2023-04-01T02:16:23.2534059' AS DateTime2), CAST(N'2023-04-01T02:16:23.2534059' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[GEN_BRAND] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_COMPANY_SETTINGS] ON 

INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (1, N'com_name', NULL, NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (2, N'com_address', NULL, NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (3, N'com_email', NULL, NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (4, N'com_mobile', NULL, NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (5, N'com_phone', NULL, NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (6, N'com_fax', NULL, NULL)
INSERT [dbo].[GEN_COMPANY_SETTINGS] ([SettingId], [Name], [Value], [Notes]) VALUES (7, N'com_logo', NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_COMPANY_SETTINGS] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM] ON 

INSERT [dbo].[GEN_ITEM] ([ItemId], [Code], [Name], [ShortName], [EngName], [ItemStatus], [ItemReceiptType], [ItemType], [ItemTransactionType], [CategoryId], [BrandId], [SupId], [SupSectorId], [CountryId], [CommitteeNo], [UnitId], [Factor], [MainCost], [Cost], [ConsumerProfitPerc], [WholesaleProfitPerc], [ConsumerDiscPerc], [WholesaleDiscPerc], [FreePerc], [DiscPerc], [MainPrice], [Price], [WholesalePrice], [QtyMin], [QtyMax], [PackageWeight], [PackageUnit], [IsSpecialOffer], [OfferEndDate], [IsWeight], [IsContainExpiryDate], [IsSellNotAllow], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [OldId]) VALUES (6, N'00090001', N'زيت زهرة', N'qqqq', N'Zahra', NULL, NULL, NULL, NULL, 1, 2, 9, NULL, 1, NULL, 2, 12, CAST(33.000 AS Decimal(18, 3)), CAST(33.000 AS Decimal(18, 3)), CAST(10.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(3.025 AS Decimal(18, 3)), CAST(2.934 AS Decimal(18, 3)), CAST(2.777 AS Decimal(18, 3)), NULL, NULL, NULL, NULL, 1, NULL, 1, 0, 0, N'', 1, CAST(N'2023-05-04T21:30:37.8469712' AS DateTime2), CAST(N'2023-05-16T01:00:00.9096563' AS DateTime2), 0, 0, NULL)
INSERT [dbo].[GEN_ITEM] ([ItemId], [Code], [Name], [ShortName], [EngName], [ItemStatus], [ItemReceiptType], [ItemType], [ItemTransactionType], [CategoryId], [BrandId], [SupId], [SupSectorId], [CountryId], [CommitteeNo], [UnitId], [Factor], [MainCost], [Cost], [ConsumerProfitPerc], [WholesaleProfitPerc], [ConsumerDiscPerc], [WholesaleDiscPerc], [FreePerc], [DiscPerc], [MainPrice], [Price], [WholesalePrice], [QtyMin], [QtyMax], [PackageWeight], [PackageUnit], [IsSpecialOffer], [OfferEndDate], [IsWeight], [IsContainExpiryDate], [IsSellNotAllow], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [OldId]) VALUES (7, N'00080007', N'زيت عافية', N'زيت عافية', N'aaa', NULL, NULL, NULL, NULL, 1, 2, 9, 1, 1, NULL, 1, 1, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(10.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, NULL, NULL, NULL, 1, NULL, 1, 0, 0, N'', 1, CAST(N'2023-05-07T15:44:36.5362068' AS DateTime2), CAST(N'2023-05-17T17:27:10.9856908' AS DateTime2), 0, 0, NULL)
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

INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, NULL, N'زيوت', CAST(10.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-03-26T01:53:50.8367138' AS DateTime2), CAST(N'2023-04-29T00:24:21.4437227' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, NULL, N'عطور', CAST(2.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-03-26T01:57:01.2828456' AS DateTime2), CAST(N'2023-03-26T01:57:01.2828456' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, 2, N'عطر فرنسي', CAST(1.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), N'', 1, NULL, 0, 1, CAST(N'2023-03-26T02:02:08.4330763' AS DateTime2), CAST(N'2023-03-26T02:47:17.2211636' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, 2, N'عطر إماراتي', CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-03-26T02:03:21.9320306' AS DateTime2), CAST(N'2023-03-26T02:03:21.9320306' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, 2, N'عطر محلي', CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-03-26T02:05:18.4043530' AS DateTime2), CAST(N'2023-03-26T02:05:18.4043530' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_CATEGORY] ([CategoryId], [CategoryParentId], [Name], [ProfitPercentage], [WholesalePercentage], [FreePercentage], [DiscountPercentage], [Notes], [CanContainItems], [Image], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (10002, 3, N'test', CAST(2.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)), CAST(1.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), N'', 1, NULL, 1, 1, CAST(N'2023-05-01T17:41:05.6120624' AS DateTime2), CAST(N'2023-05-01T17:41:05.6120624' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_ITEM_CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM_GENERALIZATION] ON 

INSERT [dbo].[GEN_ITEM_GENERALIZATION] ([Id], [ItemId], [GeneralizationYear], [GeneralizationNo], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, 6, 1986, 12, 1, CAST(N'2023-05-04T22:43:05.8422136' AS DateTime2), CAST(N'2023-05-16T01:00:01.2371432' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_GENERALIZATION] ([Id], [ItemId], [GeneralizationYear], [GeneralizationNo], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, 6, 2000, 10, 1, CAST(N'2023-05-04T22:43:05.8432110' AS DateTime2), CAST(N'2023-05-16T01:00:01.2411313' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_ITEM_GENERALIZATION] ([Id], [ItemId], [GeneralizationYear], [GeneralizationNo], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (8, 6, 1478, 10, 1, CAST(N'2023-05-12T16:28:23.6420900' AS DateTime2), CAST(N'2023-05-16T01:00:01.2431256' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_ITEM_GENERALIZATION] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM_LOCATION] ON 

INSERT [dbo].[GEN_ITEM_LOCATION] ([ItemLocationId], [ItemId], [LocationId], [Min_Qty], [Max_Qty], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (5, 6, 1, 0, 0, 1, 0, 0, CAST(N'2023-05-07T03:25:07.2811018' AS DateTime2), CAST(N'2023-05-07T03:25:07.2811018' AS DateTime2))
INSERT [dbo].[GEN_ITEM_LOCATION] ([ItemLocationId], [ItemId], [LocationId], [Min_Qty], [Max_Qty], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (6, 6, 2, 0, 0, 1, 0, 0, CAST(N'2023-05-07T03:25:07.2830971' AS DateTime2), CAST(N'2023-05-07T03:25:07.2830971' AS DateTime2))
INSERT [dbo].[GEN_ITEM_LOCATION] ([ItemLocationId], [ItemId], [LocationId], [Min_Qty], [Max_Qty], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (7, 6, 3, 0, 0, 1, 0, 0, CAST(N'2023-05-07T14:38:09.7812025' AS DateTime2), CAST(N'2023-05-07T14:38:09.7812025' AS DateTime2))
INSERT [dbo].[GEN_ITEM_LOCATION] ([ItemLocationId], [ItemId], [LocationId], [Min_Qty], [Max_Qty], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (8, 7, 1, 0, 0, 1, 0, 0, CAST(N'2023-05-17T17:27:11.2421248' AS DateTime2), CAST(N'2023-05-17T17:27:11.2421248' AS DateTime2))
SET IDENTITY_INSERT [dbo].[GEN_ITEM_LOCATION] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_ITEM_UNIT] ON 

INSERT [dbo].[GEN_ITEM_UNIT] ([ItemUnitId], [ItemId], [UnitId], [Barcode], [BarcodeType], [Cost], [SalePrice], [Factor], [IsBlocked], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (12, 6, 2, N'147852', N'external', CAST(33.000 AS Decimal(18, 3)), CAST(35.208 AS Decimal(18, 3)), 12, 0, 1, NULL, NULL, CAST(N'2023-05-16T01:00:01.1490164' AS DateTime2), CAST(N'2023-05-16T01:00:01.1490164' AS DateTime2))
INSERT [dbo].[GEN_ITEM_UNIT] ([ItemUnitId], [ItemId], [UnitId], [Barcode], [BarcodeType], [Cost], [SalePrice], [Factor], [IsBlocked], [IsActive], [CreateUserId], [UpdateUserId], [CreateDate], [UpdateDate]) VALUES (13, 7, 1, N'', N'', CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), 1, 0, 1, 0, 0, CAST(N'2023-05-17T17:25:27.0971540' AS DateTime2), CAST(N'2023-05-17T17:27:11.1314203' AS DateTime2))
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
SET IDENTITY_INSERT [dbo].[GEN_LOCATION] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER] ON 

INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (8, NULL, N'fesr', N'fesr', N'', 1, 1, NULL, NULL, NULL, CAST(N'2023-03-16' AS Date), CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, N'', NULL, NULL, N'', N'', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, CAST(N'2023-03-17T00:40:57.4487287' AS DateTime2), CAST(N'2023-05-11T17:04:17.5416645' AS DateTime2), 0, 0, 0)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (9, NULL, N'ahmad', N'ahmad', N'sssss', 3, 4, 2, NULL, NULL, CAST(N'2023-05-18' AS Date), CAST(10.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), 1, N'', NULL, NULL, N'dd@gmail.com', N'', 0, N'11', NULL, N'vvv', N'fff', NULL, 1, 1, 0, 0, 1, CAST(N'2023-03-17T02:01:00.6060394' AS DateTime2), CAST(N'2023-05-18T21:23:42.1611156' AS DateTime2), 0, 0, 1)
INSERT [dbo].[GEN_SUPPLIER] ([SupId], [SupRef], [Name], [ShortName], [Address], [SupplierTypeId], [SupplierGroupId], [AssistantSupId], [AssistantAccountNumber], [AssistantAccountName], [AssistantStartDate], [DiscountPercentage], [FreePercentag], [BankId], [BankAccount], [SupNODays], [AccountCode], [Email], [BOX], [IsBlocked], [LicenseId], [LicenseDate], [Notes], [PurchaseOrderNotes], [Image], [IsAllowedPO], [IsAllowedReceipt], [IsAllowedDirectReturn], [IsAllowedReturnDiscount], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId], [IsAllowCashingChecks]) VALUES (10, NULL, N'محمد', N'محمد', N'', 3, 1, 2, NULL, NULL, CAST(N'2023-05-18' AS Date), CAST(1.000 AS Decimal(18, 3)), CAST(2.000 AS Decimal(18, 3)), NULL, N'', NULL, NULL, N'', N'', 0, N'13', NULL, N'', N'', NULL, 1, 1, 1, 1, 1, CAST(N'2023-05-01T18:39:40.2281836' AS DateTime2), CAST(N'2023-05-18T21:28:42.0659253' AS DateTime2), 0, 0, 1)
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ON 

INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, 8, 3, NULL, NULL, CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-03-17T16:19:44.3071729' AS DateTime2), CAST(N'2023-03-17T22:25:57.7035443' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, 9, 3, N'123033/18/2023 7:38:30 PM', N'123', CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-03-18T19:38:35.2085515' AS DateTime2), CAST(N'2023-05-18T21:23:42.9169449' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, 9, 3, N'2023-03-14_22-12-350320230321232302', N'2023-03-14_22-12-35', CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), CAST(N'2023-03-31T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-03-18T19:48:16.1258665' AS DateTime2), CAST(N'2023-05-18T21:23:42.9329023' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, 9, 1, N'2023-01-15_13-56-440120230322155409..jpg', N'2023-01-15_13-56-44', NULL, NULL, 0, CAST(N'2023-03-22T15:54:12.2194801' AS DateTime2), CAST(N'2023-05-18T21:23:42.9358952' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (6, 9, 1, N'2023-01-15_13-56-440120230322155539..jpg', N'2023-01-15_13-56-44', NULL, NULL, 0, CAST(N'2023-03-22T15:56:05.3447551' AS DateTime2), CAST(N'2023-05-18T21:23:42.9428758' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (7, 9, 1, N'2023-01-15_13-56-440120230322155953.jpg', N'2023-01-15_13-56-44', NULL, NULL, 1, CAST(N'2023-03-22T15:59:56.4310661' AS DateTime2), CAST(N'2023-05-18T21:23:42.9613386' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] ([DocumentId], [SupId], [TypeId], [DocName], [DocTitle], [StartDate], [EndDate], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (10004, 9, 3, NULL, NULL, CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-04T23:03:59.3929736' AS DateTime2), CAST(N'2023-05-18T21:23:42.9643306' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_DOCUMENT] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_PHONE] ON 

INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (10, 8, 2, N'147852', N'147852', 1, CAST(N'2023-03-17T22:33:11.5557720' AS DateTime2), CAST(N'2023-03-17T22:33:11.5557720' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1087, 9, 1, N'1548', N'محمد', 1, CAST(N'2023-05-18T21:23:42.3464453' AS DateTime2), CAST(N'2023-05-18T21:23:42.3464453' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1088, 9, 2, N'14587', N'14587', 1, CAST(N'2023-05-18T21:23:42.3474431' AS DateTime2), CAST(N'2023-05-18T21:23:42.3474431' AS DateTime2), 0, 0)
INSERT [dbo].[GEN_SUPPLIER_PHONE] ([SupPhoneId], [SupId], [PhoneTypeID], [PhoneNumber], [PersonName], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1089, 9, 2, N'1414141', N'Ahmad', 1, CAST(N'2023-05-18T21:23:42.3474431' AS DateTime2), CAST(N'2023-05-18T21:23:42.3474431' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_PHONE] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_SECTOR] ON 

INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, 8, N'قطع 1', NULL, CAST(0.000 AS Decimal(10, 3)), NULL, NULL, CAST(0.000 AS Decimal(10, 3)), NULL, NULL, 0, 1, CAST(N'2023-03-17T22:33:11.5720937' AS DateTime2), CAST(N'2023-03-17T22:33:11.5720937' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, 9, N'قطاع 3', NULL, CAST(2.000 AS Decimal(10, 3)), NULL, NULL, CAST(0.000 AS Decimal(10, 3)), NULL, NULL, 0, 1, CAST(N'2023-03-17T22:37:02.9911650' AS DateTime2), CAST(N'2023-05-18T21:23:42.6940294' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR] ([SupSectorId], [SupId], [SupSectorName], [Notes], [FreePercentageMarkets], [FreePercentageBranchs], [FreePercentageStores], [DiscountPercentageMarkets], [DiscountPercentageBranchs], [DiscountPercentageStores], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, 9, N'قطاع 2', NULL, CAST(3.000 AS Decimal(10, 3)), NULL, NULL, CAST(0.000 AS Decimal(10, 3)), NULL, NULL, 0, 0, CAST(N'2023-03-18T01:14:43.9745330' AS DateTime2), CAST(N'2023-05-18T21:23:42.6162377' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_SECTOR] OFF
GO
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] ON 

INSERT [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] ([SupSectorSpecifyId], [SupId], [SupSectorId], [BranchId], [FreePercentage], [DiscountPercentage], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, 9, 3, 2, CAST(0.000 AS Decimal(18, 3)), CAST(0.000 AS Decimal(18, 3)), NULL, 0, CAST(N'2023-03-18T16:28:48.1994610' AS DateTime2), CAST(N'2023-05-18T21:23:42.8221987' AS DateTime2), NULL, NULL)
INSERT [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] ([SupSectorSpecifyId], [SupId], [SupSectorId], [BranchId], [FreePercentage], [DiscountPercentage], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (5, 9, 2, 1, CAST(2.000 AS Decimal(18, 3)), CAST(3.000 AS Decimal(18, 3)), NULL, 1, CAST(N'2023-03-18T17:08:47.8249434' AS DateTime2), CAST(N'2023-05-18T21:23:42.8561091' AS DateTime2), NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[LST_REQUEST_TOKEN] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ON 

INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'عقد إيجار', N'سسس', 1, CAST(N'2023-03-16T20:25:39.9985698' AS DateTime2), CAST(N'2023-03-16T20:25:39.9985698' AS DateTime2), 0, 0)
INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'jdsj', N'wwwww', 0, CAST(N'2023-03-16T20:25:56.8631891' AS DateTime2), CAST(N'2023-03-16T20:26:04.9005530' AS DateTime2), 0, 0)
INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'جواز سفر', N'', 1, CAST(N'2023-03-16T20:26:19.5643948' AS DateTime2), CAST(N'2023-03-16T20:26:19.5643948' AS DateTime2), 0, 0)
INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] ([TypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, N'عقد عمل', N'', 1, CAST(N'2023-03-16T20:26:28.9501078' AS DateTime2), CAST(N'2023-03-16T20:26:28.9501078' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_DOCUMENT_TYPE] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_GROUP] ON 

INSERT [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId], [Name], [ParentGroupId], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'مجموعة-1', NULL, N'لا يوجد', 0, 1, CAST(N'2023-03-11T22:59:14.7538153' AS DateTime2), CAST(N'2023-03-11T22:59:14.7538153' AS DateTime2), NULL, NULL)
INSERT [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId], [Name], [ParentGroupId], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (4, N'مجموعة 3', NULL, N'', 1, 1, CAST(N'2023-03-11T23:06:32.9255545' AS DateTime2), CAST(N'2023-03-11T23:30:02.6735160' AS DateTime2), NULL, 0)
INSERT [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId], [Name], [ParentGroupId], [Notes], [IsBlocked], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (6, N'مجموعة-2', 4, N'', 0, 1, CAST(N'2023-05-12T14:37:57.7000705' AS DateTime2), CAST(N'2023-05-12T21:44:01.1364714' AS DateTime2), 0, 0)
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_GROUP] OFF
GO
SET IDENTITY_INSERT [dbo].[LST_SUPPLIER_TYPE] ON 

INSERT [dbo].[LST_SUPPLIER_TYPE] ([SupplierTypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (1, N'مورد مؤقت', N'', 1, CAST(N'2023-03-12T00:30:54.0565480' AS DateTime2), CAST(N'2023-03-13T17:53:53.2196698' AS DateTime2), NULL, NULL)
INSERT [dbo].[LST_SUPPLIER_TYPE] ([SupplierTypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (2, N'مورد خضار', N'لا يوجد', 1, CAST(N'2023-03-12T00:34:08.6232293' AS DateTime2), CAST(N'2023-03-12T00:34:31.2055870' AS DateTime2), NULL, NULL)
INSERT [dbo].[LST_SUPPLIER_TYPE] ([SupplierTypeId], [Name], [Notes], [IsActive], [CreateDate], [UpdateDate], [CreateUserId], [UpdateUserId]) VALUES (3, N'مورد مستمر', N'', 1, CAST(N'2023-03-13T17:53:27.2850726' AS DateTime2), CAST(N'2023-03-13T17:53:27.2850726' AS DateTime2), NULL, NULL)
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
ALTER TABLE [dbo].[PUR_PURCHASE_INV] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_IsApproved]  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Main_Cost]  DEFAULT ((0)) FOR [MainCost]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Main_Price]  DEFAULT ((0)) FOR [MainPrice]
GO
ALTER TABLE [dbo].[PUR_PURCHASE_INV_DETAILS] ADD  CONSTRAINT [DF_PUR_PURCHASE_INV_DETAILS_Balance]  DEFAULT ((0)) FOR [Balance]
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
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP]  WITH CHECK ADD  CONSTRAINT [FK_LST_SUPPLIER_GROUP_LST_SUPPLIER_GROUP] FOREIGN KEY([ParentGroupId])
REFERENCES [dbo].[LST_SUPPLIER_GROUP] ([SupplierGroupId])
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] CHECK CONSTRAINT [FK_LST_SUPPLIER_GROUP_LST_SUPPLIER_GROUP]
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
