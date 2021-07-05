USE [master]
GO
/****** Object:  Database [school_db_emmateva18]    Script Date: 2.4.2021 г. 20:04:59 ******/
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
/****** Object:  Table [dbo].[GradesLog]    Script Date: 2.4.2021 г. 20:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradesLog](
	[Id] [int] NOT NULL,
	[CreatedOn_datetime] [datetime] NOT NULL,
	[CreatedOn_datetime2] [datetime2](7) NOT NULL,
	[CreatedOn_datetimeoffset] [datetimeoffset](7) NOT NULL,
	[CreatedOn_date] [date] NOT NULL,
	[CreatedOn_time] [time](7) NOT NULL,
	[CreatedOn_timestamp] [timestamp] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Grade_decimal18_0] [decimal](18, 0) NOT NULL,
	[Grade_decimal3_2] [decimal](3, 2) NOT NULL,
	[Grade_float] [float] NOT NULL,
 CONSTRAINT [PK_GradesLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2.4.2021 г. 20:04:59 ******/
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
	[Town] [nvarchar](50) NULL,
	[Class] [char](3) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsTeams]    Script Date: 2.4.2021 г. 20:04:59 ******/
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
/****** Object:  Table [dbo].[Teachers]    Script Date: 2.4.2021 г. 20:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Age] [tinyint] NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 2.4.2021 г. 20:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
	[TeacherId] [int] NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GradesLog] ([Id], [CreatedOn_datetime], [CreatedOn_datetime2], [CreatedOn_datetimeoffset], [CreatedOn_date], [CreatedOn_time], [TeacherId], [StudentId], [Grade_decimal18_0], [Grade_decimal3_2], [Grade_float]) VALUES (1, CAST(N'2021-04-02T11:06:00.000' AS DateTime), CAST(N'2021-04-02T11:06:00.0000000' AS DateTime2), CAST(N'2021-04-02T11:06:00.0000000+03:00' AS DateTimeOffset), CAST(N'2021-04-02' AS Date), CAST(N'11:10:00' AS Time), 1, 1, CAST(5 AS Decimal(18, 0)), CAST(5.56 AS Decimal(3, 2)), 5.49999)
GO
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Age], [Email], [Town], [Class]) VALUES (1, N'Ivan', N'Ivanov', 15, N'iivanov@abv.bg', NULL, NULL)
GO
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Age], [Email], [Town], [Class]) VALUES (2, N'Georgi', N'Ivanov', 15, N'ggeorgi@abv.bg', NULL, NULL)
GO
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [Age], [Email], [Town], [Class]) VALUES (3, N'Petur', N'Martinov', 16, N'pmartinov@abv.bg', NULL, NULL)
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (1, 12, N'BE')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (2, 10, N'FE')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (2, 11, N'QA')
GO
INSERT [dbo].[StudentsTeams] ([StudentId], [TeamId], [Role]) VALUES (3, 10, N'Manager')
GO
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Age]) VALUES (1, N'Ivan', N'Ivanov', 40)
GO
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Age]) VALUES (2, N'Petur', N'Milanov', 45)
GO
INSERT [dbo].[Teachers] ([Id], [FirstName], [LastName], [Age]) VALUES (3, N'Katerina', N'Spaseva', 32)
GO
INSERT [dbo].[Teams] ([Id], [Name], [Description], [Status], [TeacherId]) VALUES (10, N'Wardens of might', N'AMASS', 1, NULL)
GO
INSERT [dbo].[Teams] ([Id], [Name], [Description], [Status], [TeacherId]) VALUES (11, N'CAPS LOCK', N'WE USE CAPS LOCK', 0, NULL)
GO
INSERT [dbo].[Teams] ([Id], [Name], [Description], [Status], [TeacherId]) VALUES (12, N'The Watchers', N'We see things', 1, NULL)
GO
ALTER TABLE [dbo].[GradesLog]  WITH CHECK ADD  CONSTRAINT [FK_GradesLog_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([Id])
GO
ALTER TABLE [dbo].[GradesLog] CHECK CONSTRAINT [FK_GradesLog_Students]
GO
ALTER TABLE [dbo].[GradesLog]  WITH CHECK ADD  CONSTRAINT [FK_GradesLog_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[GradesLog] CHECK CONSTRAINT [FK_GradesLog_Teachers]
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
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_Teachers]
GO
USE [master]
GO
ALTER DATABASE [school_db_emmateva18] SET  READ_WRITE 
GO
