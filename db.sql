USE [Onshore Realty]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK__Property__typeID__1ED998B2]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK__Property__status__1DE57479]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK__Property__stateI__1CF15040]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK__Property__realto__1BFD2C07]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/21/2014 11:54:48 AM ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[StatusType]    Script Date: 2/21/2014 11:54:48 AM ******/
DROP TABLE [dbo].[StatusType]
GO
/****** Object:  Table [dbo].[State]    Script Date: 2/21/2014 11:54:48 AM ******/
DROP TABLE [dbo].[State]
GO
/****** Object:  Table [dbo].[SortType]    Script Date: 2/21/2014 11:54:48 AM ******/
DROP TABLE [dbo].[SortType]
GO
/****** Object:  Table [dbo].[Realtor]    Script Date: 2/21/2014 11:54:48 AM ******/
DROP TABLE [dbo].[Realtor]
GO
/****** Object:  Table [dbo].[PropertyType]    Script Date: 2/21/2014 11:54:48 AM ******/
DROP TABLE [dbo].[PropertyType]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 2/21/2014 11:54:48 AM ******/
DROP TABLE [dbo].[Property]
GO
USE [master]
GO
/****** Object:  Database [Onshore Realty]    Script Date: 2/21/2014 11:54:48 AM ******/
DROP DATABASE [Onshore Realty]
GO
/****** Object:  Database [Onshore Realty]    Script Date: 2/21/2014 11:54:48 AM ******/
CREATE DATABASE [Onshore Realty]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Onshore Realty', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Onshore Realty.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Onshore Realty_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Onshore Realty_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Onshore Realty] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Onshore Realty].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Onshore Realty] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Onshore Realty] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Onshore Realty] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Onshore Realty] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Onshore Realty] SET ARITHABORT OFF 
GO
ALTER DATABASE [Onshore Realty] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Onshore Realty] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Onshore Realty] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Onshore Realty] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Onshore Realty] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Onshore Realty] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Onshore Realty] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Onshore Realty] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Onshore Realty] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Onshore Realty] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Onshore Realty] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Onshore Realty] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Onshore Realty] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Onshore Realty] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Onshore Realty] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Onshore Realty] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Onshore Realty] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Onshore Realty] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Onshore Realty] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Onshore Realty] SET  MULTI_USER 
GO
ALTER DATABASE [Onshore Realty] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Onshore Realty] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Onshore Realty] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Onshore Realty] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Onshore Realty]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 2/21/2014 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Property](
	[propertyID] [int] IDENTITY(1,1) NOT NULL,
	[typeID] [int] NOT NULL,
	[statusID] [int] NOT NULL,
	[stateID] [varchar](2) NOT NULL,
	[realtorID] [int] NOT NULL,
	[statusDate] [date] NOT NULL,
	[address] [varchar](100) NOT NULL,
	[zipCode] [int] NOT NULL,
	[city] [varchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[acre] [int] NULL,
	[#beds] [int] NULL,
	[#baths] [int] NULL,
	[sqft] [int] NULL,
	[description] [text] NULL,
	[age] [int] NULL,
	[active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[propertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropertyType]    Script Date: 2/21/2014 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropertyType](
	[typeID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](25) NOT NULL,
	[active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Realtor]    Script Date: 2/21/2014 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Realtor](
	[realtorID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](25) NOT NULL,
	[active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[realtorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SortType]    Script Date: 2/21/2014 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SortType](
	[sortID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](25) NOT NULL,
	[active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sortID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State]    Script Date: 2/21/2014 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[stateID] [varchar](2) NOT NULL,
	[description] [varchar](15) NOT NULL,
	[active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StatusType]    Script Date: 2/21/2014 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StatusType](
	[statusID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](25) NOT NULL,
	[active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[statusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/21/2014 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](25) NOT NULL,
	[lastName] [varchar](25) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[acceptEmail] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD FOREIGN KEY([realtorID])
REFERENCES [dbo].[Realtor] ([realtorID])
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD FOREIGN KEY([stateID])
REFERENCES [dbo].[State] ([stateID])
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD FOREIGN KEY([statusID])
REFERENCES [dbo].[StatusType] ([statusID])
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD FOREIGN KEY([typeID])
REFERENCES [dbo].[PropertyType] ([typeID])
GO
USE [master]
GO
ALTER DATABASE [Onshore Realty] SET  READ_WRITE 
GO
