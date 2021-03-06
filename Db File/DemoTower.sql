USE [master]
GO
/****** Object:  Database [DemoTower]    Script Date: 11/12/2017 12:16:27 AM ******/
CREATE DATABASE [DemoTower]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoTower', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DemoTower.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemoTower_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DemoTower_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DemoTower] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoTower].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoTower] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoTower] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoTower] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoTower] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoTower] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoTower] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemoTower] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoTower] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoTower] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoTower] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoTower] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoTower] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoTower] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoTower] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoTower] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DemoTower] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoTower] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoTower] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoTower] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoTower] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoTower] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemoTower] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoTower] SET RECOVERY FULL 
GO
ALTER DATABASE [DemoTower] SET  MULTI_USER 
GO
ALTER DATABASE [DemoTower] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoTower] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoTower] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoTower] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DemoTower] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DemoTower', N'ON'
GO
ALTER DATABASE [DemoTower] SET QUERY_STORE = OFF
GO
USE [DemoTower]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DemoTower]
GO
/****** Object:  Table [dbo].[ADUser]    Script Date: 11/12/2017 12:16:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADUser](
	[AdminID] [bigint] IDENTITY(1,1) NOT NULL,
	[USERFULLNAME] [nvarchar](100) NULL,
	[USERID] [nvarchar](100) NULL,
	[PASSWORD] [nvarchar](50) NULL,
	[USEREMAIL] [nvarchar](75) NULL,
	[Phone] [nvarchar](50) NULL,
	[TelNo] [nvarchar](50) NULL,
	[Destination] [nvarchar](100) NULL,
	[Image] [nvarchar](max) NULL,
	[EXPIREDATE] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[CreateON] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdateON] [datetime] NULL,
	[Status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CMCustomer]    Script Date: 11/12/2017 12:16:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMCustomer](
	[CustomerID] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginID] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NULL,
	[CustomerTitle] [nvarchar](30) NULL,
	[FullName] [nvarchar](200) NULL,
	[Address] [nvarchar](250) NULL,
	[Country] [nvarchar](100) NULL,
	[CityState] [nvarchar](200) NULL,
	[Zip] [nvarchar](11) NULL,
	[Nationality] [nvarchar](150) NULL,
	[Gender] [varchar](50) NULL,
	[Email] [nvarchar](150) NULL,
	[SecondaryEmail] [nvarchar](150) NULL,
	[Mobile] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[IsTCAccepted] [bit] NULL,
	[TCAccepetedDate] [datetime] NULL,
	[TCIPAddress] [nvarchar](100) NULL,
	[PwdResetCode] [nvarchar](15) NULL,
	[ResetStatus] [bit] NULL,
	[IsVerified] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[Status] [char](1) NOT NULL,
	[IsForgetPassword] [bit] NULL,
	[ForgetPasswordTime] [datetime] NULL,
	[Address1] [varchar](250) NULL,
	[ImagePath] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CMCustomerAccount]    Script Date: 11/12/2017 12:16:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMCustomerAccount](
	[AccountID] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerID] [bigint] NULL,
	[AccountNo] [nvarchar](100) NOT NULL,
	[ProjectID] [int] NULL,
	[UnitID] [bigint] NULL,
	[TenancyStartDate] [date] NULL,
	[TenancyEndDate] [date] NULL,
	[MoveInDate] [date] NULL,
	[MoveOutDate] [date] NULL,
	[DepositDate] [date] NULL,
	[DepositAmount] [decimal](18, 2) NULL,
	[DepositRefundDate] [datetime] NULL,
	[DepositRefundAmount] [decimal](18, 2) NULL,
	[IsDormant] [bit] NULL,
	[Status] [char](1) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsApprove] [bit] NULL,
 CONSTRAINT [PK_CMCustomerAccount_AccountID] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STProjectDetails]    Script Date: 11/12/2017 12:16:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STProjectDetails](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](150) NULL,
	[Address] [nvarchar](150) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Latitude] [float] NULL,
	[longitude] [float] NULL,
	[TowerEmail] [nvarchar](100) NULL,
	[NoOfUnits] [int] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_STProjectDetails] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUnitDetail]    Script Date: 11/12/2017 12:16:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUnitDetail](
	[UnitID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NOT NULL,
	[UnitNumber] [nvarchar](100) NULL,
	[UnitSize] [varchar](50) NULL,
	[Latitude] [float] NULL,
	[longitude] [float] NULL,
	[Description] [nvarchar](200) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[Status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ADUser] ADD  DEFAULT ('A') FOR [Status]
GO
ALTER TABLE [dbo].[CMCustomer] ADD  DEFAULT ((0)) FOR [IsVerified]
GO
ALTER TABLE [dbo].[CMCustomer] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CMCustomer] ADD  DEFAULT ('A') FOR [Status]
GO
ALTER TABLE [dbo].[CMCustomerAccount] ADD  DEFAULT ((0)) FOR [IsDormant]
GO
ALTER TABLE [dbo].[STUnitDetail] ADD  DEFAULT ('A') FOR [Status]
GO
ALTER TABLE [dbo].[CMCustomerAccount]  WITH CHECK ADD  CONSTRAINT [FK_CMCustomer_CustomerID_CMCustomerAccount_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CMCustomer] ([CustomerID])
GO
ALTER TABLE [dbo].[CMCustomerAccount] CHECK CONSTRAINT [FK_CMCustomer_CustomerID_CMCustomerAccount_CustomerID]
GO
ALTER TABLE [dbo].[CMCustomerAccount]  WITH CHECK ADD  CONSTRAINT [FK_STProjectDetails_ProjectID_CMCustomerAccount_ProjectID] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[STProjectDetails] ([ProjectID])
GO
ALTER TABLE [dbo].[CMCustomerAccount] CHECK CONSTRAINT [FK_STProjectDetails_ProjectID_CMCustomerAccount_ProjectID]
GO
ALTER TABLE [dbo].[CMCustomerAccount]  WITH CHECK ADD  CONSTRAINT [FK_STUnitDetail_UnitID_CMCustomerAccount_UnitID] FOREIGN KEY([UnitID])
REFERENCES [dbo].[STUnitDetail] ([UnitID])
GO
ALTER TABLE [dbo].[CMCustomerAccount] CHECK CONSTRAINT [FK_STUnitDetail_UnitID_CMCustomerAccount_UnitID]
GO
ALTER TABLE [dbo].[STUnitDetail]  WITH CHECK ADD  CONSTRAINT [FK_STUnitDetail_STProjectDetails] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[STProjectDetails] ([ProjectID])
GO
ALTER TABLE [dbo].[STUnitDetail] CHECK CONSTRAINT [FK_STUnitDetail_STProjectDetails]
GO
USE [master]
GO
ALTER DATABASE [DemoTower] SET  READ_WRITE 
GO
