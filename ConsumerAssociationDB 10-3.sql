USE [ConsumerAssociationDB]
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
ALTER TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS] DROP CONSTRAINT [FK_GEN_SUPPLIER_NOT_ALLOWED_TRANS_GEN_SUPPLIER_TRANSACTION]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS] DROP CONSTRAINT [FK_GEN_SUPPLIER_NOT_ALLOWED_TRANS_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [FK_GEN_SUPPLIER_LST_SUPPLIER_TYPE]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [FK_GEN_SUPPLIER_LST_SUPPLIER_GROUP]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [FK_GEN_SUPPLIER_GEN_ASSISTANT_SUPPLIER]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_TYPE] DROP CONSTRAINT [DF_SupplierTypes_IsActive]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_TYPE] DROP CONSTRAINT [DF_SupplierTypes_Stopped]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] DROP CONSTRAINT [DF_SupplierGroups_IsActive]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] DROP CONSTRAINT [DF_SupplierGroups_Stopped]
GO
ALTER TABLE [dbo].[LST_CountriesCodes] DROP CONSTRAINT [DF_LST_CountriesCodes_currencyId]
GO
ALTER TABLE [dbo].[LST_CountriesCodes] DROP CONSTRAINT [DF_LST_CountriesCodes_isDefault]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] DROP CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_SPECIFY_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] DROP CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] DROP CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_IsBlocked]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE] DROP CONSTRAINT [DF_GEN_SUPPLIER_PHONE_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS] DROP CONSTRAINT [DF_GEN_SUPPLIER_NOT_ALLOWED_TRANS_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [DF_GEN_SUPPLIER_IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] DROP CONSTRAINT [DF_GEN_SUPPLIER_IsBlocked]
GO
ALTER TABLE [dbo].[GEN_ASSISTANT_SUPPLIER] DROP CONSTRAINT [DF_GEN_ASSISTANT_SUPPLIER_IsActive]
GO
ALTER TABLE [dbo].[GEN_ASSISTANT_SUPPLIER] DROP CONSTRAINT [DF_GEN_ASSISTANT_SUPPLIER_IsBlocked]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_TYPE]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_SUPPLIER_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_SUPPLIER_TYPE]
GO
/****** Object:  Table [dbo].[LST_SUPPLIER_GROUP]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_SUPPLIER_GROUP]') AND type in (N'U'))
DROP TABLE [dbo].[LST_SUPPLIER_GROUP]
GO
/****** Object:  Table [dbo].[LST_PHONE_TYPE]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_PHONE_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[LST_PHONE_TYPE]
GO
/****** Object:  Table [dbo].[LST_CountriesCodes]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LST_CountriesCodes]') AND type in (N'U'))
DROP TABLE [dbo].[LST_CountriesCodes]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_TRANSACTION]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_TRANSACTION]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_TRANSACTION]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_SECTOR]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_SECTOR]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_PHONE]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_PHONE]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_PHONE]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_SUPPLIER]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_SUPPLIER]
GO
/****** Object:  Table [dbo].[GEN_ASSISTANT_SUPPLIER]    Script Date: 3/10/2023 10:07:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GEN_ASSISTANT_SUPPLIER]') AND type in (N'U'))
DROP TABLE [dbo].[GEN_ASSISTANT_SUPPLIER]
GO
/****** Object:  Table [dbo].[GEN_ASSISTANT_SUPPLIER]    Script Date: 3/10/2023 10:07:37 PM ******/
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
/****** Object:  Table [dbo].[GEN_SUPPLIER]    Script Date: 3/10/2023 10:07:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER](
	[SupId] [bigint] IDENTITY(1,1) NOT NULL,
	[SupRef] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[SupplierTypeId] [int] NOT NULL,
	[SupplierGroupId] [int] NOT NULL,
	[AssistantSupId] [bigint] NULL,
	[AssistantAccountNumber] [decimal](18, 0) NULL,
	[AssistantAccountName] [nvarchar](150) NULL,
	[AssistantStartDate] [date] NULL,
	[DiscountPercentage] [int] NOT NULL,
	[FreePercentag] [int] NOT NULL,
	[BankId] [int] NULL,
	[BankAccount] [nvarchar](50) NOT NULL,
	[SupNODays] [int] NULL,
	[AccountCode] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[BOX] [nvarchar](50) NULL,
	[IsBlocked] [bit] NOT NULL,
	[LicenseId] [nvarchar](50) NULL,
	[LicenseDate] [date] NULL,
	[Notes] [ntext] NOT NULL,
	[PurchaseOrderNotes] [ntext] NOT NULL,
	[Image] [ntext] NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[SupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS]    Script Date: 3/10/2023 10:07:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SupId] [bigint] NOT NULL,
	[SubTransId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NULL,
	[UpdateDate] [datetime2](7) NULL,
	[CreateUserId] [bigint] NULL,
	[UpdateUserId] [bigint] NULL,
 CONSTRAINT [PK_GEN_SUPPLIER_NOT_ALLOWED_TRANS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GEN_SUPPLIER_PHONE]    Script Date: 3/10/2023 10:07:37 PM ******/
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
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR]    Script Date: 3/10/2023 10:07:37 PM ******/
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
/****** Object:  Table [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY]    Script Date: 3/10/2023 10:07:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY](
	[SupSectorSpecifyId] [bigint] IDENTITY(1,1) NOT NULL,
	[SupId] [bigint] NOT NULL,
	[SupSectorId] [bigint] NOT NULL,
	[BranchId] [bigint] NOT NULL,
	[FreePercentage] [decimal](18, 3) NOT NULL,
	[DiscountPercentage] [decimal](18, 3) NOT NULL,
	[Notes] [ntext] NOT NULL,
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
/****** Object:  Table [dbo].[GEN_SUPPLIER_TRANSACTION]    Script Date: 3/10/2023 10:07:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEN_SUPPLIER_TRANSACTION](
	[SubTransId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GEN_SUPPLIER_TRANSACTION] PRIMARY KEY CLUSTERED 
(
	[SubTransId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LST_CountriesCodes]    Script Date: 3/10/2023 10:07:37 PM ******/
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
/****** Object:  Table [dbo].[LST_PHONE_TYPE]    Script Date: 3/10/2023 10:07:37 PM ******/
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
/****** Object:  Table [dbo].[LST_SUPPLIER_GROUP]    Script Date: 3/10/2023 10:07:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_SUPPLIER_GROUP](
	[SupplierGroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
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
/****** Object:  Table [dbo].[LST_SUPPLIER_TYPE]    Script Date: 3/10/2023 10:07:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LST_SUPPLIER_TYPE](
	[SupplierTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Notes] [ntext] NULL,
	[IsBlocked] [bit] NOT NULL,
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
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_TRANSACTION] ON 

INSERT [dbo].[GEN_SUPPLIER_TRANSACTION] ([SubTransId], [Name]) VALUES (1, N'إيقاف طلبات الشراء')
INSERT [dbo].[GEN_SUPPLIER_TRANSACTION] ([SubTransId], [Name]) VALUES (2, N'إيقاف الاستلام')
INSERT [dbo].[GEN_SUPPLIER_TRANSACTION] ([SubTransId], [Name]) VALUES (3, N'إيقاف صرف الشبكات')
INSERT [dbo].[GEN_SUPPLIER_TRANSACTION] ([SubTransId], [Name]) VALUES (4, N'تفعيل المرتجع المباشر بالاستلام')
INSERT [dbo].[GEN_SUPPLIER_TRANSACTION] ([SubTransId], [Name]) VALUES (5, N'تفعيل الخصم في المرتجعات')
SET IDENTITY_INSERT [dbo].[GEN_SUPPLIER_TRANSACTION] OFF
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
ALTER TABLE [dbo].[GEN_ASSISTANT_SUPPLIER] ADD  CONSTRAINT [DF_GEN_ASSISTANT_SUPPLIER_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_ASSISTANT_SUPPLIER] ADD  CONSTRAINT [DF_GEN_ASSISTANT_SUPPLIER_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] ADD  CONSTRAINT [DF_GEN_SUPPLIER_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] ADD  CONSTRAINT [DF_GEN_SUPPLIER_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS] ADD  CONSTRAINT [DF_GEN_SUPPLIER_NOT_ALLOWED_TRANS_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_PHONE] ADD  CONSTRAINT [DF_GEN_SUPPLIER_PHONE_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] ADD  CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR] ADD  CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_SECTOR_SPECIFY] ADD  CONSTRAINT [DF_GEN_SUPPLIER_SECTOR_SPECIFY_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[LST_CountriesCodes] ADD  CONSTRAINT [DF_LST_CountriesCodes_isDefault]  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[LST_CountriesCodes] ADD  CONSTRAINT [DF_LST_CountriesCodes_currencyId]  DEFAULT ((0)) FOR [currencyId]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] ADD  CONSTRAINT [DF_SupplierGroups_Stopped]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_GROUP] ADD  CONSTRAINT [DF_SupplierGroups_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_TYPE] ADD  CONSTRAINT [DF_SupplierTypes_Stopped]  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[LST_SUPPLIER_TYPE] ADD  CONSTRAINT [DF_SupplierTypes_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_GEN_ASSISTANT_SUPPLIER] FOREIGN KEY([AssistantSupId])
REFERENCES [dbo].[GEN_ASSISTANT_SUPPLIER] ([AssistantSupId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER] CHECK CONSTRAINT [FK_GEN_SUPPLIER_GEN_ASSISTANT_SUPPLIER]
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
ALTER TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_NOT_ALLOWED_TRANS_GEN_SUPPLIER] FOREIGN KEY([SupId])
REFERENCES [dbo].[GEN_SUPPLIER] ([SupId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS] CHECK CONSTRAINT [FK_GEN_SUPPLIER_NOT_ALLOWED_TRANS_GEN_SUPPLIER]
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS]  WITH CHECK ADD  CONSTRAINT [FK_GEN_SUPPLIER_NOT_ALLOWED_TRANS_GEN_SUPPLIER_TRANSACTION] FOREIGN KEY([SubTransId])
REFERENCES [dbo].[GEN_SUPPLIER_TRANSACTION] ([SubTransId])
GO
ALTER TABLE [dbo].[GEN_SUPPLIER_NOT_ALLOWED_TRANS] CHECK CONSTRAINT [FK_GEN_SUPPLIER_NOT_ALLOWED_TRANS_GEN_SUPPLIER_TRANSACTION]
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
