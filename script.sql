USE [master]
GO
/****** Object:  Database [EComDB]    Script Date: 18.9.2020 14:58:50 ******/
CREATE DATABASE [EComDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EComDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\EComDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EComDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\EComDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EComDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EComDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EComDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EComDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EComDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EComDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EComDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EComDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EComDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EComDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EComDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EComDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EComDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EComDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EComDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EComDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EComDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EComDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EComDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EComDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EComDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EComDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EComDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EComDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EComDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EComDB] SET  MULTI_USER 
GO
ALTER DATABASE [EComDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EComDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EComDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EComDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EComDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EComDB] SET QUERY_STORE = OFF
GO
USE [EComDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Gender] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[CategoryName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[MainCategory] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[Quantity] [smallint] NULL,
	[OrderID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[AppUserID] [uniqueidentifier] NOT NULL,
	[Confirmed] [bit] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 18.9.2020 14:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedComputerName] [nvarchar](max) NULL,
	[CreatedIP] [nvarchar](max) NULL,
	[CreatedAdUserName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedComputerName] [nvarchar](max) NULL,
	[ModifiedIP] [nvarchar](max) NULL,
	[ModifiedAdUserName] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ProductName] [nvarchar](max) NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[CategoryID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200517152646_initialCreate', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200531135904_AddCategoryID', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200531155115_AppUserAddProperties', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200607144110_addOrderId', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200626091425_initialMig', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200918100103_initialMigration', N'3.1.4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'fc84a107-72ee-4027-afc6-842acef73706', N'Member', N'MEMBER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'37d20a80-041a-4515-aca2-f234b7c3b72a', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'76aeca99-166d-4f3d-a504-08d819b18a61', N'fc84a107-72ee-4027-afc6-842acef73706')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f9574e4f-a2fc-4ae6-e555-08d85bbd31f0', N'37d20a80-041a-4515-aca2-f234b7c3b72a')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [City], [Gender]) VALUES (N'76aeca99-166d-4f3d-a504-08d819b18a61', N'Elif', N'ELIF', N'elifkucuk1002@gmail.com', N'ELIFKUCUK1002@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOzch8dxrDJswgxKTPUh3wwxc61PfRj5Z933ZGdSLwpgFOsfd9ugqgjGaKQYu5H8EQ==', N'IO44TODQIMJE4MAZUEQF4JKHOEKY5MRE', N'08c4f3e1-916c-4aef-9d8d-b1ad383dc5de', NULL, 0, 0, NULL, 1, 0, N'Elif', N'Küçük', N'İstanbul', 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [City], [Gender]) VALUES (N'f9574e4f-a2fc-4ae6-e555-08d85bbd31f0', N'ErgunYilmaz', N'ERGUNYILMAZ', N'ergunyilmaz176@gmail.com', N'ERGUNYILMAZ176@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHgH2yIDvoMnq7A0E6xpCaEnuxrS+T29Lq/PBBIW84iHdO3g5gBZ/zoCIoc23gXwuw==', N'2FPDMAETE5P4UMEDRDHM42C4NEVZB32Z', N'cc2db04d-32f0-4e04-ba48-928c8a2a056e', NULL, 0, 0, NULL, 1, 0, N'Ergun', N'Yılmaz', N'istanbul', 0)
INSERT [dbo].[Categories] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [CategoryName], [Description], [MainCategory]) VALUES (N'78a88738-70c2-426d-cb2e-08d85bbe23d5', 1, CAST(N'2020-09-18T13:32:27.6970588' AS DateTime2), N'USER', N'192.168.1.41', N'USER\Toshiba', N'admin', NULL, NULL, NULL, NULL, NULL, N'Beverages', N'Beverage stuff', NULL)
INSERT [dbo].[Products] ([ID], [Status], [CreatedDate], [CreatedComputerName], [CreatedIP], [CreatedAdUserName], [CreatedBy], [ModifiedDate], [ModifiedComputerName], [ModifiedIP], [ModifiedAdUserName], [ModifiedBy], [ProductName], [UnitPrice], [Quantity], [ImagePath], [CategoryID]) VALUES (N'1f838817-6781-4394-fb41-08d85bbe38ff', 1, CAST(N'2020-09-18T13:34:07.3779828' AS DateTime2), N'USER', N'192.168.1.41', N'USER\Toshiba', N'admin', NULL, NULL, NULL, NULL, NULL, N'Cola', CAST(5.00 AS Decimal(18, 2)), 5000, N'noimage.jpg', N'78a88738-70c2-426d-cb2e-08d85bbe23d5')
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 18.9.2020 14:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 18.9.2020 14:58:50 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 18.9.2020 14:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 18.9.2020 14:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 18.9.2020 14:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 18.9.2020 14:58:50 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 18.9.2020 14:58:50 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderID]    Script Date: 18.9.2020 14:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderID] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductID]    Script Date: 18.9.2020 14:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductID] ON [dbo].[OrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_AppUserID]    Script Date: 18.9.2020 14:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_AppUserID] ON [dbo].[Orders]
(
	[AppUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryID]    Script Date: 18.9.2020 14:58:50 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Gender]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductID]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_AppUserID] FOREIGN KEY([AppUserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_AppUserID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
USE [master]
GO
ALTER DATABASE [EComDB] SET  READ_WRITE 
GO
