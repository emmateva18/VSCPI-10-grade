USE [master]
GO
/****** Object:  Database [school-db-pkgeorgiev]    Script Date: 4/2/2021 9:56:17 AM ******/
CREATE DATABASE [school-db-pkgeorgiev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'school-db-pkgeorgiev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\school-db-pkgeorgiev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'school-db-pkgeorgiev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\school-db-pkgeorgiev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [school-db-pkgeorgiev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [school-db-pkgeorgiev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET ARITHABORT OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET  MULTI_USER 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [school-db-pkgeorgiev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [school-db-pkgeorgiev] SET DELAYED_DURABILITY = DISABLED 
GO
USE [school-db-pkgeorgiev]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 4/2/2021 9:56:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[FastName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Town] [nvarchar](50) NOT NULL,
	[Class] [char](3) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsTeams]    Script Date: 4/2/2021 9:56:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsTeams](
	[StudentId] [int] NOT NULL,
	[TeamId] [int] NOT NULL,
	[Role] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_StudentsTeams] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 4/2/2021 9:56:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[TeacherId] [int] NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Students] ([Id], [FirstName], [FastName], [Age], [Town], [Class]) VALUES (1, N'Kaloyan', N'Dinev', 16, N'Burgas', N'10G')
GO
INSERT [dbo].[Students] ([Id], [FirstName], [FastName], [Age], [Town], [Class]) VALUES (2, N'Jaklin', N'Yordanova', 17, N'Sofia', N'10A')
GO
INSERT [dbo].[Students] ([Id], [FirstName], [FastName], [Age], [Town], [Class]) VALUES (3, N'Reneta', N'Topalska', 17, N'Burgas', N'10V')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (1, 11, N'DEV')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (2, 12, N'FE')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (3, 11, N'FE')
GO
INSERT [dbo].[Teams] ([Id], [Name], [Description], [TeacherId], [Status]) VALUES (10, N'Team1', NULL, NULL, N'InUse')
GO
INSERT [dbo].[Teams] ([Id], [Name], [Description], [TeacherId], [Status]) VALUES (11, N'Team2', NULL, NULL, N'InUse')
GO
INSERT [dbo].[Teams] ([Id], [Name], [Description], [TeacherId], [Status]) VALUES (12, N'Team3', NULL, NULL, N'Archived')
GO
ALTER TABLE [dbo].[StudentsTeams]  WITH CHECK ADD  CONSTRAINT [FK_StudentsTeams_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[StudentsTeams] CHECK CONSTRAINT [FK_StudentsTeams_Students]
GO
ALTER TABLE [dbo].[StudentsTeams]  WITH CHECK ADD  CONSTRAINT [FK_StudentsTeams_Teams] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([Id])
GO
ALTER TABLE [dbo].[StudentsTeams] CHECK CONSTRAINT [FK_StudentsTeams_Teams]
GO
USE [master]
GO
ALTER DATABASE [school-db-pkgeorgiev] SET  READ_WRITE 
GO
