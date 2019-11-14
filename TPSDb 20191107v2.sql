USE [master]
GO
/****** Object:  Database [TPSDb]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE DATABASE [TPSDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPSDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TPSDb.mdf' , SIZE = 5312KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TPSDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TPSDb_log.ldf' , SIZE = 8512KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TPSDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPSDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPSDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPSDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPSDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPSDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPSDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPSDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPSDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPSDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPSDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPSDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPSDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPSDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPSDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPSDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPSDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TPSDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPSDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPSDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPSDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPSDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPSDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TPSDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPSDb] SET RECOVERY FULL 
GO
ALTER DATABASE [TPSDb] SET  MULTI_USER 
GO
ALTER DATABASE [TPSDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPSDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPSDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPSDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TPSDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPSDb', N'ON'
GO
USE [TPSDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/11/2019 4:17:17 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[ASCII] [nvarchar](255) NOT NULL,
	[Latitude] [real] NOT NULL,
	[Longitude] [real] NOT NULL,
	[Country] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityAttractions]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityAttractions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_CityAttractions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTravelPackages]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTravelPackages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[TravelPackageId] [int] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[SalePrice] [decimal](18, 2) NOT NULL,
	[Feedback] [nvarchar](max) NULL,
	[VoucherId] [int] NOT NULL,
 CONSTRAINT [PK_CustomerTravelPackages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerTravelPackageId] [int] NOT NULL,
	[DateTime] [datetime2](7) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[PaymentType] [nvarchar](max) NOT NULL,
	[TransactionHashcode] [nvarchar](max) NULL,
	[RecordOfCharge] [nvarchar](max) NULL,
	[PayPalPayment_RecordOfCharge] [nvarchar](max) NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[Forename] [nvarchar](255) NOT NULL,
	[Surname] [nvarchar](255) NOT NULL,
	[PersonType] [nvarchar](max) NOT NULL,
	[TravelProviderId] [int] NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelPackageCities]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelPackageCities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TravelPackageId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[NumberOfDays] [int] NOT NULL,
 CONSTRAINT [PK_TravelPackageCities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelPackageCityAttractions]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelPackageCityAttractions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TravelPackageCityId] [int] NOT NULL,
	[CityAttractionId] [int] NOT NULL,
 CONSTRAINT [PK_TravelPackageCityAttractions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelPackages]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelPackages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[StatusId] [int] NOT NULL,
	[RRP] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_TravelPackages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelProviders]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelProviders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_TravelProviders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vouchers]    Script Date: 7/11/2019 4:17:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vouchers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DiscountPercentage] [int] NOT NULL,
	[Expires] [datetime2](7) NOT NULL,
	[Valid] [bit] NOT NULL,
 CONSTRAINT [PK_Vouchers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.0.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191106235423_Initial', N'2.2.0-rtm-35687')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'67c3020c-8d3b-4ec6-a135-d8356f85f843', N'Administrator', N'Administrator', N'e2c431ea-a7b6-4778-a720-c676cefd6d1d')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'67c3020c-8d3b-4ec6-a135-d8356f85f845', N'Customer', N'Customer', N'e3c431ea-a7b6-4778-a720-c676cefd6d1d')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a6c592d9-3986-4faf-8824-9af8261ad572', N'67c3020c-8d3b-4ec6-a135-d8356f85f843')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3b838cf8-ec1f-41e5-a03d-07e926ceafb9', N'67c3020c-8d3b-4ec6-a135-d8356f85f845')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3b838cf8-ec1f-41e5-a03d-07e926ceafb9', N'charlie@email.com', N'CHARLIE@EMAIL.COM', N'charlie@email.com', N'CHARLIE@EMAIL.COM', 1, N'AQAAAAEAACcQAAAAEK85d7sa36nf8Ln0zDAWkBtYdwS7DqZyMAYMQJlMTPT5/W/cqQWfIhoYFIVWryrypA==', N'Y3WNTYPJPKECXSUT3XRC7DER4SVY5GCQ', N'431af5c3-629c-4543-9b68-8db38dc003d1', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a6c592d9-3986-4faf-8824-9af8261ad572', N'edward@email.com', N'EDWARD@EMAIL.COM', N'edward@email.com', N'EDWARD@EMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDeET5gnFH428PTuFEWOUl9L6LCn2piYRkJ8RYthQ0pyumPVFK65Si7wd7Ua3jI1hQ==', N'4TPOF3H4QO5ECTHW5G4JQEDKQLKUZV2Z', N'94caaa79-e290-430b-808c-d432cbbce483', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036006022, N'Exmouth', N'Exmouth', -21.9311, 114.1233, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036007778, N'Melton', N'Melton', -37.6895, 144.57, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036014905, N'Biloela', N'Biloela', -24.3936, 150.4961, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036016939, N'Cairns', N'Cairns', -16.8878, 145.7633, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036022434, N'Manjimup', N'Manjimup', -34.2333, 116.15, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036024174, N'Lismore', N'Lismore', -28.8167, 153.2931, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036030548, N'Shepparton', N'Shepparton', -36.3746, 145.3914, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036031036, N'Winton', N'Winton', -22.3996, 143.0333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036033175, N'Devonport', N'Devonport', -41.1927, 146.3311, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036034945, N'Maitland', N'Maitland', -32.721, 151.555, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036035341, N'Kimba', N'Kimba', -33.1496, 136.4334, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036040102, N'Ballina', N'Ballina', -28.8614, 153.568, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036047365, N'Albany', N'Albany', -35.0169, 117.8916, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036047905, N'Broome', N'Broome', -17.9618, 122.2308, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036051032, N'Port Macquarie', N'Port Macquarie', -31.445, 152.9187, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036053707, N'Dalby', N'Dalby', -27.1939, 151.2657, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036053723, N'Port Douglas', N'Port Douglas', -16.4846, 145.4587, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036067845, N'Central Coast', N'Central Coast', -33.42, 151.3, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036070755, N'Gladstone', N'Gladstone', -23.8533, 151.2467, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036070931, N'Cooma', N'Cooma', -36.2396, 149.12, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036073044, N'Young', N'Young', -34.3096, 148.29, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036073093, N'Stawell', N'Stawell', -37.0596, 142.76, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036074667, N'Bourke', N'Bourke', -30.1, 145.9333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036074917, N'Sydney', N'Sydney', -33.92, 151.1852, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036076542, N'Albury', N'Albury', -36.06, 146.92, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036082142, N'Queenstown', N'Queenstown', -42.0829, 145.55, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036087904, N'Kalgoorlie', N'Kalgoorlie', -30.7354, 121.46, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036102538, N'Leeton', N'Leeton', -34.5449, 146.3973, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036104272, N'Peterborough', N'Peterborough', -32.9662, 138.8333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036115980, N'Bordertown', N'Bordertown', -36.3162, 140.7666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036121853, N'Penola', N'Penola', -37.383, 140.8167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036124660, N'Emerald', N'Emerald', -23.5122, 148.1673, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036134474, N'Wilcannia', N'Wilcannia', -31.5662, 143.3833, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036134944, N'Streaky Bay', N'Streaky Bay', -32.8119, 134.2149, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036136750, N'Adelaide River', N'Adelaide River', -13.2495, 131.1, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036140404, N'Leonara', N'Leonara', -28.8815, 121.328, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036142029, N'Canberra', N'Canberra', -35.283, 149.129, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036150859, N'Proserpine', N'Proserpine', -20.4162, 148.5835, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036153217, N'Gold Coast', N'Gold Coast', -28.0815, 153.4482, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036156498, N'Richmond', N'Richmond', -20.7163, 143.1333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036170383, N'Launceston', N'Launceston', -41.4498, 147.1302, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036178956, N'Perth', N'Perth', -31.955, 115.84, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036180170, N'Yeppoon', N'Yeppoon', -23.1329, 150.7567, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036189642, N'Bicheno', N'Bicheno', -41.8784, 148.2886, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036192929, N'Brisbane', N'Brisbane', -27.455, 153.0351, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036194388, N'Morawa', N'Morawa', -29.2163, 116, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036204877, N'Cowra', N'Cowra', -33.8296, 148.68, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036205623, N'Maryborough', N'Maryborough', -25.5491, 152.7209, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036207188, N'Smithton', N'Smithton', -40.8329, 145.1167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036213564, N'Mudgee', N'Mudgee', -32.5896, 149.5801, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036216956, N'Broken Hill', N'Broken Hill', -31.95, 141.4331, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036220501, N'Swan Hill', N'Swan Hill', -35.3396, 143.54, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036221961, N'Narrogin', N'Narrogin', -32.9329, 117.1666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036228772, N'Ayr', N'Ayr', -19.5702, 147.3995, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036233388, N'Tamworth', N'Tamworth', -31.1026, 150.9171, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036235197, N'Eidsvold', N'Eidsvold', -25.3662, 151.1333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036238542, N'Ingham', N'Ingham', -18.6496, 146.1666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036245584, N'Yulara', N'Yulara', -25.2405, 130.9889, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036253543, N'Muswellbrook', N'Muswellbrook', -32.2696, 150.89, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036255184, N'Onslow', N'Onslow', -21.6576, 115.0963, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036257263, N'Norseman', N'Norseman', -32.2, 121.7666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036259324, N'Yamba', N'Yamba', -29.423, 153.3533, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036260794, N'Andamooka', N'Andamooka', -30.431, 137.1656, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036261175, N'Kingston South East', N'Kingston South East', -36.8328, 139.8501, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036266942, N'Caloundra', N'Caloundra', -26.8, 153.1333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036269345, N'Bongaree', N'Bongaree', -27.0787, 153.1509, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036272226, N'Windorah', N'Windorah', -25.4332, 142.6502, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036272805, N'Batemans Bay', N'Batemans Bay', -35.6896, 150.2073, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036273188, N'Wagga Wagga', N'Wagga Wagga', -35.1222, 147.34, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036273434, N'Caboolture', N'Caboolture', -27.083, 152.95, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036284609, N'Barcaldine', N'Barcaldine', -23.5662, 145.2834, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036291219, N'Warrnambool', N'Warrnambool', -38.38, 142.47, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036292989, N'Echuca', N'Echuca', -36.1296, 144.75, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036297213, N'Kingston', N'Kingston', -42.9911, 147.3084, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036299314, N'Esperance', N'Esperance', -33.8573, 121.8889, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036309493, N'Gawler', N'Gawler', -34.6074, 138.7264, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036320442, N'Coffs Harbour', N'Coffs Harbour', -30.3071, 153.1123, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036323110, N'Katherine', N'Katherine', -14.4666, 132.2666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036325219, N'Deniliquin', N'Deniliquin', -35.5296, 144.95, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036327720, N'Mount Magnet', N'Mount Magnet', -28.0662, 117.8167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036344209, N'Carnarvon', N'Carnarvon', -24.8998, 113.6501, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036345943, N'Murray Bridge', N'Murray Bridge', -35.1296, 139.26, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036347537, N'Goulburn', N'Goulburn', -34.7496, 149.7102, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036377333, N'Bundaberg', N'Bundaberg', -24.8791, 152.3509, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036377829, N'Moree', N'Moree', -29.4699, 149.8301, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036386100, N'Mount Isa', N'Mount Isa', -20.7239, 139.49, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036391013, N'Gympie', N'Gympie', -26.1886, 152.6709, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036392822, N'Woomera', N'Woomera', -31.1496, 136.8, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036394657, N'Burnie', N'Burnie', -41.0666, 145.9167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036395326, N'Wangaratta', N'Wangaratta', -36.36, 146.3, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036411379, N'Katanning', N'Katanning', -33.6996, 117.5501, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036412066, N'Georgetown', N'Georgetown', -18.3, 143.5333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036412726, N'Warwick', N'Warwick', -28.2292, 152.0203, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036415078, N'Wonthaggi', N'Wonthaggi', -38.6095, 145.59, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036423364, N'Theodore', N'Theodore', -24.9495, 150.0833, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036429141, N'Kalbarri', N'Kalbarri', -27.6662, 114.1667, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036432237, N'Bairnsdale', N'Bairnsdale', -37.8296, 147.61, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036438159, N'Cobram', N'Cobram', -35.9196, 145.65, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036439594, N'Portland', N'Portland', -38.34, 141.59, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036444511, N'Halls Creek', N'Halls Creek', -18.2667, 127.7667, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036445634, N'Meningie', N'Meningie', -35.6995, 139.3333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036446465, N'Bathurst', N'Bathurst', -33.4196, 149.57, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036452066, N'Goondiwindi', N'Goondiwindi', -28.5548, 150.3253, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036456869, N'Atherton', N'Atherton', -17.2703, 145.4694, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036463308, N'Kingaroy', N'Kingaroy', -26.539, 151.8406, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036464109, N'Tom Price', N'Tom Price', -22.6935, 117.7931, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036468001, N'Newcastle', N'Newcastle', -32.8453, 151.815, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036474435, N'Wyndham', N'Wyndham', -15.374, 128.3601, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036497565, N'Darwin', N'Darwin', -12.4254, 130.85, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036500020, N'Townsville', N'Townsville', -19.25, 146.77, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036500021, N'Gunnedah', N'Gunnedah', -30.987, 150.2623, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036501067, N'Weipa', N'Weipa', -12.6666, 141.8666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036502269, N'Wollongong', N'Wollongong', -34.4154, 150.89, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036507374, N'Mackay', N'Mackay', -21.1439, 149.15, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036509606, N'Port Hedland', N'Port Hedland', -20.3104, 118.606, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036512474, N'Boulia', N'Boulia', -22.8996, 139.9, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036519781, N'Sunbury', N'Sunbury', -37.5696, 144.71, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036523834, N'Forbes', N'Forbes', -33.3896, 148.02, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036529327, N'Tumby Bay', N'Tumby Bay', -34.3829, 136.0833, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036533631, N'Melbourne', N'Melbourne', -37.82, 144.975, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036536547, N'Victor Harbor', N'Victor Harbor', -35.5596, 138.6173, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036537913, N'Bendigo', N'Bendigo', -36.76, 144.28, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036538171, N'Adelaide', N'Adelaide', -34.935, 138.6, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036554717, N'Berri', N'Berri', -34.2829, 140.6, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036556231, N'Kununurra', N'Kununurra', -15.7666, 128.7333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036558150, N'Port Lincoln', N'Port Lincoln', -34.7332, 135.8666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036561011, N'Bunbury', N'Bunbury', -33.3443, 115.6502, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036563313, N'Griffith', N'Griffith', -34.29, 146.04, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036567186, N'Ballarat', N'Ballarat', -37.5596, 143.84, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036571526, N'Ivanhoe', N'Ivanhoe', -32.8996, 144.3, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036571606, N'Port Pirie', N'Port Pirie', -33.1911, 137.99, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036571941, N'Tweed Heads', N'Tweed Heads', -28.1826, 153.5466, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036575498, N'Charleville', N'Charleville', -26.4, 146.25, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036578320, N'Merredin', N'Merredin', -31.4828, 118.2667, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036587511, N'Newman', N'Newman', -23.3666, 119.7333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036591538, N'Lithgow', N'Lithgow', -33.4961, 150.1528, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036606974, N'Byron Bay', N'Byron Bay', -28.6565, 153.6129, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036608457, N'Meekatharra', N'Meekatharra', -26.6, 118.4833, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036615468, N'Grafton', N'Grafton', -29.712, 152.9377, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036622618, N'Longreach', N'Longreach', -23.4496, 144.25, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036624348, N'Mildura', N'Mildura', -34.185, 142.1514, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036624366, N'Laverton', N'Laverton', -28.627, 122.404, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036633113, N'Colac', N'Colac', -38.3395, 143.58, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036639986, N'Cranbourne', N'Cranbourne', -38.0996, 145.2834, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036651498, N'Mount Barker', N'Mount Barker', -34.6328, 117.6666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036652902, N'Inverell', N'Inverell', -29.7668, 151.1126, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036654340, N'Horsham', N'Horsham', -36.7096, 142.19, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036669084, N'Three Springs', N'Three Springs', -29.5333, 115.75, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036672657, N'Cloncurry', N'Cloncurry', -20.7, 140.5, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036673821, N'McMinns Lagoon', N'McMinns Lagoon', -12.5329, 131.05, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036674004, N'Katoomba', N'Katoomba', -33.7069, 150.32, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036674088, N'Ararat', N'Ararat', -37.2795, 142.91, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036679838, N'Hobart', N'Hobart', -42.85, 147.295, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036680924, N'Bedourie', N'Bedourie', -24.3496, 139.4666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036686561, N'Gingin', N'Gingin', -31.3496, 115.9, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036687220, N'Ulladulla', N'Ulladulla', -35.3495, 150.47, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036696232, N'Quilpie', N'Quilpie', -26.6166, 144.25, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036698836, N'Roma', N'Roma', -26.5594, 148.7907, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036699883, N'Hamilton', N'Hamilton', -37.7312, 142.0234, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036714493, N'Narrabri', N'Narrabri', -30.3319, 149.7874, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036725988, N'Ceduna', N'Ceduna', -32.0991, 133.6623, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036733088, N'Charters Towers', N'Charters Towers', -20.0809, 146.2587, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036738932, N'Hughenden', N'Hughenden', -20.85, 144.2, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036743246, N'Wallaroo', N'Wallaroo', -33.9329, 137.6333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036752479, N'Roebourne', N'Roebourne', -20.7829, 117.1333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036753478, N'Kwinana', N'Kwinana', -32.2394, 115.7702, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036754695, N'Kiama', N'Kiama', -34.7096, 150.84, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036760396, N'Orange', N'Orange', -33.28, 149.1, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036764173, N'Ouyen', N'Ouyen', -35.0662, 142.3167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036765315, N'Toowoomba', N'Toowoomba', -27.5645, 151.9555, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036768986, N'Rockhampton', N'Rockhampton', -23.3639, 150.52, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036773118, N'Mandurah', N'Mandurah', -32.5235, 115.7471, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036777587, N'Tumut', N'Tumut', -35.3096, 148.22, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036781601, N'Maryborough', N'Maryborough', -37.0496, 143.73, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036793708, N'Thargomindah', N'Thargomindah', -28, 143.8167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036807079, N'Scottsdale', N'Scottsdale', -41.1495, 147.5167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036811875, N'Geraldton', N'Geraldton', -28.7666, 114.6, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036815011, N'Camooweal', N'Camooweal', -19.9167, 138.1167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036830335, N'Birdsville', N'Birdsville', -25.8996, 139.3666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036830397, N'Alice Springs', N'Alice Springs', -23.701, 133.88, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036833938, N'Hervey Bay', N'Hervey Bay', -25.2887, 152.8409, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036842122, N'Clare', N'Clare', -33.8329, 138.6, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036846186, N'Forster-Tuncurry', N'Forster-Tuncurry', -32.1931, 152.5266, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036846465, N'Queanbeyan', N'Queanbeyan', -35.3546, 149.2113, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036851354, N'Wagin', N'Wagin', -33.2996, 117.35, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036855042, N'Dubbo', N'Dubbo', -32.26, 148.5973, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036855717, N'Taree', N'Taree', -31.8976, 152.4618, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036858004, N'Pine Creek', N'Pine Creek', -13.8162, 131.8167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036868267, N'Northam', N'Northam', -31.6566, 116.6534, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036870987, N'Geelong', N'Geelong', -38.1675, 144.3956, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036873405, N'Port Denison', N'Port Denison', -29.2828, 114.9166, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036878618, N'Ravensthorpe', N'Ravensthorpe', -33.5829, 120.0333, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036897003, N'Kempsey', N'Kempsey', -31.0874, 152.822, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036911902, N'Busselton', N'Busselton', -33.6564, 115.3487, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036914573, N'Pannawonica', N'Pannawonica', -21.6366, 116.325, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036916453, N'Moranbah', N'Moranbah', -22.0016, 148.038, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036918224, N'Scone', N'Scone', -32.0796, 150.8501, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036919223, N'Seymour', N'Seymour', -37.0342, 145.1273, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036921929, N'Cowell', N'Cowell', -33.6829, 136.9166, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036926106, N'Karumba', N'Karumba', -17.4833, 140.8334, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036926323, N'Oatlands', N'Oatlands', -42.2996, 147.3666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036930229, N'Innisfail', N'Innisfail', -17.5313, 146.0387, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036931490, N'Southern Cross', N'Southern Cross', -31.2161, 119.3167, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036932780, N'Mount Gambier', N'Mount Gambier', -37.8313, 140.765, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036933197, N'Merimbula', N'Merimbula', -36.8996, 149.9, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036934091, N'Richmond', N'Richmond', -33.5995, 150.74, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036938861, N'Traralgon', N'Traralgon', -38.1996, 146.53, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036942792, N'Kingoonya', N'Kingoonya', -30.8996, 135.3, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036945368, N'Port Augusta', N'Port Augusta', -32.49, 137.77, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036947514, N'Singleton', N'Singleton', -32.5695, 151.16, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036951388, N'Karratha', N'Karratha', -20.7304, 116.87, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036956849, N'Burketown', N'Burketown', -17.7161, 139.5666, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036960753, N'Sale', N'Sale', -38.1096, 147.06, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036961366, N'Whyalla', N'Whyalla', -33.025, 137.5614, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036975829, N'Armidale', N'Armidale', -30.5123, 151.6675, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036977270, N'Parkes', N'Parkes', -33.1296, 148.17, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036979225, N'Bowen', N'Bowen', -20.0013, 148.2087, N'Australia', N'AUS')
GO
INSERT [dbo].[Cities] ([Id], [Name], [ASCII], [Latitude], [Longitude], [Country], [Code]) VALUES (1036984536, N'Nowra', N'Nowra', -34.8828, 150.6, N'Australia', N'AUS')
GO
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[CityAttractions] ON 
GO
INSERT [dbo].[CityAttractions] ([Id], [Name], [Description], [CityId]) VALUES (5, N'Crocodile Farm', N'Chomp Chomp', 1036016939)
GO
INSERT [dbo].[CityAttractions] ([Id], [Name], [Description], [CityId]) VALUES (6, N'Fitzroy Island', N'Swim Swim', 1036016939)
GO
SET IDENTITY_INSERT [dbo].[CityAttractions] OFF
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id], [UserId], [Forename], [Surname], [PersonType], [TravelProviderId]) VALUES (6, N'3b838cf8-ec1f-41e5-a03d-07e926ceafb9', N'Charlie', N'Black', N'Customer', NULL)
GO
INSERT [dbo].[People] ([Id], [UserId], [Forename], [Surname], [PersonType], [TravelProviderId]) VALUES (7, N'a6c592d9-3986-4faf-8824-9af8261ad572', N'Edward', N'Black', N'Employee', 1)
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
SET IDENTITY_INSERT [dbo].[TravelPackageCities] ON 
GO
INSERT [dbo].[TravelPackageCities] ([Id], [TravelPackageId], [CityId], [NumberOfDays]) VALUES (6, 1, 1036016939, 2)
GO
INSERT [dbo].[TravelPackageCities] ([Id], [TravelPackageId], [CityId], [NumberOfDays]) VALUES (7, 1, 1036846186, 3)
GO
SET IDENTITY_INSERT [dbo].[TravelPackageCities] OFF
GO
SET IDENTITY_INSERT [dbo].[TravelPackageCityAttractions] ON 
GO
INSERT [dbo].[TravelPackageCityAttractions] ([Id], [TravelPackageCityId], [CityAttractionId]) VALUES (3, 6, 5)
GO
INSERT [dbo].[TravelPackageCityAttractions] ([Id], [TravelPackageCityId], [CityAttractionId]) VALUES (4, 6, 6)
GO
SET IDENTITY_INSERT [dbo].[TravelPackageCityAttractions] OFF
GO
SET IDENTITY_INSERT [dbo].[TravelPackages] ON 
GO
INSERT [dbo].[TravelPackages] ([Id], [Name], [Description], [StatusId], [RRP]) VALUES (1, N'Australia East Coast Tour', N'Great time exploring Australia''s East Coast', 1, CAST(2500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[TravelPackages] ([Id], [Name], [Description], [StatusId], [RRP]) VALUES (2, N'Western Australia Warrior', N'Battle your way through the west coast', 1, CAST(5000.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[TravelPackages] OFF
GO
SET IDENTITY_INSERT [dbo].[TravelProviders] ON 
GO
INSERT [dbo].[TravelProviders] ([Id], [Name]) VALUES (1, N'Grande Travel')
GO
SET IDENTITY_INSERT [dbo].[TravelProviders] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CityAttractions_CityId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_CityAttractions_CityId] ON [dbo].[CityAttractions]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerTravelPackages_CustomerId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerTravelPackages_CustomerId] ON [dbo].[CustomerTravelPackages]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerTravelPackages_TravelPackageId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerTravelPackages_TravelPackageId] ON [dbo].[CustomerTravelPackages]
(
	[TravelPackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerTravelPackages_VoucherId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerTravelPackages_VoucherId] ON [dbo].[CustomerTravelPackages]
(
	[VoucherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payments_CustomerTravelPackageId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Payments_CustomerTravelPackageId] ON [dbo].[Payments]
(
	[CustomerTravelPackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_People_TravelProviderId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_People_TravelProviderId] ON [dbo].[People]
(
	[TravelProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TravelPackageCities_CityId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_TravelPackageCities_CityId] ON [dbo].[TravelPackageCities]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TravelPackageCities_TravelPackageId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_TravelPackageCities_TravelPackageId] ON [dbo].[TravelPackageCities]
(
	[TravelPackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TravelPackageCityAttractions_CityAttractionId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_TravelPackageCityAttractions_CityAttractionId] ON [dbo].[TravelPackageCityAttractions]
(
	[CityAttractionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TravelPackageCityAttractions_TravelPackageCityId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_TravelPackageCityAttractions_TravelPackageCityId] ON [dbo].[TravelPackageCityAttractions]
(
	[TravelPackageCityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vouchers_CustomerId]    Script Date: 7/11/2019 4:17:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vouchers_CustomerId] ON [dbo].[Vouchers]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT (getdate()) FOR [DateTime]
GO
ALTER TABLE [dbo].[TravelPackages] ADD  DEFAULT ((1)) FOR [StatusId]
GO
ALTER TABLE [dbo].[Vouchers] ADD  DEFAULT (dateadd(month,(3),getdate())) FOR [Expires]
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
ALTER TABLE [dbo].[CityAttractions]  WITH CHECK ADD  CONSTRAINT [FK_CityAttractions_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[CityAttractions] CHECK CONSTRAINT [FK_CityAttractions_Cities_CityId]
GO
ALTER TABLE [dbo].[CustomerTravelPackages]  WITH CHECK ADD  CONSTRAINT [FK_CustomerTravelPackages_People_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[CustomerTravelPackages] CHECK CONSTRAINT [FK_CustomerTravelPackages_People_CustomerId]
GO
ALTER TABLE [dbo].[CustomerTravelPackages]  WITH CHECK ADD  CONSTRAINT [FK_CustomerTravelPackages_TravelPackages_TravelPackageId] FOREIGN KEY([TravelPackageId])
REFERENCES [dbo].[TravelPackages] ([Id])
GO
ALTER TABLE [dbo].[CustomerTravelPackages] CHECK CONSTRAINT [FK_CustomerTravelPackages_TravelPackages_TravelPackageId]
GO
ALTER TABLE [dbo].[CustomerTravelPackages]  WITH CHECK ADD  CONSTRAINT [FK_CustomerTravelPackages_Vouchers_VoucherId] FOREIGN KEY([VoucherId])
REFERENCES [dbo].[Vouchers] ([Id])
GO
ALTER TABLE [dbo].[CustomerTravelPackages] CHECK CONSTRAINT [FK_CustomerTravelPackages_Vouchers_VoucherId]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_CustomerTravelPackages_CustomerTravelPackageId] FOREIGN KEY([CustomerTravelPackageId])
REFERENCES [dbo].[CustomerTravelPackages] ([Id])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_CustomerTravelPackages_CustomerTravelPackageId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_People_TravelProviders_TravelProviderId] FOREIGN KEY([TravelProviderId])
REFERENCES [dbo].[TravelProviders] ([Id])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_People_TravelProviders_TravelProviderId]
GO
ALTER TABLE [dbo].[TravelPackageCities]  WITH CHECK ADD  CONSTRAINT [FK_TravelPackageCities_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[TravelPackageCities] CHECK CONSTRAINT [FK_TravelPackageCities_Cities_CityId]
GO
ALTER TABLE [dbo].[TravelPackageCities]  WITH CHECK ADD  CONSTRAINT [FK_TravelPackageCities_TravelPackages_TravelPackageId] FOREIGN KEY([TravelPackageId])
REFERENCES [dbo].[TravelPackages] ([Id])
GO
ALTER TABLE [dbo].[TravelPackageCities] CHECK CONSTRAINT [FK_TravelPackageCities_TravelPackages_TravelPackageId]
GO
ALTER TABLE [dbo].[TravelPackageCityAttractions]  WITH CHECK ADD  CONSTRAINT [FK_TravelPackageCityAttractions_CityAttractions_CityAttractionId] FOREIGN KEY([CityAttractionId])
REFERENCES [dbo].[CityAttractions] ([Id])
GO
ALTER TABLE [dbo].[TravelPackageCityAttractions] CHECK CONSTRAINT [FK_TravelPackageCityAttractions_CityAttractions_CityAttractionId]
GO
ALTER TABLE [dbo].[TravelPackageCityAttractions]  WITH CHECK ADD  CONSTRAINT [FK_TravelPackageCityAttractions_TravelPackageCities_TravelPackageCityId] FOREIGN KEY([TravelPackageCityId])
REFERENCES [dbo].[TravelPackageCities] ([Id])
GO
ALTER TABLE [dbo].[TravelPackageCityAttractions] CHECK CONSTRAINT [FK_TravelPackageCityAttractions_TravelPackageCities_TravelPackageCityId]
GO
ALTER TABLE [dbo].[Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_Vouchers_People_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Vouchers] CHECK CONSTRAINT [FK_Vouchers_People_CustomerId]
GO
USE [master]
GO
ALTER DATABASE [TPSDb] SET  READ_WRITE 
GO
