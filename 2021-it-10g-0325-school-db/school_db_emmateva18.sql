USE [master]
GO
/****** Object:  Database [school_db_emmateva18]    Script Date: 30.3.2021 г. 22:59:25 ******/
CREATE DATABASE [school_db_emmateva18]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'school_db_emmateva18', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\school_db_emmateva18.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'school_db_emmateva18_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\school_db_emmateva18_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [school_db_emmateva18].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [school_db_emmateva18] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET ARITHABORT OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [school_db_emmateva18] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [school_db_emmateva18] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET  DISABLE_BROKER 
GO
ALTER DATABASE [school_db_emmateva18] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [school_db_emmateva18] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [school_db_emmateva18] SET  MULTI_USER 
GO
ALTER DATABASE [school_db_emmateva18] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [school_db_emmateva18] SET DB_CHAINING OFF 
GO
ALTER DATABASE [school_db_emmateva18] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [school_db_emmateva18] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [school_db_emmateva18] SET DELAYED_DURABILITY = DISABLED 
GO
USE [school_db_emmateva18]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 30.3.2021 г. 22:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsTeams]    Script Date: 30.3.2021 г. 22:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsTeams](
	[StudentId] [int] NOT NULL,
	[TeamId] [int] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StudentsTeams] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 30.3.2021 г. 22:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Age], [Email]) VALUES (1, N'Ivan', N'Ivanov', 15, N'iivanov@abv.bg')
GO
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Age], [Email]) VALUES (2, N'Georgi', N'Ivanov', 15, N'ggeorgi@abv.bg')
GO
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Age], [Email]) VALUES (3, N'Petur', N'Martinov', 16, N'pmartinov@abv.bg')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (1, 12, N'BE')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (2, 10, N'FE')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (2, 11, N'QA')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (3, 10, N'Manager')
GO
INSERT [dbo].[Teams] ([Id], [Name], [Description], [Status]) VALUES (10, N'Wardens of might', N'AMASS', 1)
GO
INSERT [dbo].[Teams] ([Id], [Name], [Description], [Status]) VALUES (11, N'CAPS LOCK', N'WE USE CAPS LOCK', 0)
GO
INSERT [dbo].[Teams] ([Id], [Name], [Description], [Status]) VALUES (12, N'The Watchers', N'We see things', 1)
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
ALTER DATABASE [school_db_emmateva18] SET  READ_WRITE 
GO
