USE [WorldOfMobiles]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Specifictions_dbo.SpecifictionTypes_Type_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Specifictions]'))
ALTER TABLE [dbo].[Specifictions] DROP CONSTRAINT [FK_dbo.Specifictions_dbo.SpecifictionTypes_Type_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Specifictions_dbo.Products_Product_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Specifictions]'))
ALTER TABLE [dbo].[Specifictions] DROP CONSTRAINT [FK_dbo.Specifictions_dbo.Products_Product_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SpecificatonDetails_dbo.Specifictions_Specifiction_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]'))
ALTER TABLE [dbo].[SpecificatonDetails] DROP CONSTRAINT [FK_dbo.SpecificatonDetails_dbo.Specifictions_Specifiction_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SpecificatonDetails_dbo.SpecifictionHeadings_Heading_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]'))
ALTER TABLE [dbo].[SpecificatonDetails] DROP CONSTRAINT [FK_dbo.SpecificatonDetails_dbo.SpecifictionHeadings_Heading_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Products_dbo.Brands_Brand_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_dbo.Products_dbo.Brands_Brand_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductImages_dbo.Products_Product_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImages]'))
ALTER TABLE [dbo].[ProductImages] DROP CONSTRAINT [FK_dbo.ProductImages_dbo.Products_Product_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BrandProductCounts_dbo.Schedules_Schedule_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]'))
ALTER TABLE [dbo].[BrandProductCounts] DROP CONSTRAINT [FK_dbo.BrandProductCounts_dbo.Schedules_Schedule_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BrandProductCounts_dbo.Brands_Brand_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]'))
ALTER TABLE [dbo].[BrandProductCounts] DROP CONSTRAINT [FK_dbo.BrandProductCounts_dbo.Brands_Brand_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BrandPages_dbo.Brands_Brand_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[BrandPages]'))
ALTER TABLE [dbo].[BrandPages] DROP CONSTRAINT [FK_dbo.BrandPages_dbo.Brands_Brand_Id]
GO
/****** Object:  Index [IX_Type_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Specifictions]') AND name = N'IX_Type_Id')
DROP INDEX [IX_Type_Id] ON [dbo].[Specifictions]
GO
/****** Object:  Index [IX_Product_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Specifictions]') AND name = N'IX_Product_Id')
DROP INDEX [IX_Product_Id] ON [dbo].[Specifictions]
GO
/****** Object:  Index [IX_Specifiction_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]') AND name = N'IX_Specifiction_Id')
DROP INDEX [IX_Specifiction_Id] ON [dbo].[SpecificatonDetails]
GO
/****** Object:  Index [IX_Heading_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]') AND name = N'IX_Heading_Id')
DROP INDEX [IX_Heading_Id] ON [dbo].[SpecificatonDetails]
GO
/****** Object:  Index [IX_Brand_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND name = N'IX_Brand_Id')
DROP INDEX [IX_Brand_Id] ON [dbo].[Products]
GO
/****** Object:  Index [IX_Product_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ProductImages]') AND name = N'IX_Product_Id')
DROP INDEX [IX_Product_Id] ON [dbo].[ProductImages]
GO
/****** Object:  Index [IX_Schedule_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]') AND name = N'IX_Schedule_Id')
DROP INDEX [IX_Schedule_Id] ON [dbo].[BrandProductCounts]
GO
/****** Object:  Index [IX_Brand_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]') AND name = N'IX_Brand_Id')
DROP INDEX [IX_Brand_Id] ON [dbo].[BrandProductCounts]
GO
/****** Object:  Index [IX_Brand_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BrandPages]') AND name = N'IX_Brand_Id')
DROP INDEX [IX_Brand_Id] ON [dbo].[BrandPages]
GO
/****** Object:  Table [dbo].[SpecifictionTypes]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecifictionTypes]') AND type in (N'U'))
DROP TABLE [dbo].[SpecifictionTypes]
GO
/****** Object:  Table [dbo].[Specifictions]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Specifictions]') AND type in (N'U'))
DROP TABLE [dbo].[Specifictions]
GO
/****** Object:  Table [dbo].[SpecifictionHeadings]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecifictionHeadings]') AND type in (N'U'))
DROP TABLE [dbo].[SpecifictionHeadings]
GO
/****** Object:  Table [dbo].[SpecificatonDetails]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]') AND type in (N'U'))
DROP TABLE [dbo].[SpecificatonDetails]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Schedules]') AND type in (N'U'))
DROP TABLE [dbo].[Schedules]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImages]') AND type in (N'U'))
DROP TABLE [dbo].[ProductImages]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brands]') AND type in (N'U'))
DROP TABLE [dbo].[Brands]
GO
/****** Object:  Table [dbo].[BrandProductCounts]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]') AND type in (N'U'))
DROP TABLE [dbo].[BrandProductCounts]
GO
/****** Object:  Table [dbo].[BrandPages]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrandPages]') AND type in (N'U'))
DROP TABLE [dbo].[BrandPages]
GO
USE [master]
GO
/****** Object:  Database [WorldOfMobiles]    Script Date: 28/05/2014 07:20:29 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'WorldOfMobiles')
DROP DATABASE [WorldOfMobiles]
GO
/****** Object:  Database [WorldOfMobiles]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'WorldOfMobiles')
BEGIN
CREATE DATABASE [WorldOfMobiles] ON  PRIMARY 
( NAME = N'WorldOfMobiles', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WorldOfMobiles.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WorldOfMobiles_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WorldOfMobiles_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WorldOfMobiles].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WorldOfMobiles] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WorldOfMobiles] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorldOfMobiles] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorldOfMobiles] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WorldOfMobiles] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorldOfMobiles] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorldOfMobiles] SET RECOVERY FULL 
GO
ALTER DATABASE [WorldOfMobiles] SET  MULTI_USER 
GO
ALTER DATABASE [WorldOfMobiles] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorldOfMobiles] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WorldOfMobiles', N'ON'
GO
USE [WorldOfMobiles]
GO
/****** Object:  Table [dbo].[BrandPages]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrandPages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BrandPages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[IsInitialPage] [bit] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[Brand_Id] [int] NULL,
 CONSTRAINT [PK_dbo.BrandPages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BrandProductCounts]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BrandProductCounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CurrentNoOfProducts] [int] NOT NULL,
	[Brand_Id] [int] NULL,
	[Schedule_Id] [int] NULL,
 CONSTRAINT [PK_dbo.BrandProductCounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Brands]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[NumberOfProducts] [int] NOT NULL,
	[HasToBeMonitered] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[AddedDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[Url] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductImages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Product_Id] [int] NULL,
 CONSTRAINT [PK_dbo.ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Products]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[IsRead] [bit] NOT NULL,
	[HasToBeMonitered] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[AddedDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[Url] [nvarchar](max) NULL,
	[Brand_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Schedules]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Schedules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScheduleDate] [datetime] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Schedules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SpecificatonDetails]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SpecificatonDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[Heading_Id] [int] NULL,
	[Specifiction_Id] [int] NULL,
 CONSTRAINT [PK_dbo.SpecificatonDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SpecifictionHeadings]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecifictionHeadings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SpecifictionHeadings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SpecifictionHeadings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Specifictions]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Specifictions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Specifictions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type_Id] [int] NULL,
	[Product_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Specifictions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SpecifictionTypes]    Script Date: 28/05/2014 07:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecifictionTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SpecifictionTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SpecifictionTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[BrandPages] ON 

INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (1, N'http://www.gsmarena.com/lava-phones-94.php', 1, 0, 41)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (2, N'http://www.gsmarena.com/tel_me_-phones-21.php', 1, 0, 81)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (3, N'http://www.gsmarena.com/acer-phones-59.php', 1, 0, 1)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (4, N'http://www.gsmarena.com/orange-phones-71.php', 1, 0, 61)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (5, N'http://www.gsmarena.com/acer-phones-f-59-0-p2.php', 0, 0, 1)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (6, N'http://www.gsmarena.com/dell-phones-61.php', 1, 0, 21)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (7, N'http://www.gsmarena.com/lenovo-phones-73.php', 1, 0, 42)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (8, N'http://www.gsmarena.com/telit-phones-16.php', 1, 0, 82)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (9, N'http://www.gsmarena.com/palm-phones-27.php', 1, 0, 62)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (10, N'http://www.gsmarena.com/emporia-phones-93.php', 1, 0, 22)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (11, N'http://www.gsmarena.com/alcatel-phones-5.php', 1, 0, 2)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (12, N'http://www.gsmarena.com/alcatel-phones-f-5-0-p2.php', 0, 0, 2)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (13, N'http://www.gsmarena.com/alcatel-phones-f-5-0-p3.php', 0, 0, 2)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (14, N'http://www.gsmarena.com/alcatel-phones-f-5-0-p4.php', 0, 0, 2)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (15, N'http://www.gsmarena.com/alcatel-phones-f-5-0-p5.php', 0, 0, 2)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (16, N'http://www.gsmarena.com/alcatel-phones-f-5-0-p6.php', 0, 0, 2)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (17, N'http://www.gsmarena.com/alcatel-phones-f-5-0-p7.php', 0, 0, 2)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (18, N'http://www.gsmarena.com/alcatel-phones-f-5-0-p8.php', 0, 0, 2)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (19, N'http://www.gsmarena.com/thuraya-phones-49.php', 1, 0, 83)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (20, N'http://www.gsmarena.com/panasonic-phones-6.php', 1, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (21, N'http://www.gsmarena.com/panasonic-phones-f-6-0-p2.php', 0, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (22, N'http://www.gsmarena.com/panasonic-phones-f-6-0-p3.php', 0, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (23, N'http://www.gsmarena.com/ericsson-phones-2.php', 1, 0, 23)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (24, N'http://www.gsmarena.com/lg-phones-20.php', 1, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (25, N'http://www.gsmarena.com/lg-phones-f-20-0-p2.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (26, N'http://www.gsmarena.com/lg-phones-f-20-0-p3.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (27, N'http://www.gsmarena.com/lg-phones-f-20-0-p4.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (28, N'http://www.gsmarena.com/lg-phones-f-20-0-p5.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (29, N'http://www.gsmarena.com/lg-phones-f-20-0-p6.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (30, N'http://www.gsmarena.com/lg-phones-f-20-0-p7.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (31, N'http://www.gsmarena.com/lg-phones-f-20-0-p8.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (32, N'http://www.gsmarena.com/lg-phones-f-20-0-p9.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (33, N'http://www.gsmarena.com/allview-phones-88.php', 1, 0, 3)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (34, N'http://www.gsmarena.com/allview-phones-f-88-0-p2.php', 0, 0, 3)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (35, N'http://www.gsmarena.com/amazon-phones-76.php', 1, 0, 4)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (36, N'http://www.gsmarena.com/pantech-phones-32.php', 1, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (37, N'http://www.gsmarena.com/pantech-phones-f-32-0-p2.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (38, N'http://www.gsmarena.com/pantech-phones-f-32-0-p3.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (39, N'http://www.gsmarena.com/pantech-phones-f-32-0-p4.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (40, N'http://www.gsmarena.com/toshiba-phones-44.php', 1, 0, 84)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (41, N'http://www.gsmarena.com/maxon-phones-14.php', 1, 0, 44)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (42, N'http://www.gsmarena.com/maxon-phones-f-14-0-p2.php', 0, 0, 44)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (43, N'http://www.gsmarena.com/eten-phones-40.php', 1, 0, 24)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (44, N'http://www.gsmarena.com/eten-phones-f-40-0-p2.php', 0, 0, 24)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (45, N'http://www.gsmarena.com/parla-phones-81.php', 1, 0, 65)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (46, N'http://www.gsmarena.com/unnecto-phones-91.php', 1, 0, 85)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (47, N'http://www.gsmarena.com/maxwest-phones-87.php', 1, 0, 45)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (48, N'http://www.gsmarena.com/amoi-phones-28.php', 1, 0, 5)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (49, N'http://www.gsmarena.com/amoi-phones-f-28-0-p2.php', 0, 0, 5)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (50, N'http://www.gsmarena.com/fujitsu_siemens-phones-50.php', 1, 0, 25)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (51, N'http://www.gsmarena.com/philips-phones-11.php', 1, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (52, N'http://www.gsmarena.com/vertu-phones-39.php', 1, 0, 86)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (53, N'http://www.gsmarena.com/meizu-phones-74.php', 1, 0, 46)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (54, N'http://www.gsmarena.com/garmin_asus-phones-65.php', 1, 0, 26)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (55, N'http://www.gsmarena.com/apple-phones-48.php', 1, 0, 6)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (56, N'http://www.gsmarena.com/plum-phones-72.php', 1, 0, 67)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (57, N'http://www.gsmarena.com/verykool-phones-70.php', 1, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (58, N'http://www.gsmarena.com/verykool-phones-f-70-0-p2.php', 0, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (59, N'http://www.gsmarena.com/micromax-phones-66.php', 1, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (60, N'http://www.gsmarena.com/micromax-phones-f-66-0-p2.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (61, N'http://www.gsmarena.com/micromax-phones-f-66-0-p3.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (62, N'http://www.gsmarena.com/micromax-phones-f-66-0-p4.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (63, N'http://www.gsmarena.com/micromax-phones-f-66-0-p5.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (64, N'http://www.gsmarena.com/archos-phones-90.php', 1, 0, 7)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (65, N'http://www.gsmarena.com/gigabyte-phones-47.php', 1, 0, 27)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (66, N'http://www.gsmarena.com/gigabyte-phones-f-47-0-p2.php', 0, 0, 27)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (67, N'http://www.gsmarena.com/vk_mobile-phones-37.php', 1, 0, 88)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (68, N'http://www.gsmarena.com/prestigio-phones-86.php', 1, 0, 68)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (69, N'http://www.gsmarena.com/prestigio-phones-f-86-0-p2.php', 0, 0, 68)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (70, N'http://www.gsmarena.com/microsoft-phones-64.php', 1, 0, 48)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (71, N'http://www.gsmarena.com/asus-phones-46.php', 1, 0, 8)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (72, N'http://www.gsmarena.com/asus-phones-f-46-0-p2.php', 0, 0, 8)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (73, N'http://www.gsmarena.com/gionee-phones-92.php', 1, 0, 28)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (74, N'http://www.gsmarena.com/qtek-phones-38.php', 1, 0, 69)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (75, N'http://www.gsmarena.com/vodafone-phones-53.php', 1, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (76, N'http://www.gsmarena.com/vodafone-phones-f-53-0-p2.php', 0, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (77, N'http://www.gsmarena.com/mitac-phones-25.php', 1, 0, 49)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (78, N'http://www.gsmarena.com/at&t-phones-57.php', 1, 0, 9)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (79, N'http://www.gsmarena.com/haier-phones-33.php', 1, 0, 29)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (80, N'http://www.gsmarena.com/haier-phones-f-33-0-p2.php', 0, 0, 29)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (81, N'http://www.gsmarena.com/haier-phones-f-33-0-p3.php', 0, 0, 29)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (82, N'http://www.gsmarena.com/wnd-phones-51.php', 1, 0, 90)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (83, N'http://www.gsmarena.com/sagem-phones-13.php', 1, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (84, N'http://www.gsmarena.com/sagem-phones-f-13-0-p2.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (85, N'http://www.gsmarena.com/sagem-phones-f-13-0-p3.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (86, N'http://www.gsmarena.com/sagem-phones-f-13-0-p4.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (87, N'http://www.gsmarena.com/mitsubishi-phones-8.php', 1, 0, 50)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (88, N'http://www.gsmarena.com/mitsubishi-phones-f-8-0-p2.php', 0, 0, 50)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (89, N'http://www.gsmarena.com/benefon-phones-15.php', 1, 0, 10)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (90, N'http://www.gsmarena.com/hp-phones-41.php', 1, 0, 30)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (91, N'http://www.gsmarena.com/xcute-phones-43.php', 1, 0, 91)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (92, N'http://www.gsmarena.com/modu-phones-63.php', 1, 0, 51)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (93, N'http://www.gsmarena.com/samsung-phones-9.php', 1, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (94, N'http://www.gsmarena.com/samsung-phones-f-9-0-p2.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (95, N'http://www.gsmarena.com/samsung-phones-f-9-0-p3.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (96, N'http://www.gsmarena.com/samsung-phones-f-9-0-p4.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (97, N'http://www.gsmarena.com/samsung-phones-f-9-0-p5.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (98, N'http://www.gsmarena.com/samsung-phones-f-9-0-p6.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (99, N'http://www.gsmarena.com/samsung-phones-f-9-0-p7.php', 0, 0, 71)
GO
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (100, N'http://www.gsmarena.com/samsung-phones-f-9-0-p8.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (101, N'http://www.gsmarena.com/samsung-phones-f-9-0-p9.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (102, N'http://www.gsmarena.com/samsung-phones-f-9-0-p10.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (103, N'http://www.gsmarena.com/samsung-phones-f-9-0-p11.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (104, N'http://www.gsmarena.com/benq-phones-31.php', 1, 0, 11)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (105, N'http://www.gsmarena.com/benq-phones-f-31-0-p2.php', 0, 0, 11)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (106, N'http://www.gsmarena.com/xiaomi-phones-80.php', 1, 0, 92)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (107, N'http://www.gsmarena.com/htc-phones-45.php', 1, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (108, N'http://www.gsmarena.com/htc-phones-f-45-0-p2.php', 0, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (109, N'http://www.gsmarena.com/htc-phones-f-45-0-p3.php', 0, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (110, N'http://www.gsmarena.com/htc-phones-f-45-0-p4.php', 0, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (111, N'http://www.gsmarena.com/htc-phones-f-45-0-p5.php', 0, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (112, N'http://www.gsmarena.com/sendo-phones-18.php', 1, 0, 72)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (113, N'http://www.gsmarena.com/benq_siemens-phones-42.php', 1, 0, 12)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (114, N'http://www.gsmarena.com/motorola-phones-4.php', 1, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (115, N'http://www.gsmarena.com/motorola-phones-f-4-0-p2.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (116, N'http://www.gsmarena.com/motorola-phones-f-4-0-p3.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (117, N'http://www.gsmarena.com/motorola-phones-f-4-0-p4.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (118, N'http://www.gsmarena.com/motorola-phones-f-4-0-p5.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (119, N'http://www.gsmarena.com/motorola-phones-f-4-0-p6.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (120, N'http://www.gsmarena.com/motorola-phones-f-4-0-p7.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (121, N'http://www.gsmarena.com/motorola-phones-f-4-0-p8.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (122, N'http://www.gsmarena.com/xolo-phones-85.php', 1, 0, 93)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (123, N'http://www.gsmarena.com/sewon-phones-26.php', 1, 0, 73)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (124, N'http://www.gsmarena.com/sewon-phones-f-26-0-p2.php', 0, 0, 73)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (125, N'http://www.gsmarena.com/huawei-phones-58.php', 1, 0, 32)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (126, N'http://www.gsmarena.com/huawei-phones-f-58-0-p2.php', 0, 0, 32)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (127, N'http://www.gsmarena.com/huawei-phones-f-58-0-p3.php', 0, 0, 32)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (128, N'http://www.gsmarena.com/huawei-phones-f-58-0-p4.php', 0, 0, 32)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (129, N'http://www.gsmarena.com/mwg-phones-56.php', 1, 0, 53)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (130, N'http://www.gsmarena.com/bird-phones-34.php', 1, 0, 13)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (131, N'http://www.gsmarena.com/bird-phones-f-34-0-p2.php', 0, 0, 13)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (132, N'http://www.gsmarena.com/bird-phones-f-34-0-p3.php', 0, 0, 13)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (133, N'http://www.gsmarena.com/yezz-phones-78.php', 1, 0, 94)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (134, N'http://www.gsmarena.com/sharp-phones-23.php', 1, 0, 74)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (135, N'http://www.gsmarena.com/sharp-phones-f-23-0-p2.php', 0, 0, 74)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (136, N'http://www.gsmarena.com/i_mate-phones-35.php', 1, 0, 33)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (137, N'http://www.gsmarena.com/nec-phones-12.php', 1, 0, 54)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (138, N'http://www.gsmarena.com/nec-phones-f-12-0-p2.php', 0, 0, 54)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (139, N'http://www.gsmarena.com/blackberry-phones-36.php', 1, 0, 14)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (140, N'http://www.gsmarena.com/blackberry-phones-f-36-0-p2.php', 0, 0, 14)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (141, N'http://www.gsmarena.com/blackberry-phones-f-36-0-p3.php', 0, 0, 14)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (142, N'http://www.gsmarena.com/neonode-phones-22.php', 1, 0, 55)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (143, N'http://www.gsmarena.com/siemens-phones-3.php', 1, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (144, N'http://www.gsmarena.com/siemens-phones-f-3-0-p2.php', 0, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (145, N'http://www.gsmarena.com/siemens-phones-f-3-0-p3.php', 0, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (146, N'http://www.gsmarena.com/i_mobile-phones-52.php', 1, 0, 34)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (147, N'http://www.gsmarena.com/i_mobile-phones-f-52-0-p2.php', 0, 0, 34)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (148, N'http://www.gsmarena.com/sonim-phones-54.php', 1, 0, 76)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (149, N'http://www.gsmarena.com/blu-phones-67.php', 1, 0, 15)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (150, N'http://www.gsmarena.com/blu-phones-f-67-0-p2.php', 0, 0, 15)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (151, N'http://www.gsmarena.com/blu-phones-f-67-0-p3.php', 0, 0, 15)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (152, N'http://www.gsmarena.com/niu-phones-79.php', 1, 0, 56)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (153, N'http://www.gsmarena.com/bosch-phones-10.php', 1, 0, 16)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (154, N'http://www.gsmarena.com/icemobile-phones-69.php', 1, 0, 35)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (155, N'http://www.gsmarena.com/icemobile-phones-f-69-0-p2.php', 0, 0, 35)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (156, N'http://www.gsmarena.com/sony-phones-7.php', 1, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (157, N'http://www.gsmarena.com/sony-phones-f-7-0-p2.php', 0, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (158, N'http://www.gsmarena.com/sony-phones-f-7-0-p3.php', 0, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (159, N'http://www.gsmarena.com/nokia-phones-1.php', 1, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (160, N'http://www.gsmarena.com/nokia-phones-f-1-0-p2.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (161, N'http://www.gsmarena.com/nokia-phones-f-1-0-p3.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (162, N'http://www.gsmarena.com/nokia-phones-f-1-0-p4.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (163, N'http://www.gsmarena.com/nokia-phones-f-1-0-p5.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (164, N'http://www.gsmarena.com/nokia-phones-f-1-0-p6.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (165, N'http://www.gsmarena.com/nokia-phones-f-1-0-p7.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (166, N'http://www.gsmarena.com/casio-phones-77.php', 1, 0, 17)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (167, N'http://www.gsmarena.com/innostream-phones-29.php', 1, 0, 36)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (168, N'http://www.gsmarena.com/sony_ericsson-phones-19.php', 1, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (169, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p2.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (170, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p3.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (171, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p4.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (172, N'http://www.gsmarena.com/cat-phones-89.php', 1, 0, 18)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (173, N'http://www.gsmarena.com/o2-phones-30.php', 1, 0, 58)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (174, N'http://www.gsmarena.com/inq-phones-60.php', 1, 0, 37)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (175, N'http://www.gsmarena.com/spice-phones-68.php', 1, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (176, N'http://www.gsmarena.com/spice-phones-f-68-0-p2.php', 0, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (177, N'http://www.gsmarena.com/spice-phones-f-68-0-p3.php', 0, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (178, N'http://www.gsmarena.com/oneplus-phones-95.php', 1, 0, 59)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (179, N'http://www.gsmarena.com/celkon-phones-75.php', 1, 0, 19)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (180, N'http://www.gsmarena.com/celkon-phones-f-75-0-p2.php', 0, 0, 19)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (181, N'http://www.gsmarena.com/celkon-phones-f-75-0-p3.php', 0, 0, 19)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (182, N'http://www.gsmarena.com/celkon-phones-f-75-0-p4.php', 0, 0, 19)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (183, N'http://www.gsmarena.com/celkon-phones-f-75-0-p5.php', 0, 0, 19)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (184, N'http://www.gsmarena.com/celkon-phones-f-75-0-p6.php', 0, 0, 19)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (185, N'http://www.gsmarena.com/jolla-phones-84.php', 1, 0, 38)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (186, N'http://www.gsmarena.com/t_mobile-phones-55.php', 1, 0, 80)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (187, N'http://www.gsmarena.com/t_mobile-phones-f-55-0-p2.php', 0, 0, 80)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (188, N'http://www.gsmarena.com/oppo-phones-82.php', 1, 0, 60)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (189, N'http://www.gsmarena.com/chea-phones-24.php', 1, 0, 20)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (190, N'http://www.gsmarena.com/karbonn-phones-83.php', 1, 0, 39)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (191, N'http://www.gsmarena.com/karbonn-phones-f-83-0-p2.php', 0, 0, 39)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (192, N'http://www.gsmarena.com/tel_me_-phones-21.php', 1, 0, 81)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (193, N'http://www.gsmarena.com/orange-phones-71.php', 1, 0, 61)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (194, N'http://www.gsmarena.com/dell-phones-61.php', 1, 0, 21)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (195, N'http://www.gsmarena.com/kyocera-phones-17.php', 1, 0, 40)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (196, N'http://www.gsmarena.com/telit-phones-16.php', 1, 0, 82)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (197, N'http://www.gsmarena.com/palm-phones-27.php', 1, 0, 62)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (198, N'http://www.gsmarena.com/emporia-phones-93.php', 1, 0, 22)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (199, N'http://www.gsmarena.com/lava-phones-94.php', 1, 0, 41)
GO
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (200, N'http://www.gsmarena.com/thuraya-phones-49.php', 1, 0, 83)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (201, N'http://www.gsmarena.com/panasonic-phones-6.php', 1, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (202, N'http://www.gsmarena.com/panasonic-phones-f-6-0-p2.php', 0, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (203, N'http://www.gsmarena.com/panasonic-phones-f-6-0-p3.php', 0, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (204, N'http://www.gsmarena.com/lenovo-phones-73.php', 1, 0, 42)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (205, N'http://www.gsmarena.com/lenovo-phones-f-73-0-p2.php', 0, 0, 42)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (206, N'http://www.gsmarena.com/ericsson-phones-2.php', 1, 0, 23)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (207, N'http://www.gsmarena.com/toshiba-phones-44.php', 1, 0, 84)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (208, N'http://www.gsmarena.com/pantech-phones-32.php', 1, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (209, N'http://www.gsmarena.com/pantech-phones-f-32-0-p2.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (210, N'http://www.gsmarena.com/pantech-phones-f-32-0-p3.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (211, N'http://www.gsmarena.com/pantech-phones-f-32-0-p4.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (212, N'http://www.gsmarena.com/eten-phones-40.php', 1, 0, 24)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (213, N'http://www.gsmarena.com/eten-phones-f-40-0-p2.php', 0, 0, 24)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (214, N'http://www.gsmarena.com/lg-phones-20.php', 1, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (215, N'http://www.gsmarena.com/lg-phones-f-20-0-p2.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (216, N'http://www.gsmarena.com/lg-phones-f-20-0-p3.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (217, N'http://www.gsmarena.com/lg-phones-f-20-0-p4.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (218, N'http://www.gsmarena.com/lg-phones-f-20-0-p5.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (219, N'http://www.gsmarena.com/lg-phones-f-20-0-p6.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (220, N'http://www.gsmarena.com/lg-phones-f-20-0-p7.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (221, N'http://www.gsmarena.com/lg-phones-f-20-0-p8.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (222, N'http://www.gsmarena.com/lg-phones-f-20-0-p9.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (223, N'http://www.gsmarena.com/unnecto-phones-91.php', 1, 0, 85)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (224, N'http://www.gsmarena.com/parla-phones-81.php', 1, 0, 65)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (225, N'http://www.gsmarena.com/fujitsu_siemens-phones-50.php', 1, 0, 25)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (226, N'http://www.gsmarena.com/vertu-phones-39.php', 1, 0, 86)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (227, N'http://www.gsmarena.com/maxon-phones-14.php', 1, 0, 44)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (228, N'http://www.gsmarena.com/maxon-phones-f-14-0-p2.php', 0, 0, 44)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (229, N'http://www.gsmarena.com/philips-phones-11.php', 1, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (230, N'http://www.gsmarena.com/philips-phones-f-11-0-p2.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (231, N'http://www.gsmarena.com/philips-phones-f-11-0-p3.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (232, N'http://www.gsmarena.com/philips-phones-f-11-0-p4.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (233, N'http://www.gsmarena.com/philips-phones-f-11-0-p5.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (234, N'http://www.gsmarena.com/philips-phones-f-11-0-p6.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (235, N'http://www.gsmarena.com/philips-phones-f-11-0-p7.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (236, N'http://www.gsmarena.com/philips-phones-f-11-0-p8.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (237, N'http://www.gsmarena.com/garmin_asus-phones-65.php', 1, 0, 26)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (238, N'http://www.gsmarena.com/maxwest-phones-87.php', 1, 0, 45)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (239, N'http://www.gsmarena.com/verykool-phones-70.php', 1, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (240, N'http://www.gsmarena.com/verykool-phones-f-70-0-p2.php', 0, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (241, N'http://www.gsmarena.com/plum-phones-72.php', 1, 0, 67)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (242, N'http://www.gsmarena.com/plum-phones-f-72-0-p2.php', 0, 0, 67)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (243, N'http://www.gsmarena.com/gigabyte-phones-47.php', 1, 0, 27)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (244, N'http://www.gsmarena.com/gigabyte-phones-f-47-0-p2.php', 0, 0, 27)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (245, N'http://www.gsmarena.com/meizu-phones-74.php', 1, 0, 46)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (246, N'http://www.gsmarena.com/prestigio-phones-86.php', 1, 0, 68)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (247, N'http://www.gsmarena.com/prestigio-phones-f-86-0-p2.php', 0, 0, 68)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (248, N'http://www.gsmarena.com/vk_mobile-phones-37.php', 1, 0, 88)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (249, N'http://www.gsmarena.com/gionee-phones-92.php', 1, 0, 28)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (250, N'http://www.gsmarena.com/micromax-phones-66.php', 1, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (251, N'http://www.gsmarena.com/micromax-phones-f-66-0-p2.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (252, N'http://www.gsmarena.com/micromax-phones-f-66-0-p3.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (253, N'http://www.gsmarena.com/micromax-phones-f-66-0-p4.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (254, N'http://www.gsmarena.com/micromax-phones-f-66-0-p5.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (255, N'http://www.gsmarena.com/vodafone-phones-53.php', 1, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (256, N'http://www.gsmarena.com/vodafone-phones-f-53-0-p2.php', 0, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (257, N'http://www.gsmarena.com/qtek-phones-38.php', 1, 0, 69)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (258, N'http://www.gsmarena.com/microsoft-phones-64.php', 1, 0, 48)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (259, N'http://www.gsmarena.com/haier-phones-33.php', 1, 0, 29)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (260, N'http://www.gsmarena.com/haier-phones-f-33-0-p2.php', 0, 0, 29)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (261, N'http://www.gsmarena.com/haier-phones-f-33-0-p3.php', 0, 0, 29)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (262, N'http://www.gsmarena.com/wnd-phones-51.php', 1, 0, 90)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (263, N'http://www.gsmarena.com/sagem-phones-13.php', 1, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (264, N'http://www.gsmarena.com/sagem-phones-f-13-0-p2.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (265, N'http://www.gsmarena.com/sagem-phones-f-13-0-p3.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (266, N'http://www.gsmarena.com/sagem-phones-f-13-0-p4.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (267, N'http://www.gsmarena.com/mitac-phones-25.php', 1, 0, 49)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (268, N'http://www.gsmarena.com/hp-phones-41.php', 1, 0, 30)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (269, N'http://www.gsmarena.com/xcute-phones-43.php', 1, 0, 91)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (270, N'http://www.gsmarena.com/samsung-phones-9.php', 1, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (271, N'http://www.gsmarena.com/samsung-phones-f-9-0-p2.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (272, N'http://www.gsmarena.com/samsung-phones-f-9-0-p3.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (273, N'http://www.gsmarena.com/samsung-phones-f-9-0-p4.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (274, N'http://www.gsmarena.com/samsung-phones-f-9-0-p5.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (275, N'http://www.gsmarena.com/samsung-phones-f-9-0-p6.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (276, N'http://www.gsmarena.com/samsung-phones-f-9-0-p7.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (277, N'http://www.gsmarena.com/samsung-phones-f-9-0-p8.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (278, N'http://www.gsmarena.com/samsung-phones-f-9-0-p9.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (279, N'http://www.gsmarena.com/samsung-phones-f-9-0-p10.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (280, N'http://www.gsmarena.com/samsung-phones-f-9-0-p11.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (281, N'http://www.gsmarena.com/htc-phones-45.php', 1, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (282, N'http://www.gsmarena.com/htc-phones-f-45-0-p2.php', 0, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (283, N'http://www.gsmarena.com/htc-phones-f-45-0-p3.php', 0, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (284, N'http://www.gsmarena.com/htc-phones-f-45-0-p4.php', 0, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (285, N'http://www.gsmarena.com/htc-phones-f-45-0-p5.php', 0, 0, 31)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (286, N'http://www.gsmarena.com/mitsubishi-phones-8.php', 1, 0, 50)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (287, N'http://www.gsmarena.com/mitsubishi-phones-f-8-0-p2.php', 0, 0, 50)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (288, N'http://www.gsmarena.com/xiaomi-phones-80.php', 1, 0, 92)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (289, N'http://www.gsmarena.com/sendo-phones-18.php', 1, 0, 72)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (290, N'http://www.gsmarena.com/modu-phones-63.php', 1, 0, 51)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (291, N'http://www.gsmarena.com/xolo-phones-85.php', 1, 0, 93)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (292, N'http://www.gsmarena.com/huawei-phones-58.php', 1, 0, 32)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (293, N'http://www.gsmarena.com/huawei-phones-f-58-0-p2.php', 0, 0, 32)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (294, N'http://www.gsmarena.com/huawei-phones-f-58-0-p3.php', 0, 0, 32)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (295, N'http://www.gsmarena.com/huawei-phones-f-58-0-p4.php', 0, 0, 32)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (296, N'http://www.gsmarena.com/sewon-phones-26.php', 1, 0, 73)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (297, N'http://www.gsmarena.com/sewon-phones-f-26-0-p2.php', 0, 0, 73)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (298, N'http://www.gsmarena.com/yezz-phones-78.php', 1, 0, 94)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (299, N'http://www.gsmarena.com/motorola-phones-4.php', 1, 0, 52)
GO
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (300, N'http://www.gsmarena.com/motorola-phones-f-4-0-p2.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (301, N'http://www.gsmarena.com/motorola-phones-f-4-0-p3.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (302, N'http://www.gsmarena.com/motorola-phones-f-4-0-p4.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (303, N'http://www.gsmarena.com/motorola-phones-f-4-0-p5.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (304, N'http://www.gsmarena.com/motorola-phones-f-4-0-p6.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (305, N'http://www.gsmarena.com/motorola-phones-f-4-0-p7.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (306, N'http://www.gsmarena.com/motorola-phones-f-4-0-p8.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (307, N'http://www.gsmarena.com/i_mate-phones-35.php', 1, 0, 33)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (308, N'http://www.gsmarena.com/sharp-phones-23.php', 1, 0, 74)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (309, N'http://www.gsmarena.com/sharp-phones-f-23-0-p2.php', 0, 0, 74)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (310, N'http://www.gsmarena.com/mwg-phones-56.php', 1, 0, 53)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (311, N'http://www.gsmarena.com/i_mobile-phones-52.php', 1, 0, 34)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (312, N'http://www.gsmarena.com/i_mobile-phones-f-52-0-p2.php', 0, 0, 34)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (313, N'http://www.gsmarena.com/siemens-phones-3.php', 1, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (314, N'http://www.gsmarena.com/siemens-phones-f-3-0-p2.php', 0, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (315, N'http://www.gsmarena.com/siemens-phones-f-3-0-p3.php', 0, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (316, N'http://www.gsmarena.com/nec-phones-12.php', 1, 0, 54)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (317, N'http://www.gsmarena.com/nec-phones-f-12-0-p2.php', 0, 0, 54)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (318, N'http://www.gsmarena.com/icemobile-phones-69.php', 1, 0, 35)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (319, N'http://www.gsmarena.com/icemobile-phones-f-69-0-p2.php', 0, 0, 35)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (320, N'http://www.gsmarena.com/sonim-phones-54.php', 1, 0, 76)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (321, N'http://www.gsmarena.com/neonode-phones-22.php', 1, 0, 55)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (322, N'http://www.gsmarena.com/innostream-phones-29.php', 1, 0, 36)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (323, N'http://www.gsmarena.com/sony-phones-7.php', 1, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (324, N'http://www.gsmarena.com/niu-phones-79.php', 1, 0, 56)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (325, N'http://www.gsmarena.com/inq-phones-60.php', 1, 0, 37)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (326, N'http://www.gsmarena.com/sony_ericsson-phones-19.php', 1, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (327, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p2.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (328, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p3.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (329, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p4.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (330, N'http://www.gsmarena.com/jolla-phones-84.php', 1, 0, 38)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (331, N'http://www.gsmarena.com/nokia-phones-1.php', 1, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (332, N'http://www.gsmarena.com/nokia-phones-f-1-0-p2.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (333, N'http://www.gsmarena.com/nokia-phones-f-1-0-p3.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (334, N'http://www.gsmarena.com/nokia-phones-f-1-0-p4.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (335, N'http://www.gsmarena.com/nokia-phones-f-1-0-p5.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (336, N'http://www.gsmarena.com/nokia-phones-f-1-0-p6.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (337, N'http://www.gsmarena.com/nokia-phones-f-1-0-p7.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (338, N'http://www.gsmarena.com/spice-phones-68.php', 1, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (339, N'http://www.gsmarena.com/spice-phones-f-68-0-p2.php', 0, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (340, N'http://www.gsmarena.com/spice-phones-f-68-0-p3.php', 0, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (341, N'http://www.gsmarena.com/karbonn-phones-83.php', 1, 0, 39)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (342, N'http://www.gsmarena.com/karbonn-phones-f-83-0-p2.php', 0, 0, 39)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (343, N'http://www.gsmarena.com/o2-phones-30.php', 1, 0, 58)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (344, N'http://www.gsmarena.com/o2-phones-f-30-0-p2.php', 0, 0, 58)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (345, N'http://www.gsmarena.com/kyocera-phones-17.php', 1, 0, 40)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (346, N'http://www.gsmarena.com/t_mobile-phones-55.php', 1, 0, 80)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (347, N'http://www.gsmarena.com/t_mobile-phones-f-55-0-p2.php', 0, 0, 80)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (348, N'http://www.gsmarena.com/oneplus-phones-95.php', 1, 0, 59)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (349, N'http://www.gsmarena.com/lava-phones-94.php', 1, 0, 41)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (350, N'http://www.gsmarena.com/lenovo-phones-73.php', 1, 0, 42)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (351, N'http://www.gsmarena.com/tel_me_-phones-21.php', 1, 0, 81)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (352, N'http://www.gsmarena.com/oppo-phones-82.php', 1, 0, 60)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (353, N'http://www.gsmarena.com/lg-phones-20.php', 1, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (354, N'http://www.gsmarena.com/lg-phones-f-20-0-p2.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (355, N'http://www.gsmarena.com/lg-phones-f-20-0-p3.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (356, N'http://www.gsmarena.com/lg-phones-f-20-0-p4.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (357, N'http://www.gsmarena.com/lg-phones-f-20-0-p5.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (358, N'http://www.gsmarena.com/lg-phones-f-20-0-p6.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (359, N'http://www.gsmarena.com/lg-phones-f-20-0-p7.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (360, N'http://www.gsmarena.com/lg-phones-f-20-0-p8.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (361, N'http://www.gsmarena.com/lg-phones-f-20-0-p9.php', 0, 0, 43)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (362, N'http://www.gsmarena.com/telit-phones-16.php', 1, 0, 82)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (363, N'http://www.gsmarena.com/orange-phones-71.php', 1, 0, 61)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (364, N'http://www.gsmarena.com/thuraya-phones-49.php', 1, 0, 83)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (365, N'http://www.gsmarena.com/maxon-phones-14.php', 1, 0, 44)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (366, N'http://www.gsmarena.com/maxon-phones-f-14-0-p2.php', 0, 0, 44)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (367, N'http://www.gsmarena.com/palm-phones-27.php', 1, 0, 62)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (368, N'http://www.gsmarena.com/maxwest-phones-87.php', 1, 0, 45)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (369, N'http://www.gsmarena.com/toshiba-phones-44.php', 1, 0, 84)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (370, N'http://www.gsmarena.com/panasonic-phones-6.php', 1, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (371, N'http://www.gsmarena.com/panasonic-phones-f-6-0-p2.php', 0, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (372, N'http://www.gsmarena.com/panasonic-phones-f-6-0-p3.php', 0, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (373, N'http://www.gsmarena.com/unnecto-phones-91.php', 1, 0, 85)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (374, N'http://www.gsmarena.com/meizu-phones-74.php', 1, 0, 46)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (375, N'http://www.gsmarena.com/pantech-phones-32.php', 1, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (376, N'http://www.gsmarena.com/pantech-phones-f-32-0-p2.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (377, N'http://www.gsmarena.com/pantech-phones-f-32-0-p3.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (378, N'http://www.gsmarena.com/pantech-phones-f-32-0-p4.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (379, N'http://www.gsmarena.com/vertu-phones-39.php', 1, 0, 86)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (380, N'http://www.gsmarena.com/micromax-phones-66.php', 1, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (381, N'http://www.gsmarena.com/micromax-phones-f-66-0-p2.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (382, N'http://www.gsmarena.com/micromax-phones-f-66-0-p3.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (383, N'http://www.gsmarena.com/micromax-phones-f-66-0-p4.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (384, N'http://www.gsmarena.com/micromax-phones-f-66-0-p5.php', 0, 0, 47)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (385, N'http://www.gsmarena.com/parla-phones-81.php', 1, 0, 65)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (386, N'http://www.gsmarena.com/verykool-phones-70.php', 1, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (387, N'http://www.gsmarena.com/verykool-phones-f-70-0-p2.php', 0, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (388, N'http://www.gsmarena.com/microsoft-phones-64.php', 1, 0, 48)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (389, N'http://www.gsmarena.com/philips-phones-11.php', 1, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (390, N'http://www.gsmarena.com/philips-phones-f-11-0-p2.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (391, N'http://www.gsmarena.com/philips-phones-f-11-0-p3.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (392, N'http://www.gsmarena.com/philips-phones-f-11-0-p4.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (393, N'http://www.gsmarena.com/philips-phones-f-11-0-p5.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (394, N'http://www.gsmarena.com/philips-phones-f-11-0-p6.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (395, N'http://www.gsmarena.com/philips-phones-f-11-0-p7.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (396, N'http://www.gsmarena.com/philips-phones-f-11-0-p8.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (397, N'http://www.gsmarena.com/vk_mobile-phones-37.php', 1, 0, 88)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (398, N'http://www.gsmarena.com/mitac-phones-25.php', 1, 0, 49)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (399, N'http://www.gsmarena.com/plum-phones-72.php', 1, 0, 67)
GO
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (400, N'http://www.gsmarena.com/plum-phones-f-72-0-p2.php', 0, 0, 67)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (401, N'http://www.gsmarena.com/vodafone-phones-53.php', 1, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (402, N'http://www.gsmarena.com/vodafone-phones-f-53-0-p2.php', 0, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (403, N'http://www.gsmarena.com/mitsubishi-phones-8.php', 1, 0, 50)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (404, N'http://www.gsmarena.com/mitsubishi-phones-f-8-0-p2.php', 0, 0, 50)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (405, N'http://www.gsmarena.com/prestigio-phones-86.php', 1, 0, 68)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (406, N'http://www.gsmarena.com/prestigio-phones-f-86-0-p2.php', 0, 0, 68)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (407, N'http://www.gsmarena.com/wnd-phones-51.php', 1, 0, 90)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (408, N'http://www.gsmarena.com/modu-phones-63.php', 1, 0, 51)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (409, N'http://www.gsmarena.com/qtek-phones-38.php', 1, 0, 69)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (410, N'http://www.gsmarena.com/xcute-phones-43.php', 1, 0, 91)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (411, N'http://www.gsmarena.com/motorola-phones-4.php', 1, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (412, N'http://www.gsmarena.com/motorola-phones-f-4-0-p2.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (413, N'http://www.gsmarena.com/motorola-phones-f-4-0-p3.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (414, N'http://www.gsmarena.com/motorola-phones-f-4-0-p4.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (415, N'http://www.gsmarena.com/motorola-phones-f-4-0-p5.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (416, N'http://www.gsmarena.com/motorola-phones-f-4-0-p6.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (417, N'http://www.gsmarena.com/motorola-phones-f-4-0-p7.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (418, N'http://www.gsmarena.com/motorola-phones-f-4-0-p8.php', 0, 0, 52)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (419, N'http://www.gsmarena.com/sagem-phones-13.php', 1, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (420, N'http://www.gsmarena.com/sagem-phones-f-13-0-p2.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (421, N'http://www.gsmarena.com/sagem-phones-f-13-0-p3.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (422, N'http://www.gsmarena.com/sagem-phones-f-13-0-p4.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (423, N'http://www.gsmarena.com/xiaomi-phones-80.php', 1, 0, 92)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (424, N'http://www.gsmarena.com/mwg-phones-56.php', 1, 0, 53)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (425, N'http://www.gsmarena.com/samsung-phones-9.php', 1, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (426, N'http://www.gsmarena.com/samsung-phones-f-9-0-p2.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (427, N'http://www.gsmarena.com/samsung-phones-f-9-0-p3.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (428, N'http://www.gsmarena.com/samsung-phones-f-9-0-p4.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (429, N'http://www.gsmarena.com/samsung-phones-f-9-0-p5.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (430, N'http://www.gsmarena.com/samsung-phones-f-9-0-p6.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (431, N'http://www.gsmarena.com/samsung-phones-f-9-0-p7.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (432, N'http://www.gsmarena.com/samsung-phones-f-9-0-p8.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (433, N'http://www.gsmarena.com/samsung-phones-f-9-0-p9.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (434, N'http://www.gsmarena.com/samsung-phones-f-9-0-p10.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (435, N'http://www.gsmarena.com/samsung-phones-f-9-0-p11.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (436, N'http://www.gsmarena.com/xolo-phones-85.php', 1, 0, 93)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (437, N'http://www.gsmarena.com/nec-phones-12.php', 1, 0, 54)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (438, N'http://www.gsmarena.com/nec-phones-f-12-0-p2.php', 0, 0, 54)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (439, N'http://www.gsmarena.com/yezz-phones-78.php', 1, 0, 94)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (440, N'http://www.gsmarena.com/sendo-phones-18.php', 1, 0, 72)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (441, N'http://www.gsmarena.com/neonode-phones-22.php', 1, 0, 55)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (442, N'http://www.gsmarena.com/sewon-phones-26.php', 1, 0, 73)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (443, N'http://www.gsmarena.com/sewon-phones-f-26-0-p2.php', 0, 0, 73)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (444, N'http://www.gsmarena.com/niu-phones-79.php', 1, 0, 56)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (445, N'http://www.gsmarena.com/sharp-phones-23.php', 1, 0, 74)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (446, N'http://www.gsmarena.com/sharp-phones-f-23-0-p2.php', 0, 0, 74)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (447, N'http://www.gsmarena.com/nokia-phones-1.php', 1, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (448, N'http://www.gsmarena.com/nokia-phones-f-1-0-p2.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (449, N'http://www.gsmarena.com/nokia-phones-f-1-0-p3.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (450, N'http://www.gsmarena.com/nokia-phones-f-1-0-p4.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (451, N'http://www.gsmarena.com/nokia-phones-f-1-0-p5.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (452, N'http://www.gsmarena.com/nokia-phones-f-1-0-p6.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (453, N'http://www.gsmarena.com/nokia-phones-f-1-0-p7.php', 0, 0, 57)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (454, N'http://www.gsmarena.com/siemens-phones-3.php', 1, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (455, N'http://www.gsmarena.com/siemens-phones-f-3-0-p2.php', 0, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (456, N'http://www.gsmarena.com/siemens-phones-f-3-0-p3.php', 0, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (457, N'http://www.gsmarena.com/o2-phones-30.php', 1, 0, 58)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (458, N'http://www.gsmarena.com/o2-phones-f-30-0-p2.php', 0, 0, 58)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (459, N'http://www.gsmarena.com/sonim-phones-54.php', 1, 0, 76)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (460, N'http://www.gsmarena.com/oneplus-phones-95.php', 1, 0, 59)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (461, N'http://www.gsmarena.com/sony-phones-7.php', 1, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (462, N'http://www.gsmarena.com/sony-phones-f-7-0-p2.php', 0, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (463, N'http://www.gsmarena.com/sony-phones-f-7-0-p3.php', 0, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (464, N'http://www.gsmarena.com/oppo-phones-82.php', 1, 0, 60)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (465, N'http://www.gsmarena.com/sony_ericsson-phones-19.php', 1, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (466, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p2.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (467, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p3.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (468, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p4.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (469, N'http://www.gsmarena.com/orange-phones-71.php', 1, 0, 61)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (470, N'http://www.gsmarena.com/spice-phones-68.php', 1, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (471, N'http://www.gsmarena.com/spice-phones-f-68-0-p2.php', 0, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (472, N'http://www.gsmarena.com/spice-phones-f-68-0-p3.php', 0, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (473, N'http://www.gsmarena.com/palm-phones-27.php', 1, 0, 62)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (474, N'http://www.gsmarena.com/t_mobile-phones-55.php', 1, 0, 80)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (475, N'http://www.gsmarena.com/t_mobile-phones-f-55-0-p2.php', 0, 0, 80)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (476, N'http://www.gsmarena.com/panasonic-phones-6.php', 1, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (477, N'http://www.gsmarena.com/panasonic-phones-f-6-0-p2.php', 0, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (478, N'http://www.gsmarena.com/panasonic-phones-f-6-0-p3.php', 0, 0, 63)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (479, N'http://www.gsmarena.com/tel_me_-phones-21.php', 1, 0, 81)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (480, N'http://www.gsmarena.com/pantech-phones-32.php', 1, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (481, N'http://www.gsmarena.com/pantech-phones-f-32-0-p2.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (482, N'http://www.gsmarena.com/pantech-phones-f-32-0-p3.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (483, N'http://www.gsmarena.com/pantech-phones-f-32-0-p4.php', 0, 0, 64)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (484, N'http://www.gsmarena.com/telit-phones-16.php', 1, 0, 82)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (485, N'http://www.gsmarena.com/parla-phones-81.php', 1, 0, 65)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (486, N'http://www.gsmarena.com/thuraya-phones-49.php', 1, 0, 83)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (487, N'http://www.gsmarena.com/philips-phones-11.php', 1, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (488, N'http://www.gsmarena.com/philips-phones-f-11-0-p2.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (489, N'http://www.gsmarena.com/philips-phones-f-11-0-p3.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (490, N'http://www.gsmarena.com/philips-phones-f-11-0-p4.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (491, N'http://www.gsmarena.com/philips-phones-f-11-0-p5.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (492, N'http://www.gsmarena.com/philips-phones-f-11-0-p6.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (493, N'http://www.gsmarena.com/philips-phones-f-11-0-p7.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (494, N'http://www.gsmarena.com/philips-phones-f-11-0-p8.php', 0, 0, 66)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (495, N'http://www.gsmarena.com/toshiba-phones-44.php', 1, 0, 84)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (496, N'http://www.gsmarena.com/plum-phones-72.php', 1, 0, 67)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (497, N'http://www.gsmarena.com/plum-phones-f-72-0-p2.php', 0, 0, 67)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (498, N'http://www.gsmarena.com/unnecto-phones-91.php', 1, 0, 85)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (499, N'http://www.gsmarena.com/prestigio-phones-86.php', 1, 0, 68)
GO
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (500, N'http://www.gsmarena.com/prestigio-phones-f-86-0-p2.php', 0, 0, 68)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (501, N'http://www.gsmarena.com/vertu-phones-39.php', 1, 0, 86)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (502, N'http://www.gsmarena.com/qtek-phones-38.php', 1, 0, 69)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (503, N'http://www.gsmarena.com/verykool-phones-70.php', 1, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (504, N'http://www.gsmarena.com/verykool-phones-f-70-0-p2.php', 0, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (505, N'http://www.gsmarena.com/sagem-phones-13.php', 1, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (506, N'http://www.gsmarena.com/sagem-phones-f-13-0-p2.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (507, N'http://www.gsmarena.com/sagem-phones-f-13-0-p3.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (508, N'http://www.gsmarena.com/sagem-phones-f-13-0-p4.php', 0, 0, 70)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (509, N'http://www.gsmarena.com/vk_mobile-phones-37.php', 1, 0, 88)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (510, N'http://www.gsmarena.com/samsung-phones-9.php', 1, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (511, N'http://www.gsmarena.com/samsung-phones-f-9-0-p2.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (512, N'http://www.gsmarena.com/samsung-phones-f-9-0-p3.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (513, N'http://www.gsmarena.com/samsung-phones-f-9-0-p4.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (514, N'http://www.gsmarena.com/samsung-phones-f-9-0-p5.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (515, N'http://www.gsmarena.com/samsung-phones-f-9-0-p6.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (516, N'http://www.gsmarena.com/samsung-phones-f-9-0-p7.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (517, N'http://www.gsmarena.com/samsung-phones-f-9-0-p8.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (518, N'http://www.gsmarena.com/samsung-phones-f-9-0-p9.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (519, N'http://www.gsmarena.com/samsung-phones-f-9-0-p10.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (520, N'http://www.gsmarena.com/samsung-phones-f-9-0-p11.php', 0, 0, 71)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (521, N'http://www.gsmarena.com/vodafone-phones-53.php', 1, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (522, N'http://www.gsmarena.com/vodafone-phones-f-53-0-p2.php', 0, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (523, N'http://www.gsmarena.com/sendo-phones-18.php', 1, 0, 72)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (524, N'http://www.gsmarena.com/wnd-phones-51.php', 1, 0, 90)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (525, N'http://www.gsmarena.com/sewon-phones-26.php', 1, 0, 73)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (526, N'http://www.gsmarena.com/sewon-phones-f-26-0-p2.php', 0, 0, 73)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (527, N'http://www.gsmarena.com/xcute-phones-43.php', 1, 0, 91)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (528, N'http://www.gsmarena.com/sharp-phones-23.php', 1, 0, 74)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (529, N'http://www.gsmarena.com/sharp-phones-f-23-0-p2.php', 0, 0, 74)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (530, N'http://www.gsmarena.com/xiaomi-phones-80.php', 1, 0, 92)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (531, N'http://www.gsmarena.com/siemens-phones-3.php', 1, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (532, N'http://www.gsmarena.com/siemens-phones-f-3-0-p2.php', 0, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (533, N'http://www.gsmarena.com/siemens-phones-f-3-0-p3.php', 0, 0, 75)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (534, N'http://www.gsmarena.com/xolo-phones-85.php', 1, 0, 93)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (535, N'http://www.gsmarena.com/sonim-phones-54.php', 1, 0, 76)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (536, N'http://www.gsmarena.com/yezz-phones-78.php', 1, 0, 94)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (537, N'http://www.gsmarena.com/sony-phones-7.php', 1, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (538, N'http://www.gsmarena.com/sony-phones-f-7-0-p2.php', 0, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (539, N'http://www.gsmarena.com/sony-phones-f-7-0-p3.php', 0, 0, 77)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (540, N'http://www.gsmarena.com/sony_ericsson-phones-19.php', 1, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (541, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p2.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (542, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p3.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (543, N'http://www.gsmarena.com/sony_ericsson-phones-f-19-0-p4.php', 0, 0, 78)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (544, N'http://www.gsmarena.com/spice-phones-68.php', 1, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (545, N'http://www.gsmarena.com/spice-phones-f-68-0-p2.php', 0, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (546, N'http://www.gsmarena.com/spice-phones-f-68-0-p3.php', 0, 0, 79)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (547, N'http://www.gsmarena.com/t_mobile-phones-55.php', 1, 0, 80)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (548, N'http://www.gsmarena.com/t_mobile-phones-f-55-0-p2.php', 0, 0, 80)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (549, N'http://www.gsmarena.com/tel_me_-phones-21.php', 1, 0, 81)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (550, N'http://www.gsmarena.com/telit-phones-16.php', 1, 0, 82)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (551, N'http://www.gsmarena.com/thuraya-phones-49.php', 1, 0, 83)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (552, N'http://www.gsmarena.com/toshiba-phones-44.php', 1, 0, 84)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (553, N'http://www.gsmarena.com/unnecto-phones-91.php', 1, 0, 85)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (554, N'http://www.gsmarena.com/vertu-phones-39.php', 1, 0, 86)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (555, N'http://www.gsmarena.com/verykool-phones-70.php', 1, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (556, N'http://www.gsmarena.com/verykool-phones-f-70-0-p2.php', 0, 0, 87)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (557, N'http://www.gsmarena.com/vk_mobile-phones-37.php', 1, 0, 88)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (558, N'http://www.gsmarena.com/vodafone-phones-53.php', 1, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (559, N'http://www.gsmarena.com/vodafone-phones-f-53-0-p2.php', 0, 0, 89)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (560, N'http://www.gsmarena.com/wnd-phones-51.php', 1, 0, 90)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (561, N'http://www.gsmarena.com/xcute-phones-43.php', 1, 0, 91)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (562, N'http://www.gsmarena.com/xiaomi-phones-80.php', 1, 0, 92)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (563, N'http://www.gsmarena.com/xolo-phones-85.php', 1, 0, 93)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (564, N'http://www.gsmarena.com/yezz-phones-78.php', 1, 0, 94)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (565, N'http://www.gsmarena.com/zte-phones-62.php', 1, 0, 95)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (566, N'http://www.gsmarena.com/zte-phones-f-62-0-p2.php', 0, 0, 95)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (567, N'http://www.gsmarena.com/zte-phones-f-62-0-p3.php', 0, 0, 95)
INSERT [dbo].[BrandPages] ([Id], [Url], [IsInitialPage], [IsRead], [Brand_Id]) VALUES (568, N'http://www.gsmarena.com/zte-phones-f-62-0-p4.php', 0, 0, 95)
SET IDENTITY_INSERT [dbo].[BrandPages] OFF
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (1, N'Acer', N'http://cdn2.gsmarena.com/vv/logos/lg_acer.gif', 63, 0, 1, CAST(0x0000A33801601D73 AS DateTime), CAST(0x0000A33801601D73 AS DateTime), N'http://www.gsmarena.com/acer-phones-59.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (2, N'Alcatel', N'http://cdn2.gsmarena.com/vv/logos/lg_alcat2.gif', 281, 0, 1, CAST(0x0000A33801601D77 AS DateTime), CAST(0x0000A33801601D77 AS DateTime), N'http://www.gsmarena.com/alcatel-phones-5.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (3, N'Allview', N'http://cdn2.gsmarena.com/vv/logos/lg_allview.gif', 40, 0, 1, CAST(0x0000A33801601E4A AS DateTime), CAST(0x0000A33801601E4A AS DateTime), N'http://www.gsmarena.com/allview-phones-88.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (4, N'Amazon', N'http://cdn2.gsmarena.com/vv/logos/lg_amazon.gif', 7, 0, 1, CAST(0x0000A33801601E4A AS DateTime), CAST(0x0000A33801601E4A AS DateTime), N'http://www.gsmarena.com/amazon-phones-76.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (5, N'Amoi', N'http://cdn2.gsmarena.com/vv/logos/lg_amoi.gif', 47, 0, 1, CAST(0x0000A33801601E86 AS DateTime), CAST(0x0000A33801601E86 AS DateTime), N'http://www.gsmarena.com/amoi-phones-28.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (6, N'Apple', N'http://cdn2.gsmarena.com/vv/logos/lg_apple.gif', 23, 0, 1, CAST(0x0000A33801601E86 AS DateTime), CAST(0x0000A33801601E86 AS DateTime), N'http://www.gsmarena.com/apple-phones-48.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (7, N'Archos', N'http://cdn2.gsmarena.com/vv/logos/lg_archos.gif', 14, 0, 1, CAST(0x0000A33801601EAF AS DateTime), CAST(0x0000A33801601EAF AS DateTime), N'http://www.gsmarena.com/archos-phones-90.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (8, N'Asus', N'http://cdn2.gsmarena.com/vv/logos/lg_asus.gif', 65, 0, 1, CAST(0x0000A33801601EAF AS DateTime), CAST(0x0000A33801601EAF AS DateTime), N'http://www.gsmarena.com/asus-phones-46.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (9, N'AT&T', N'http://cdn2.gsmarena.com/vv/logos/lg_att.gif', 4, 0, 1, CAST(0x0000A33801601ED7 AS DateTime), CAST(0x0000A33801601ED7 AS DateTime), N'http://www.gsmarena.com/at&t-phones-57.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (10, N'Benefon', N'http://cdn2.gsmarena.com/vv/logos/lg_benef.gif', 9, 0, 1, CAST(0x0000A33801601ED7 AS DateTime), CAST(0x0000A33801601ED7 AS DateTime), N'http://www.gsmarena.com/benefon-phones-15.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (11, N'BenQ', N'http://cdn2.gsmarena.com/vv/logos/lg_benq.gif', 31, 0, 1, CAST(0x0000A33801601EFF AS DateTime), CAST(0x0000A33801601EFF AS DateTime), N'http://www.gsmarena.com/benq-phones-31.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (12, N'BenQ-Siemens', N'http://cdn2.gsmarena.com/vv/logos/lg_benqs.gif', 27, 0, 1, CAST(0x0000A33801601EFF AS DateTime), CAST(0x0000A33801601EFF AS DateTime), N'http://www.gsmarena.com/benq_siemens-phones-42.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (13, N'Bird', N'http://cdn2.gsmarena.com/vv/logos/lg_bird.gif', 61, 0, 1, CAST(0x0000A33801601F28 AS DateTime), CAST(0x0000A33801601F28 AS DateTime), N'http://www.gsmarena.com/bird-phones-34.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (14, N'BlackBerry', N'http://cdn2.gsmarena.com/vv/logos/lg_bberry.gif', 76, 0, 1, CAST(0x0000A33801601F28 AS DateTime), CAST(0x0000A33801601F28 AS DateTime), N'http://www.gsmarena.com/blackberry-phones-36.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (15, N'BLU', N'http://cdn2.gsmarena.com/vv/logos/lg_blu1.gif', 107, 0, 1, CAST(0x0000A33801601F4E AS DateTime), CAST(0x0000A33801601F4E AS DateTime), N'http://www.gsmarena.com/blu-phones-67.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (16, N'Bosch', N'http://cdn2.gsmarena.com/vv/logos/lg_bosch.gif', 10, 0, 1, CAST(0x0000A33801601F4E AS DateTime), CAST(0x0000A33801601F4E AS DateTime), N'http://www.gsmarena.com/bosch-phones-10.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (17, N'Casio', N'http://cdn2.gsmarena.com/vv/logos/lg_casio.gif', 5, 0, 1, CAST(0x0000A33801601F77 AS DateTime), CAST(0x0000A33801601F77 AS DateTime), N'http://www.gsmarena.com/casio-phones-77.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (18, N'Cat', N'http://cdn2.gsmarena.com/vv/logos/lg_cat.gif', 3, 0, 1, CAST(0x0000A33801601F77 AS DateTime), CAST(0x0000A33801601F77 AS DateTime), N'http://www.gsmarena.com/cat-phones-89.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (19, N'Celkon', N'http://cdn2.gsmarena.com/vv/logos/lg_celkon.gif', 187, 0, 1, CAST(0x0000A33801601F99 AS DateTime), CAST(0x0000A33801601F99 AS DateTime), N'http://www.gsmarena.com/celkon-phones-75.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (20, N'Chea', N'http://cdn2.gsmarena.com/vv/logos/lg_chea.gif', 12, 0, 1, CAST(0x0000A33801601F99 AS DateTime), CAST(0x0000A33801601F99 AS DateTime), N'http://www.gsmarena.com/chea-phones-24.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (21, N'Dell', N'http://cdn2.gsmarena.com/vv/logos/lg_dell.gif', 18, 0, 1, CAST(0x0000A33801601FC2 AS DateTime), CAST(0x0000A33801601FC2 AS DateTime), N'http://www.gsmarena.com/dell-phones-61.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (22, N'Emporia', N'http://cdn2.gsmarena.com/vv/logos/lg_emporia.gif', 15, 0, 1, CAST(0x0000A33801601FC2 AS DateTime), CAST(0x0000A33801601FC2 AS DateTime), N'http://www.gsmarena.com/emporia-phones-93.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (23, N'Ericsson', N'http://cdn2.gsmarena.com/vv/logos/lg_erics.gif', 40, 0, 1, CAST(0x0000A33801601FE5 AS DateTime), CAST(0x0000A33801601FE5 AS DateTime), N'http://www.gsmarena.com/ericsson-phones-2.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (24, N'Eten', N'http://cdn2.gsmarena.com/vv/logos/lg_eten.gif', 22, 0, 1, CAST(0x0000A33801601FE5 AS DateTime), CAST(0x0000A33801601FE5 AS DateTime), N'http://www.gsmarena.com/eten-phones-40.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (25, N'Fujitsu Siemens', N'http://cdn2.gsmarena.com/vv/logos/lg_fc.gif', 2, 0, 1, CAST(0x0000A3380160200B AS DateTime), CAST(0x0000A3380160200B AS DateTime), N'http://www.gsmarena.com/fujitsu_siemens-phones-50.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (26, N'Garmin-Asus', N'http://cdn2.gsmarena.com/vv/logos/lg_gaas.gif', 5, 0, 1, CAST(0x0000A3380160200B AS DateTime), CAST(0x0000A3380160200B AS DateTime), N'http://www.gsmarena.com/garmin_asus-phones-65.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (27, N'Gigabyte', N'http://cdn2.gsmarena.com/vv/logos/lg_gigabyte.gif', 49, 0, 1, CAST(0x0000A3380160202B AS DateTime), CAST(0x0000A3380160202B AS DateTime), N'http://www.gsmarena.com/gigabyte-phones-47.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (28, N'Gionee', N'http://cdn2.gsmarena.com/vv/logos/lg_gionee.gif', 20, 0, 1, CAST(0x0000A3380160202B AS DateTime), CAST(0x0000A3380160202B AS DateTime), N'http://www.gsmarena.com/gionee-phones-92.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (29, N'Haier', N'http://cdn2.gsmarena.com/vv/logos/lg_hai.gif', 51, 0, 1, CAST(0x0000A33801602050 AS DateTime), CAST(0x0000A33801602050 AS DateTime), N'http://www.gsmarena.com/haier-phones-33.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (30, N'HP', N'http://cdn2.gsmarena.com/vv/logos/lg_hp.gif', 32, 0, 1, CAST(0x0000A33801602050 AS DateTime), CAST(0x0000A33801602050 AS DateTime), N'http://www.gsmarena.com/hp-phones-41.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (31, N'HTC', N'http://cdn2.gsmarena.com/vv/logos/lg_htc.gif', 181, 0, 1, CAST(0x0000A33801602077 AS DateTime), CAST(0x0000A33801602077 AS DateTime), N'http://www.gsmarena.com/htc-phones-45.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (32, N'Huawei', N'http://cdn2.gsmarena.com/vv/logos/lg_huawei.gif', 141, 0, 1, CAST(0x0000A33801602077 AS DateTime), CAST(0x0000A33801602077 AS DateTime), N'http://www.gsmarena.com/huawei-phones-58.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (33, N'i-mate', N'http://cdn2.gsmarena.com/vv/logos/lg_imate.gif', 34, 0, 1, CAST(0x0000A33801602098 AS DateTime), CAST(0x0000A33801602098 AS DateTime), N'http://www.gsmarena.com/i_mate-phones-35.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (34, N'i-mobile', N'http://cdn2.gsmarena.com/vv/logos/lg_imobile.gif', 37, 0, 1, CAST(0x0000A33801602098 AS DateTime), CAST(0x0000A33801602098 AS DateTime), N'http://www.gsmarena.com/i_mobile-phones-52.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (35, N'Icemobile', N'http://cdn2.gsmarena.com/vv/logos/lg_icemobile.gif', 51, 0, 1, CAST(0x0000A338016020B6 AS DateTime), CAST(0x0000A338016020B6 AS DateTime), N'http://www.gsmarena.com/icemobile-phones-69.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (36, N'Innostream', N'http://cdn2.gsmarena.com/vv/logos/lg_innos.gif', 18, 0, 1, CAST(0x0000A338016020B6 AS DateTime), CAST(0x0000A338016020B6 AS DateTime), N'http://www.gsmarena.com/innostream-phones-29.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (37, N'iNQ', N'http://cdn2.gsmarena.com/vv/logos/lg_inq.gif', 5, 0, 1, CAST(0x0000A338016020DD AS DateTime), CAST(0x0000A338016020DD AS DateTime), N'http://www.gsmarena.com/inq-phones-60.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (38, N'Jolla', N'http://cdn2.gsmarena.com/vv/logos/lg_jolla.gif', 1, 0, 1, CAST(0x0000A338016020DD AS DateTime), CAST(0x0000A338016020DD AS DateTime), N'http://www.gsmarena.com/jolla-phones-84.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (39, N'Karbonn', N'http://cdn2.gsmarena.com/vv/logos/lg_karbo.gif', 54, 0, 1, CAST(0x0000A338016020FD AS DateTime), CAST(0x0000A338016020FD AS DateTime), N'http://www.gsmarena.com/karbonn-phones-83.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (40, N'Kyocera', N'http://cdn2.gsmarena.com/vv/logos/lg_kyoce.gif', 18, 0, 1, CAST(0x0000A338016020FD AS DateTime), CAST(0x0000A338016020FD AS DateTime), N'http://www.gsmarena.com/kyocera-phones-17.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (41, N'Lava', N'http://cdn2.gsmarena.com/vv/logos/lg_lava.gif', 22, 0, 1, CAST(0x0000A3380160211F AS DateTime), CAST(0x0000A3380160211F AS DateTime), N'http://www.gsmarena.com/lava-phones-94.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (42, N'Lenovo', N'http://cdn2.gsmarena.com/vv/logos/lg_lenovo.gif', 74, 0, 1, CAST(0x0000A3380160211F AS DateTime), CAST(0x0000A3380160211F AS DateTime), N'http://www.gsmarena.com/lenovo-phones-73.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (43, N'LG', N'http://cdn2.gsmarena.com/vv/logos/lg_lg.gif', 494, 0, 1, CAST(0x0000A33801602140 AS DateTime), CAST(0x0000A33801602140 AS DateTime), N'http://www.gsmarena.com/lg-phones-20.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (44, N'Maxon', N'http://cdn2.gsmarena.com/vv/logos/lg_maxon.gif', 31, 0, 1, CAST(0x0000A33801602145 AS DateTime), CAST(0x0000A33801602145 AS DateTime), N'http://www.gsmarena.com/maxon-phones-14.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (45, N'Maxwest', N'http://cdn2.gsmarena.com/vv/logos/lg_maxwest.gif', 17, 0, 1, CAST(0x0000A33801602164 AS DateTime), CAST(0x0000A33801602164 AS DateTime), N'http://www.gsmarena.com/maxwest-phones-87.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (46, N'Meizu', N'http://cdn2.gsmarena.com/vv/logos/lg_meizu.gif', 4, 0, 1, CAST(0x0000A33801602164 AS DateTime), CAST(0x0000A33801602164 AS DateTime), N'http://www.gsmarena.com/meizu-phones-74.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (47, N'Micromax', N'http://cdn2.gsmarena.com/vv/logos/lg_mmax.gif', 159, 0, 1, CAST(0x0000A33801602188 AS DateTime), CAST(0x0000A33801602188 AS DateTime), N'http://www.gsmarena.com/micromax-phones-66.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (48, N'Microsoft', N'http://cdn2.gsmarena.com/vv/logos/lg_ms.gif', 6, 0, 1, CAST(0x0000A33801602188 AS DateTime), CAST(0x0000A33801602188 AS DateTime), N'http://www.gsmarena.com/microsoft-phones-64.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (49, N'Mitac', N'http://cdn2.gsmarena.com/vv/logos/lg_mitac.gif', 12, 0, 1, CAST(0x0000A338016021A7 AS DateTime), CAST(0x0000A338016021A7 AS DateTime), N'http://www.gsmarena.com/mitac-phones-25.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (50, N'Mitsubishi', N'http://cdn2.gsmarena.com/vv/logos/lg_mitsu.gif', 25, 0, 1, CAST(0x0000A338016021A7 AS DateTime), CAST(0x0000A338016021A7 AS DateTime), N'http://www.gsmarena.com/mitsubishi-phones-8.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (51, N'Modu', N'http://cdn2.gsmarena.com/vv/logos/lg_modu.gif', 8, 0, 1, CAST(0x0000A338016021CA AS DateTime), CAST(0x0000A338016021CA AS DateTime), N'http://www.gsmarena.com/modu-phones-63.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (52, N'Motorola', N'http://cdn2.gsmarena.com/vv/logos/lg_motor.gif', 401, 0, 1, CAST(0x0000A338016021CA AS DateTime), CAST(0x0000A338016021CA AS DateTime), N'http://www.gsmarena.com/motorola-phones-4.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (53, N'MWg', N'http://cdn2.gsmarena.com/vv/logos/lg_mwg.gif', 5, 0, 1, CAST(0x0000A338016021EC AS DateTime), CAST(0x0000A338016021EC AS DateTime), N'http://www.gsmarena.com/mwg-phones-56.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (54, N'NEC', N'http://cdn2.gsmarena.com/vv/logos/lg_nec.gif', 73, 0, 1, CAST(0x0000A338016021EC AS DateTime), CAST(0x0000A338016021EC AS DateTime), N'http://www.gsmarena.com/nec-phones-12.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (55, N'Neonode', N'http://cdn2.gsmarena.com/vv/logos/lg_neono.gif', 3, 0, 1, CAST(0x0000A33801602210 AS DateTime), CAST(0x0000A33801602210 AS DateTime), N'http://www.gsmarena.com/neonode-phones-22.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (56, N'NIU', N'http://cdn2.gsmarena.com/vv/logos/lg_niu.gif', 18, 0, 1, CAST(0x0000A33801602210 AS DateTime), CAST(0x0000A33801602210 AS DateTime), N'http://www.gsmarena.com/niu-phones-79.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (57, N'Nokia', N'http://cdn2.gsmarena.com/vv/logos/lg_nokia.gif', 423, 0, 1, CAST(0x0000A33801602237 AS DateTime), CAST(0x0000A33801602237 AS DateTime), N'http://www.gsmarena.com/nokia-phones-1.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (58, N'O2', N'http://cdn2.gsmarena.com/vv/logos/lg_o2.gif', 45, 0, 1, CAST(0x0000A33801602237 AS DateTime), CAST(0x0000A33801602237 AS DateTime), N'http://www.gsmarena.com/o2-phones-30.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (59, N'OnePlus', N'http://cdn2.gsmarena.com/vv/logos/lg_oneplus.gif', 1, 0, 1, CAST(0x0000A33801602255 AS DateTime), CAST(0x0000A33801602255 AS DateTime), N'http://www.gsmarena.com/oneplus-phones-95.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (60, N'Oppo', N'http://cdn2.gsmarena.com/vv/logos/lg_oppo.gif', 17, 0, 1, CAST(0x0000A33801602255 AS DateTime), CAST(0x0000A33801602255 AS DateTime), N'http://www.gsmarena.com/oppo-phones-82.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (61, N'Orange', N'http://cdn2.gsmarena.com/vv/logos/lg_orange.gif', 17, 0, 1, CAST(0x0000A3380160227E AS DateTime), CAST(0x0000A3380160227E AS DateTime), N'http://www.gsmarena.com/orange-phones-71.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (62, N'Palm', N'http://cdn2.gsmarena.com/vv/logos/lg_hands.gif', 16, 0, 1, CAST(0x0000A3380160227E AS DateTime), CAST(0x0000A3380160227E AS DateTime), N'http://www.gsmarena.com/palm-phones-27.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (63, N'Panasonic', N'http://cdn2.gsmarena.com/vv/logos/lg_panas.gif', 54, 0, 1, CAST(0x0000A338016022A5 AS DateTime), CAST(0x0000A338016022A5 AS DateTime), N'http://www.gsmarena.com/panasonic-phones-6.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (64, N'Pantech', N'http://cdn2.gsmarena.com/vv/logos/lg_pante.gif', 71, 0, 1, CAST(0x0000A338016022A5 AS DateTime), CAST(0x0000A338016022A5 AS DateTime), N'http://www.gsmarena.com/pantech-phones-32.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (65, N'Parla', N'http://cdn2.gsmarena.com/vv/logos/lg_parla.gif', 7, 0, 1, CAST(0x0000A338016022C7 AS DateTime), CAST(0x0000A338016022C7 AS DateTime), N'http://www.gsmarena.com/parla-phones-81.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (66, N'Philips', N'http://cdn2.gsmarena.com/vv/logos/lg_phili.gif', 216, 0, 1, CAST(0x0000A338016022C7 AS DateTime), CAST(0x0000A338016022C7 AS DateTime), N'http://www.gsmarena.com/philips-phones-11.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (67, N'Plum', N'http://cdn2.gsmarena.com/vv/logos/lg_plum.gif', 58, 0, 1, CAST(0x0000A338016022ED AS DateTime), CAST(0x0000A338016022ED AS DateTime), N'http://www.gsmarena.com/plum-phones-72.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (68, N'Prestigio', N'http://cdn2.gsmarena.com/vv/logos/lg_presti.gif', 51, 0, 1, CAST(0x0000A338016022ED AS DateTime), CAST(0x0000A338016022ED AS DateTime), N'http://www.gsmarena.com/prestigio-phones-86.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (69, N'Qtek', N'http://cdn2.gsmarena.com/vv/logos/lg_qtek.gif', 21, 0, 1, CAST(0x0000A3380160230F AS DateTime), CAST(0x0000A3380160230F AS DateTime), N'http://www.gsmarena.com/qtek-phones-38.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (70, N'Sagem', N'http://cdn2.gsmarena.com/vv/logos/lg_sagem.gif', 120, 0, 1, CAST(0x0000A3380160230F AS DateTime), CAST(0x0000A3380160230F AS DateTime), N'http://www.gsmarena.com/sagem-phones-13.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (71, N'Samsung', N'http://cdn2.gsmarena.com/vv/logos/lg_samsu.gif', 949, 0, 1, CAST(0x0000A33801602338 AS DateTime), CAST(0x0000A33801602338 AS DateTime), N'http://www.gsmarena.com/samsung-phones-9.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (72, N'Sendo', N'http://cdn2.gsmarena.com/vv/logos/lg_sendo.gif', 19, 0, 1, CAST(0x0000A33801602338 AS DateTime), CAST(0x0000A33801602338 AS DateTime), N'http://www.gsmarena.com/sendo-phones-18.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (73, N'Sewon', N'http://cdn2.gsmarena.com/vv/logos/lg_sewon.gif', 25, 0, 1, CAST(0x0000A3380160235F AS DateTime), CAST(0x0000A3380160235F AS DateTime), N'http://www.gsmarena.com/sewon-phones-26.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (74, N'Sharp', N'http://cdn2.gsmarena.com/vv/logos/lg_sharp.gif', 40, 0, 1, CAST(0x0000A3380160235F AS DateTime), CAST(0x0000A3380160235F AS DateTime), N'http://www.gsmarena.com/sharp-phones-23.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (75, N'Siemens', N'http://cdn2.gsmarena.com/vv/logos/lg_sieme.gif', 94, 0, 1, CAST(0x0000A33801602386 AS DateTime), CAST(0x0000A33801602386 AS DateTime), N'http://www.gsmarena.com/siemens-phones-3.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (76, N'Sonim', N'http://cdn2.gsmarena.com/vv/logos/lg_sonim.gif', 11, 0, 1, CAST(0x0000A33801602386 AS DateTime), CAST(0x0000A33801602386 AS DateTime), N'http://www.gsmarena.com/sonim-phones-54.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (77, N'Sony', N'http://cdn2.gsmarena.com/vv/logos/lg_sony.gif', 68, 0, 1, CAST(0x0000A338016023B0 AS DateTime), CAST(0x0000A338016023B0 AS DateTime), N'http://www.gsmarena.com/sony-phones-7.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (78, N'Sony Ericsson', N'http://cdn2.gsmarena.com/vv/logos/lg_sonye.gif', 188, 0, 1, CAST(0x0000A338016023B0 AS DateTime), CAST(0x0000A338016023B0 AS DateTime), N'http://www.gsmarena.com/sony_ericsson-phones-19.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (79, N'Spice', N'http://cdn2.gsmarena.com/vv/logos/lg_spice.gif', 100, 0, 1, CAST(0x0000A338016023D9 AS DateTime), CAST(0x0000A338016023D9 AS DateTime), N'http://www.gsmarena.com/spice-phones-68.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (80, N'T-Mobile', N'http://cdn2.gsmarena.com/vv/logos/lg_tmobile.gif', 52, 0, 1, CAST(0x0000A338016023D9 AS DateTime), CAST(0x0000A338016023D9 AS DateTime), N'http://www.gsmarena.com/t_mobile-phones-55.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (81, N'Tel.Me.', N'http://cdn2.gsmarena.com/vv/logos/lg_telme.gif', 7, 0, 1, CAST(0x0000A338016023FB AS DateTime), CAST(0x0000A338016023FB AS DateTime), N'http://www.gsmarena.com/tel_me_-phones-21.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (82, N'Telit', N'http://cdn2.gsmarena.com/vv/logos/lg_telit.gif', 30, 0, 1, CAST(0x0000A338016023FB AS DateTime), CAST(0x0000A338016023FB AS DateTime), N'http://www.gsmarena.com/telit-phones-16.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (83, N'Thuraya', N'http://cdn2.gsmarena.com/vv/logos/lg_thuraya.gif', 1, 0, 1, CAST(0x0000A33801602427 AS DateTime), CAST(0x0000A33801602427 AS DateTime), N'http://www.gsmarena.com/thuraya-phones-49.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (84, N'Toshiba', N'http://cdn2.gsmarena.com/vv/logos/lg_toshiba.gif', 33, 0, 1, CAST(0x0000A33801602427 AS DateTime), CAST(0x0000A33801602427 AS DateTime), N'http://www.gsmarena.com/toshiba-phones-44.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (85, N'Unnecto', N'http://cdn2.gsmarena.com/vv/logos/lg_unnecto.gif', 13, 0, 1, CAST(0x0000A33801602448 AS DateTime), CAST(0x0000A33801602448 AS DateTime), N'http://www.gsmarena.com/unnecto-phones-91.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (86, N'Vertu', N'http://cdn2.gsmarena.com/vv/logos/lg_vertu.gif', 15, 0, 1, CAST(0x0000A33801602448 AS DateTime), CAST(0x0000A33801602448 AS DateTime), N'http://www.gsmarena.com/vertu-phones-39.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (87, N'verykool', N'http://cdn2.gsmarena.com/vv/logos/lg_veryk.gif', 68, 0, 1, CAST(0x0000A33801602470 AS DateTime), CAST(0x0000A33801602470 AS DateTime), N'http://www.gsmarena.com/verykool-phones-70.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (88, N'VK Mobile', N'http://cdn2.gsmarena.com/vv/logos/lg_vk.gif', 31, 0, 1, CAST(0x0000A33801602470 AS DateTime), CAST(0x0000A33801602470 AS DateTime), N'http://www.gsmarena.com/vk_mobile-phones-37.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (89, N'Vodafone', N'http://cdn2.gsmarena.com/vv/logos/lg_vodafone.gif', 60, 0, 1, CAST(0x0000A33801602496 AS DateTime), CAST(0x0000A33801602496 AS DateTime), N'http://www.gsmarena.com/vodafone-phones-53.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (90, N'WND', N'http://cdn2.gsmarena.com/vv/logos/lg_wnd.gif', 5, 0, 1, CAST(0x0000A33801602496 AS DateTime), CAST(0x0000A33801602496 AS DateTime), N'http://www.gsmarena.com/wnd-phones-51.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (91, N'XCute', N'http://cdn2.gsmarena.com/vv/logos/lg_xcute.gif', 4, 0, 1, CAST(0x0000A338016024B8 AS DateTime), CAST(0x0000A338016024B8 AS DateTime), N'http://www.gsmarena.com/xcute-phones-43.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (92, N'Xiaomi', N'http://cdn2.gsmarena.com/vv/logos/lg_xiao.gif', 9, 0, 1, CAST(0x0000A338016024B8 AS DateTime), CAST(0x0000A338016024B8 AS DateTime), N'http://www.gsmarena.com/xiaomi-phones-80.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (93, N'XOLO', N'http://cdn2.gsmarena.com/vv/logos/lg_xolo.gif', 33, 0, 1, CAST(0x0000A338016024E3 AS DateTime), CAST(0x0000A338016024E3 AS DateTime), N'http://www.gsmarena.com/xolo-phones-85.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (94, N'Yezz', N'http://cdn2.gsmarena.com/vv/logos/lg_yezz.gif', 36, 0, 1, CAST(0x0000A338016024E3 AS DateTime), CAST(0x0000A338016024E3 AS DateTime), N'http://www.gsmarena.com/yezz-phones-78.php')
INSERT [dbo].[Brands] ([Id], [BrandName], [ImageUrl], [NumberOfProducts], [HasToBeMonitered], [IsActive], [AddedDate], [LastModifiedDate], [Url]) VALUES (95, N'ZTE', N'http://cdn2.gsmarena.com/vv/logos/lg_zte.gif', 124, 0, 1, CAST(0x0000A338016024F7 AS DateTime), CAST(0x0000A338016024F7 AS DateTime), N'http://www.gsmarena.com/zte-phones-62.php')
SET IDENTITY_INSERT [dbo].[Brands] OFF
/****** Object:  Index [IX_Brand_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BrandPages]') AND name = N'IX_Brand_Id')
CREATE NONCLUSTERED INDEX [IX_Brand_Id] ON [dbo].[BrandPages]
(
	[Brand_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Brand_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]') AND name = N'IX_Brand_Id')
CREATE NONCLUSTERED INDEX [IX_Brand_Id] ON [dbo].[BrandProductCounts]
(
	[Brand_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Schedule_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]') AND name = N'IX_Schedule_Id')
CREATE NONCLUSTERED INDEX [IX_Schedule_Id] ON [dbo].[BrandProductCounts]
(
	[Schedule_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ProductImages]') AND name = N'IX_Product_Id')
CREATE NONCLUSTERED INDEX [IX_Product_Id] ON [dbo].[ProductImages]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Brand_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND name = N'IX_Brand_Id')
CREATE NONCLUSTERED INDEX [IX_Brand_Id] ON [dbo].[Products]
(
	[Brand_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Heading_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]') AND name = N'IX_Heading_Id')
CREATE NONCLUSTERED INDEX [IX_Heading_Id] ON [dbo].[SpecificatonDetails]
(
	[Heading_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Specifiction_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]') AND name = N'IX_Specifiction_Id')
CREATE NONCLUSTERED INDEX [IX_Specifiction_Id] ON [dbo].[SpecificatonDetails]
(
	[Specifiction_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Specifictions]') AND name = N'IX_Product_Id')
CREATE NONCLUSTERED INDEX [IX_Product_Id] ON [dbo].[Specifictions]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Type_Id]    Script Date: 28/05/2014 07:20:29 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Specifictions]') AND name = N'IX_Type_Id')
CREATE NONCLUSTERED INDEX [IX_Type_Id] ON [dbo].[Specifictions]
(
	[Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BrandPages_dbo.Brands_Brand_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[BrandPages]'))
ALTER TABLE [dbo].[BrandPages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BrandPages_dbo.Brands_Brand_Id] FOREIGN KEY([Brand_Id])
REFERENCES [dbo].[Brands] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BrandPages_dbo.Brands_Brand_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[BrandPages]'))
ALTER TABLE [dbo].[BrandPages] CHECK CONSTRAINT [FK_dbo.BrandPages_dbo.Brands_Brand_Id]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BrandProductCounts_dbo.Brands_Brand_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]'))
ALTER TABLE [dbo].[BrandProductCounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BrandProductCounts_dbo.Brands_Brand_Id] FOREIGN KEY([Brand_Id])
REFERENCES [dbo].[Brands] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BrandProductCounts_dbo.Brands_Brand_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]'))
ALTER TABLE [dbo].[BrandProductCounts] CHECK CONSTRAINT [FK_dbo.BrandProductCounts_dbo.Brands_Brand_Id]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BrandProductCounts_dbo.Schedules_Schedule_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]'))
ALTER TABLE [dbo].[BrandProductCounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BrandProductCounts_dbo.Schedules_Schedule_Id] FOREIGN KEY([Schedule_Id])
REFERENCES [dbo].[Schedules] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.BrandProductCounts_dbo.Schedules_Schedule_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[BrandProductCounts]'))
ALTER TABLE [dbo].[BrandProductCounts] CHECK CONSTRAINT [FK_dbo.BrandProductCounts_dbo.Schedules_Schedule_Id]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductImages_dbo.Products_Product_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImages]'))
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductImages_dbo.Products_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ProductImages_dbo.Products_Product_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductImages]'))
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_dbo.ProductImages_dbo.Products_Product_Id]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Products_dbo.Brands_Brand_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Brands_Brand_Id] FOREIGN KEY([Brand_Id])
REFERENCES [dbo].[Brands] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Products_dbo.Brands_Brand_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Brands_Brand_Id]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SpecificatonDetails_dbo.SpecifictionHeadings_Heading_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]'))
ALTER TABLE [dbo].[SpecificatonDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SpecificatonDetails_dbo.SpecifictionHeadings_Heading_Id] FOREIGN KEY([Heading_Id])
REFERENCES [dbo].[SpecifictionHeadings] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SpecificatonDetails_dbo.SpecifictionHeadings_Heading_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]'))
ALTER TABLE [dbo].[SpecificatonDetails] CHECK CONSTRAINT [FK_dbo.SpecificatonDetails_dbo.SpecifictionHeadings_Heading_Id]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SpecificatonDetails_dbo.Specifictions_Specifiction_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]'))
ALTER TABLE [dbo].[SpecificatonDetails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SpecificatonDetails_dbo.Specifictions_Specifiction_Id] FOREIGN KEY([Specifiction_Id])
REFERENCES [dbo].[Specifictions] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SpecificatonDetails_dbo.Specifictions_Specifiction_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[SpecificatonDetails]'))
ALTER TABLE [dbo].[SpecificatonDetails] CHECK CONSTRAINT [FK_dbo.SpecificatonDetails_dbo.Specifictions_Specifiction_Id]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Specifictions_dbo.Products_Product_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Specifictions]'))
ALTER TABLE [dbo].[Specifictions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Specifictions_dbo.Products_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Specifictions_dbo.Products_Product_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Specifictions]'))
ALTER TABLE [dbo].[Specifictions] CHECK CONSTRAINT [FK_dbo.Specifictions_dbo.Products_Product_Id]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Specifictions_dbo.SpecifictionTypes_Type_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Specifictions]'))
ALTER TABLE [dbo].[Specifictions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Specifictions_dbo.SpecifictionTypes_Type_Id] FOREIGN KEY([Type_Id])
REFERENCES [dbo].[SpecifictionTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.Specifictions_dbo.SpecifictionTypes_Type_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Specifictions]'))
ALTER TABLE [dbo].[Specifictions] CHECK CONSTRAINT [FK_dbo.Specifictions_dbo.SpecifictionTypes_Type_Id]
GO
USE [master]
GO
ALTER DATABASE [WorldOfMobiles] SET  READ_WRITE 
GO
