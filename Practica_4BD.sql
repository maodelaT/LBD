USE [Senda]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 16/03/2019 01:20:40 a. m. ******/
DROP TABLE [dbo].[venta]
GO
/****** Object:  Table [dbo].[vendedor]    Script Date: 16/03/2019 01:20:40 a. m. ******/
DROP TABLE [dbo].[vendedor]
GO
/****** Object:  Table [dbo].[terminal]    Script Date: 16/03/2019 01:20:40 a. m. ******/
DROP TABLE [dbo].[terminal]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 16/03/2019 01:20:40 a. m. ******/
DROP TABLE [dbo].[sucursal]
GO
/****** Object:  Table [dbo].[Linea]    Script Date: 16/03/2019 01:20:40 a. m. ******/
DROP TABLE [dbo].[Linea]
GO
USE [master]
GO
/****** Object:  Database [Senda]    Script Date: 16/03/2019 01:20:40 a. m. ******/
DROP DATABASE [Senda]
GO
/****** Object:  Database [Senda]    Script Date: 16/03/2019 01:20:40 a. m. ******/
CREATE DATABASE [Senda]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Senda', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Senda.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Senda_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Senda_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Senda] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Senda].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Senda] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Senda] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Senda] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Senda] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Senda] SET ARITHABORT OFF 
GO
ALTER DATABASE [Senda] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Senda] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Senda] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Senda] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Senda] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Senda] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Senda] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Senda] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Senda] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Senda] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Senda] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Senda] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Senda] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Senda] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Senda] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Senda] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Senda] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Senda] SET RECOVERY FULL 
GO
ALTER DATABASE [Senda] SET  MULTI_USER 
GO
ALTER DATABASE [Senda] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Senda] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Senda] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Senda] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Senda] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Senda', N'ON'
GO
ALTER DATABASE [Senda] SET QUERY_STORE = OFF
GO
USE [Senda]
GO
/****** Object:  Table [dbo].[Linea]    Script Date: 16/03/2019 01:20:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linea](
	[Linea_id] [int] NOT NULL,
	[Linea_Nombre] [varchar](30) NULL,
	[Telefono] [tinyint] NULL,
 CONSTRAINT [pk_Lin] PRIMARY KEY CLUSTERED 
(
	[Linea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 16/03/2019 01:20:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[Sucursal_id] [int] NOT NULL,
	[Sucursal_Nombre] [varchar](50) NULL,
	[Ubicacion] [varchar](40) NULL,
	[Telefono] [tinyint] NULL,
	[Campo] [varchar](20) NULL,
 CONSTRAINT [pk_Sucur] PRIMARY KEY CLUSTERED 
(
	[Sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[terminal]    Script Date: 16/03/2019 01:20:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[terminal](
	[Terminal_id] [int] NOT NULL,
	[Terminal_Nombre] [varchar](30) NULL,
 CONSTRAINT [pk_Term] PRIMARY KEY CLUSTERED 
(
	[Terminal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vendedor]    Script Date: 16/03/2019 01:20:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendedor](
	[Vendedor_id] [int] NOT NULL,
	[Vendedor_Nombre] [varchar](30) NULL,
	[Apellido_Pat] [varchar](15) NULL,
	[Apellido_Mat] [varchar](15) NULL,
	[Sucursal_id] [int] NULL,
	[Linea_id] [int] NULL,
	[Terminal_id] [int] NULL,
 CONSTRAINT [pk_Vendedor] PRIMARY KEY CLUSTERED 
(
	[Vendedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 16/03/2019 01:20:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[Venta_id] [int] NOT NULL,
	[Vendedor_id] [int] NOT NULL,
	[Reserva_id] [int] NOT NULL,
	[Pago_id] [int] NOT NULL,
	[Total] [int] NULL,
 CONSTRAINT [pk_Venta] PRIMARY KEY CLUSTERED 
(
	[Venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Senda] SET  READ_WRITE 
GO
