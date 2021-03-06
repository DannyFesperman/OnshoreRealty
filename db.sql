USE [Onshore Realty]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK__Property__typeID__286302EC]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK__Property__status__276EDEB3]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK__Property__stateI__267ABA7A]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK__Property__realto__25869641]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[StatusType]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP TABLE [dbo].[StatusType]
GO
/****** Object:  Table [dbo].[State]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP TABLE [dbo].[State]
GO
/****** Object:  Table [dbo].[SortType]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP TABLE [dbo].[SortType]
GO
/****** Object:  Table [dbo].[Realtor]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP TABLE [dbo].[Realtor]
GO
/****** Object:  Table [dbo].[PropertyType]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP TABLE [dbo].[PropertyType]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP TABLE [dbo].[Property]
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[RemoveUser]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[RemoveUser]
GO
/****** Object:  StoredProcedure [dbo].[GetUserID]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[GetUserID]
GO
/****** Object:  StoredProcedure [dbo].[GetUserEmail]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[GetUserEmail]
GO
/****** Object:  StoredProcedure [dbo].[GetType]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[GetType]
GO
/****** Object:  StoredProcedure [dbo].[GetStatus]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[GetStatus]
GO
/****** Object:  StoredProcedure [dbo].[GetStates]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[GetStates]
GO
/****** Object:  StoredProcedure [dbo].[GetSort]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[GetSort]
GO
/****** Object:  StoredProcedure [dbo].[GetRealtor]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[GetRealtor]
GO
/****** Object:  StoredProcedure [dbo].[GetAllUsers]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[GetAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[CreateRealtor]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP PROCEDURE [dbo].[CreateRealtor]
GO
USE [master]
GO
/****** Object:  Database [Onshore Realty]    Script Date: 2/25/2014 2:17:55 PM ******/
DROP DATABASE [Onshore Realty]
GO
/****** Object:  Database [Onshore Realty]    Script Date: 2/25/2014 2:17:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CreateRealtor]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateRealtor] 
	-- Add the parameters for the stored procedure here
	@name varchar(25),
	@active bit
AS
BEGIN
insert into Realtor(name, active)
values (@name, @active)
END


GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateUser] 
	-- Add the parameters for the stored procedure here
	@firstName varchar(25),
	@lastName varchar(25),
	@password varchar(20),
	@email varchar(100),
	@acceptEmail bit
AS
BEGIN
insert into [User](firstName, lastName, [password], email, acceptEmail)
values(@firstName, @lastName, @password, @email, @acceptEmail)
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllUsers]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetAllUsers]

AS
BEGIN
SELECT * FROM [User]
WHERE acceptEmail=1
END















GO
/****** Object:  StoredProcedure [dbo].[GetRealtor]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[GetRealtor]
	
AS
BEGIN
select * from [Realtor]
where active = 1
END

GO
/****** Object:  StoredProcedure [dbo].[GetSort]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[GetSort]
	
AS
BEGIN
select * from [SortType]
where active = 1
END
GO
/****** Object:  StoredProcedure [dbo].[GetStates]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetStates]
	
AS
BEGIN
select * from [State]
where active = 1
END


GO
/****** Object:  StoredProcedure [dbo].[GetStatus]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[GetStatus]
	
AS
BEGIN
select * from [StatusType]
where active = 1
END
GO
/****** Object:  StoredProcedure [dbo].[GetType]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[GetType]
	
AS
BEGIN
select * from [PropertyType]
where active = 1
END

GO
/****** Object:  StoredProcedure [dbo].[GetUserEmail]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserEmail]
	-- Add the parameters for the stored procedure here
	@email varchar(100)
AS
BEGIN
	select * from [User]
	where acceptEmail = 1 and email = @email
END


GO
/****** Object:  StoredProcedure [dbo].[GetUserID]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserID]
	-- Add the parameters for the stored procedure here
	@email varchar(100)
AS
BEGIN
	select * from [User]
	where acceptEmail = 1 and email = @email
END


GO
/****** Object:  StoredProcedure [dbo].[RemoveUser]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[RemoveUser]
	-- Add the parameters for the stored procedure here
	@userID int
AS
BEGIN
	update [User]
	set acceptEmail = 0
	where userID = @userID
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 2/25/2014 2:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUser] 
	-- Add the parameters for the stored procedure here
	@email varchar(100),
	@password varchar(20),
	@userID int
AS
BEGIN
	update [User]
	set email = @email, [password] = @password
	where acceptEmail = 1 and userID = @userID
END


GO
/****** Object:  Table [dbo].[Property]    Script Date: 2/25/2014 2:17:55 PM ******/
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
/****** Object:  Table [dbo].[PropertyType]    Script Date: 2/25/2014 2:17:55 PM ******/
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
/****** Object:  Table [dbo].[Realtor]    Script Date: 2/25/2014 2:17:55 PM ******/
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
/****** Object:  Table [dbo].[SortType]    Script Date: 2/25/2014 2:17:55 PM ******/
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
/****** Object:  Table [dbo].[State]    Script Date: 2/25/2014 2:17:55 PM ******/
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
/****** Object:  Table [dbo].[StatusType]    Script Date: 2/25/2014 2:17:55 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 2/25/2014 2:17:55 PM ******/
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
