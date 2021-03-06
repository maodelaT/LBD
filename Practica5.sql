USE [SendaLBD]
GO
ALTER TABLE [dbo].[viaje] DROP CONSTRAINT [fk_Tori]
GO
ALTER TABLE [dbo].[viaje] DROP CONSTRAINT [fk_Tdes]
GO
ALTER TABLE [dbo].[viaje] DROP CONSTRAINT [fk_Ruta]
GO
ALTER TABLE [dbo].[viaje] DROP CONSTRAINT [fk_Horario]
GO
ALTER TABLE [dbo].[viaje] DROP CONSTRAINT [fk_Conduc]
GO
ALTER TABLE [dbo].[viaje] DROP CONSTRAINT [fk_Bus]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [fk_Vende]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [fk_Pago]
GO
ALTER TABLE [dbo].[vendedor] DROP CONSTRAINT [fk_Termi]
GO
ALTER TABLE [dbo].[vendedor] DROP CONSTRAINT [fk_Sucu]
GO
ALTER TABLE [dbo].[vendedor] DROP CONSTRAINT [fk_linea]
GO
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [fk_Viaje]
GO
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [fk_Venta]
GO
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [fk_Servicio]
GO
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [fk_Pasajero]
GO
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [fk_Asiento]
GO
ALTER TABLE [dbo].[Autobus] DROP CONSTRAINT [fk_Linea2]
GO
ALTER TABLE [dbo].[asiento] DROP CONSTRAINT [fk_Tipo]
GO
ALTER TABLE [dbo].[asiento] DROP CONSTRAINT [fk_Autobus]
GO
/****** Object:  Table [dbo].[viaje]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[viaje]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[vendedor]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[vendedor]
GO
/****** Object:  Table [dbo].[Tipodeasiento]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Tipodeasiento]
GO
/****** Object:  Table [dbo].[Terminal]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Terminal]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[sucursal]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Servicio]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Ruta]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Reserva]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Pasajero]
GO
/****** Object:  Table [dbo].[Linea]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Linea]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Horarios]
GO
/****** Object:  Table [dbo].[Formasdepago]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Formasdepago]
GO
/****** Object:  Table [dbo].[Conductores]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Conductores]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[Autobus]
GO
/****** Object:  Table [dbo].[asiento]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP TABLE [dbo].[asiento]
GO
USE [master]
GO
/****** Object:  Database [SendaLBD]    Script Date: 21/04/2019 08:13:56 p. m. ******/
DROP DATABASE [SendaLBD]
GO
/****** Object:  Database [SendaLBD]    Script Date: 21/04/2019 08:13:57 p. m. ******/
CREATE DATABASE [SendaLBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SendaLBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SendaLBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SendaLBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SendaLBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SendaLBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SendaLBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SendaLBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SendaLBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SendaLBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SendaLBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SendaLBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [SendaLBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SendaLBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SendaLBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SendaLBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SendaLBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SendaLBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SendaLBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SendaLBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SendaLBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SendaLBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SendaLBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SendaLBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SendaLBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SendaLBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SendaLBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SendaLBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SendaLBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SendaLBD] SET RECOVERY FULL 
GO
ALTER DATABASE [SendaLBD] SET  MULTI_USER 
GO
ALTER DATABASE [SendaLBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SendaLBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SendaLBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SendaLBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SendaLBD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SendaLBD', N'ON'
GO
ALTER DATABASE [SendaLBD] SET QUERY_STORE = OFF
GO
USE [SendaLBD]
GO
/****** Object:  Table [dbo].[asiento]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asiento](
	[Asiento_id] [int] NOT NULL,
	[Autobus_id] [int] NOT NULL,
	[Numero_Asiento] [int] NULL,
	[Estado_Asiento] [varchar](15) NULL,
	[Tipo_Asiento] [int] NOT NULL,
 CONSTRAINT [pk_Asiento] PRIMARY KEY CLUSTERED 
(
	[Asiento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autobus](
	[Autobus_id] [int] NOT NULL,
	[Linea_id] [int] NOT NULL,
	[Placa] [tinyint] NULL,
	[Capacidad] [tinyint] NULL,
 CONSTRAINT [pk_Autobus] PRIMARY KEY CLUSTERED 
(
	[Autobus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conductores]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conductores](
	[Conductor_id] [int] NOT NULL,
	[Condutor_Nombre] [varchar](50) NULL,
	[Licencia] [tinyint] NULL,
 CONSTRAINT [pk_Condu] PRIMARY KEY CLUSTERED 
(
	[Conductor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formasdepago]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formasdepago](
	[Pago_id] [int] NOT NULL,
	[Pago_nombre] [varchar](30) NULL,
	[Pago_descripcion] [varchar](50) NULL,
 CONSTRAINT [pk_Pago] PRIMARY KEY CLUSTERED 
(
	[Pago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horarios](
	[Horarios_id] [int] NOT NULL,
	[Hora_salida] [tinyint] NULL,
	[Hora_llegada] [tinyint] NULL,
 CONSTRAINT [pk_Hora] PRIMARY KEY CLUSTERED 
(
	[Horarios_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linea]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linea](
	[Linea_id] [int] NOT NULL,
	[Linea_Nombre] [varchar](30) NULL,
	[Telefono_ext] [tinyint] NULL,
 CONSTRAINT [pk_Lin] PRIMARY KEY CLUSTERED 
(
	[Linea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasajero]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasajero](
	[Pasajero_id] [int] NOT NULL,
	[Pasajero_Nombre] [varchar](30) NULL,
	[Apellido_Pat] [varchar](15) NULL,
	[Apellido_Mat] [varchar](15) NULL,
	[Sxo] [varchar](8) NULL,
	[Correo] [varchar](25) NULL,
	[Tipo] [varchar](10) NULL,
 CONSTRAINT [pk_Pasaj] PRIMARY KEY CLUSTERED 
(
	[Pasajero_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[Reserva_id] [int] NOT NULL,
	[Venta_id] [int] NOT NULL,
	[Pasajero_id] [int] NOT NULL,
	[Viaje_id] [int] NOT NULL,
	[Asiento_id] [int] NOT NULL,
	[Servicio_id] [int] NOT NULL,
	[Reserva_fecha_hora] [date] NULL,
	[Reserva_estado] [varchar](10) NULL,
 CONSTRAINT [pk_Reser] PRIMARY KEY CLUSTERED 
(
	[Reserva_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[Ruta_id] [int] NOT NULL,
	[Origen] [varchar](30) NULL,
	[Destino] [varchar](30) NULL,
	[Distancia] [tinyint] NULL,
	[Tiempo_Estimado] [tinyint] NULL,
	[Disponibilidad] [tinyint] NULL,
 CONSTRAINT [pk_Ruta] PRIMARY KEY CLUSTERED 
(
	[Ruta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[Servicio_id] [int] NOT NULL,
	[Servicio_Nombre] [varchar](20) NULL,
	[Servicio_Descripcion] [varchar](50) NULL,
	[Precio] [tinyint] NULL,
 CONSTRAINT [pk_Servi] PRIMARY KEY CLUSTERED 
(
	[Servicio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[Sucursal_id] [int] NOT NULL,
	[Sucursal_Nombre] [varchar](50) NULL,
	[Ubicacion] [varchar](40) NULL,
	[Telefono] [int] NULL,
	[Campo] [varchar](20) NULL,
 CONSTRAINT [pk_Sucur] PRIMARY KEY CLUSTERED 
(
	[Sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terminal]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terminal](
	[Terminal_id] [int] NOT NULL,
	[Terminal_Nombre] [varchar](30) NULL,
 CONSTRAINT [pk_Term] PRIMARY KEY CLUSTERED 
(
	[Terminal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipodeasiento]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipodeasiento](
	[Tip_Asiento_id] [int] NOT NULL,
	[Descipcion] [varchar](100) NULL,
	[Precio] [int] NULL,
 CONSTRAINT [pk_Tip] PRIMARY KEY CLUSTERED 
(
	[Tip_Asiento_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vendedor]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendedor](
	[Vendedor_id] [int] NOT NULL,
	[Vendedor_Nombre] [varchar](30) NULL,
	[Apellido_Pat] [varchar](15) NULL,
	[Apellido_Mat] [varchar](15) NULL,
	[Sucursal_id] [int] NOT NULL,
	[Linea_id] [int] NOT NULL,
	[Terminal_id] [int] NOT NULL,
 CONSTRAINT [pk_Vendedor] PRIMARY KEY CLUSTERED 
(
	[Vendedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
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
/****** Object:  Table [dbo].[viaje]    Script Date: 21/04/2019 08:13:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[viaje](
	[Viaje_id] [int] NOT NULL,
	[Bus_id] [int] NOT NULL,
	[Ruta_id] [int] NOT NULL,
	[Terminal_origen] [int] NOT NULL,
	[Terminal_destino] [int] NOT NULL,
	[Conductor_id] [int] NOT NULL,
	[Horario_id] [int] NOT NULL,
	[Viaje_estado] [varchar](10) NULL,
 CONSTRAINT [pk_Viaje] PRIMARY KEY CLUSTERED 
(
	[Viaje_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[asiento] ([Asiento_id], [Autobus_id], [Numero_Asiento], [Estado_Asiento], [Tipo_Asiento]) VALUES (101, 10, 1, N'Comprado', 100)
INSERT [dbo].[Autobus] ([Autobus_id], [Linea_id], [Placa], [Capacidad]) VALUES (10, 2, 123, 40)
INSERT [dbo].[Autobus] ([Autobus_id], [Linea_id], [Placa], [Capacidad]) VALUES (11, 3, 124, 40)
INSERT [dbo].[Autobus] ([Autobus_id], [Linea_id], [Placa], [Capacidad]) VALUES (12, 4, 125, 40)
INSERT [dbo].[Autobus] ([Autobus_id], [Linea_id], [Placa], [Capacidad]) VALUES (13, 5, 126, 40)
INSERT [dbo].[Autobus] ([Autobus_id], [Linea_id], [Placa], [Capacidad]) VALUES (14, 6, 127, 40)
INSERT [dbo].[Autobus] ([Autobus_id], [Linea_id], [Placa], [Capacidad]) VALUES (15, 7, 128, 40)
INSERT [dbo].[Autobus] ([Autobus_id], [Linea_id], [Placa], [Capacidad]) VALUES (16, 8, 129, 40)
INSERT [dbo].[Autobus] ([Autobus_id], [Linea_id], [Placa], [Capacidad]) VALUES (17, 9, 130, 40)
INSERT [dbo].[Autobus] ([Autobus_id], [Linea_id], [Placa], [Capacidad]) VALUES (18, 10, 113, 40)
INSERT [dbo].[Conductores] ([Conductor_id], [Condutor_Nombre], [Licencia]) VALUES (0, N'Arnold Z.', 3)
INSERT [dbo].[Conductores] ([Conductor_id], [Condutor_Nombre], [Licencia]) VALUES (110, N'James S.', 1)
INSERT [dbo].[Conductores] ([Conductor_id], [Condutor_Nombre], [Licencia]) VALUES (111, N'jonathan M.', 2)
INSERT [dbo].[Conductores] ([Conductor_id], [Condutor_Nombre], [Licencia]) VALUES (113, N'Jacobo G.', 4)
INSERT [dbo].[Conductores] ([Conductor_id], [Condutor_Nombre], [Licencia]) VALUES (114, N'Miguel S.', 5)
INSERT [dbo].[Conductores] ([Conductor_id], [Condutor_Nombre], [Licencia]) VALUES (115, N'Erick A.', 6)
INSERT [dbo].[Conductores] ([Conductor_id], [Condutor_Nombre], [Licencia]) VALUES (116, N'Mario L.', 7)
INSERT [dbo].[Conductores] ([Conductor_id], [Condutor_Nombre], [Licencia]) VALUES (117, N'Samantha J.', 8)
INSERT [dbo].[Conductores] ([Conductor_id], [Condutor_Nombre], [Licencia]) VALUES (118, N'Amado G.', 9)
INSERT [dbo].[Formasdepago] ([Pago_id], [Pago_nombre], [Pago_descripcion]) VALUES (1, N'Diego', N'1 boleto a terminal Monterrey')
INSERT [dbo].[Formasdepago] ([Pago_id], [Pago_nombre], [Pago_descripcion]) VALUES (2, N'Martha', N'1 boleto a terminal Yucatan')
INSERT [dbo].[Formasdepago] ([Pago_id], [Pago_nombre], [Pago_descripcion]) VALUES (3, N'Maximiliano', N'1 boleto a terminal Sonora')
INSERT [dbo].[Formasdepago] ([Pago_id], [Pago_nombre], [Pago_descripcion]) VALUES (4, N'Francisco', N'1 boleto a terminal Chihuahua')
INSERT [dbo].[Formasdepago] ([Pago_id], [Pago_nombre], [Pago_descripcion]) VALUES (5, N'Carlos', N'1 boleto a terminal Nayarit')
INSERT [dbo].[Formasdepago] ([Pago_id], [Pago_nombre], [Pago_descripcion]) VALUES (6, N'Sofia', N'1 boleto a terminal Veracruz')
INSERT [dbo].[Linea] ([Linea_id], [Linea_Nombre], [Telefono_ext]) VALUES (2, N'pacifico', 82)
INSERT [dbo].[Linea] ([Linea_id], [Linea_Nombre], [Telefono_ext]) VALUES (3, N'elite', 84)
INSERT [dbo].[Linea] ([Linea_id], [Linea_Nombre], [Telefono_ext]) VALUES (4, N'Futura', 85)
INSERT [dbo].[Linea] ([Linea_id], [Linea_Nombre], [Telefono_ext]) VALUES (5, N'Conexion', 86)
INSERT [dbo].[Linea] ([Linea_id], [Linea_Nombre], [Telefono_ext]) VALUES (6, N'elite select', 87)
INSERT [dbo].[Linea] ([Linea_id], [Linea_Nombre], [Telefono_ext]) VALUES (7, N'Futuraselect', 88)
INSERT [dbo].[Linea] ([Linea_id], [Linea_Nombre], [Telefono_ext]) VALUES (8, N'Elite select', 89)
INSERT [dbo].[Linea] ([Linea_id], [Linea_Nombre], [Telefono_ext]) VALUES (9, N'Pacifico select', 90)
INSERT [dbo].[Linea] ([Linea_id], [Linea_Nombre], [Telefono_ext]) VALUES (10, N'Conexion select', 91)
INSERT [dbo].[Pasajero] ([Pasajero_id], [Pasajero_Nombre], [Apellido_Pat], [Apellido_Mat], [Sxo], [Correo], [Tipo]) VALUES (10, N'Diego', N'Lopez', N'Lucio', N'H', N'Diego@gmail.com', N'Normal')
INSERT [dbo].[Pasajero] ([Pasajero_id], [Pasajero_Nombre], [Apellido_Pat], [Apellido_Mat], [Sxo], [Correo], [Tipo]) VALUES (11, N'Jesus', N'Maximiliano', N'de la Garza', N'H', N'Max@gmail.com', N'Normal')
INSERT [dbo].[Pasajero] ([Pasajero_id], [Pasajero_Nombre], [Apellido_Pat], [Apellido_Mat], [Sxo], [Correo], [Tipo]) VALUES (12, N'Rossana', N'Leon', N'Grappin', N'M', N'Rossana@gmail.com', N'Elite')
INSERT [dbo].[Pasajero] ([Pasajero_id], [Pasajero_Nombre], [Apellido_Pat], [Apellido_Mat], [Sxo], [Correo], [Tipo]) VALUES (13, N'Carlos', N'de jesus', N'Lucio', N'H', N'Carlos@gmail.com', N'Normal')
INSERT [dbo].[Pasajero] ([Pasajero_id], [Pasajero_Nombre], [Apellido_Pat], [Apellido_Mat], [Sxo], [Correo], [Tipo]) VALUES (14, N'Francisco', N'Lucio', N'Lopez', N'H', N'Fran@gmail.com', N'VIP')
INSERT [dbo].[Pasajero] ([Pasajero_id], [Pasajero_Nombre], [Apellido_Pat], [Apellido_Mat], [Sxo], [Correo], [Tipo]) VALUES (15, N'Martha', N'montemayor', N'de la cruz', N'M', N'Martha@gmail.com', N'Normal')
INSERT [dbo].[Servicio] ([Servicio_id], [Servicio_Nombre], [Servicio_Descripcion], [Precio]) VALUES (10001, N'Cobro', N'Cobro por servicio', 30)
INSERT [dbo].[Servicio] ([Servicio_id], [Servicio_Nombre], [Servicio_Descripcion], [Precio]) VALUES (10002, N'Cobro', N'Cobro por servicio', 30)
INSERT [dbo].[Servicio] ([Servicio_id], [Servicio_Nombre], [Servicio_Descripcion], [Precio]) VALUES (10003, N'Cobro', N'Cobro por servicio', 30)
INSERT [dbo].[Servicio] ([Servicio_id], [Servicio_Nombre], [Servicio_Descripcion], [Precio]) VALUES (10004, N'Cobro', N'Cobro por servicio Elite', 50)
INSERT [dbo].[Servicio] ([Servicio_id], [Servicio_Nombre], [Servicio_Descripcion], [Precio]) VALUES (10005, N'Cobro', N'Cobro por servicio', 30)
INSERT [dbo].[Servicio] ([Servicio_id], [Servicio_Nombre], [Servicio_Descripcion], [Precio]) VALUES (10006, N'Cobro', N'Cobro por servicio', 30)
INSERT [dbo].[sucursal] ([Sucursal_id], [Sucursal_Nombre], [Ubicacion], [Telefono], [Campo]) VALUES (1, N'Estacion centro', N'Monterrey', 41, N'Campo')
INSERT [dbo].[sucursal] ([Sucursal_id], [Sucursal_Nombre], [Ubicacion], [Telefono], [Campo]) VALUES (2, N'Estacion del norte', N'Chihuahua', 42, N'campo')
INSERT [dbo].[sucursal] ([Sucursal_id], [Sucursal_Nombre], [Ubicacion], [Telefono], [Campo]) VALUES (3, N'Estacion sonora', N'Sonora', 43, N'campo')
INSERT [dbo].[sucursal] ([Sucursal_id], [Sucursal_Nombre], [Ubicacion], [Telefono], [Campo]) VALUES (4, N'Estacion Gran central', N'Ciudad de Mexico', 44, N'campo')
INSERT [dbo].[sucursal] ([Sucursal_id], [Sucursal_Nombre], [Ubicacion], [Telefono], [Campo]) VALUES (5, N'Estacion del Puerto', N'Veracruz', 45, N'campo')
INSERT [dbo].[sucursal] ([Sucursal_id], [Sucursal_Nombre], [Ubicacion], [Telefono], [Campo]) VALUES (6, N'Estacion Este', N'Yucatan', 46, N'campo')
INSERT [dbo].[sucursal] ([Sucursal_id], [Sucursal_Nombre], [Ubicacion], [Telefono], [Campo]) VALUES (7, N'Estacion sur', N'Guerrero', 47, N'campo')
INSERT [dbo].[sucursal] ([Sucursal_id], [Sucursal_Nombre], [Ubicacion], [Telefono], [Campo]) VALUES (8, N'Estacion Oeste', N'Nayarit', 48, N'campo')
INSERT [dbo].[Terminal] ([Terminal_id], [Terminal_Nombre]) VALUES (1, N'Terminal de Monterrey ')
INSERT [dbo].[Terminal] ([Terminal_id], [Terminal_Nombre]) VALUES (2, N'Terminal de Chihuaha')
INSERT [dbo].[Terminal] ([Terminal_id], [Terminal_Nombre]) VALUES (3, N'Terminal de Sonora')
INSERT [dbo].[Terminal] ([Terminal_id], [Terminal_Nombre]) VALUES (4, N'Terminal de Mexico')
INSERT [dbo].[Terminal] ([Terminal_id], [Terminal_Nombre]) VALUES (5, N'Terminal de Veracruz')
INSERT [dbo].[Terminal] ([Terminal_id], [Terminal_Nombre]) VALUES (6, N'Terminal de Yucatan')
INSERT [dbo].[Terminal] ([Terminal_id], [Terminal_Nombre]) VALUES (7, N'Terminal de Guerrero')
INSERT [dbo].[Terminal] ([Terminal_id], [Terminal_Nombre]) VALUES (8, N'Terminal de Nayarit')
INSERT [dbo].[Tipodeasiento] ([Tip_Asiento_id], [Descipcion], [Precio]) VALUES (100, N'Asiento comun', 300)
INSERT [dbo].[Tipodeasiento] ([Tip_Asiento_id], [Descipcion], [Precio]) VALUES (200, N'Asiento Select', 500)
INSERT [dbo].[Tipodeasiento] ([Tip_Asiento_id], [Descipcion], [Precio]) VALUES (300, N'Asiento VIP', 800)
INSERT [dbo].[vendedor] ([Vendedor_id], [Vendedor_Nombre], [Apellido_Pat], [Apellido_Mat], [Sucursal_id], [Linea_id], [Terminal_id]) VALUES (1, N'Luis', N'Adrian', N'Delarosa', 1, 2, 1)
INSERT [dbo].[vendedor] ([Vendedor_id], [Vendedor_Nombre], [Apellido_Pat], [Apellido_Mat], [Sucursal_id], [Linea_id], [Terminal_id]) VALUES (2, N'Edgar', N'oviedo', N'...', 2, 3, 2)
INSERT [dbo].[vendedor] ([Vendedor_id], [Vendedor_Nombre], [Apellido_Pat], [Apellido_Mat], [Sucursal_id], [Linea_id], [Terminal_id]) VALUES (3, N'Juan', N'Jacobo', N'Martinez', 3, 4, 3)
INSERT [dbo].[vendedor] ([Vendedor_id], [Vendedor_Nombre], [Apellido_Pat], [Apellido_Mat], [Sucursal_id], [Linea_id], [Terminal_id]) VALUES (4, N'Luis', N'Gonzales', N'Esquivel', 4, 5, 4)
INSERT [dbo].[vendedor] ([Vendedor_id], [Vendedor_Nombre], [Apellido_Pat], [Apellido_Mat], [Sucursal_id], [Linea_id], [Terminal_id]) VALUES (5, N'Diego', N'Hernandez', N'Adame', 5, 6, 5)
INSERT [dbo].[vendedor] ([Vendedor_id], [Vendedor_Nombre], [Apellido_Pat], [Apellido_Mat], [Sucursal_id], [Linea_id], [Terminal_id]) VALUES (6, N'Jean', N'lugo', N'de la Rosa', 6, 7, 6)
INSERT [dbo].[vendedor] ([Vendedor_id], [Vendedor_Nombre], [Apellido_Pat], [Apellido_Mat], [Sucursal_id], [Linea_id], [Terminal_id]) VALUES (7, N'Jean carlo', N'Montemayor', N'...', 7, 8, 7)
INSERT [dbo].[vendedor] ([Vendedor_id], [Vendedor_Nombre], [Apellido_Pat], [Apellido_Mat], [Sucursal_id], [Linea_id], [Terminal_id]) VALUES (8, N'Jesus', N'de la Garza', N'Salazar', 8, 9, 8)
INSERT [dbo].[Venta] ([Venta_id], [Vendedor_id], [Reserva_id], [Pago_id], [Total]) VALUES (1, 1, 1, 1, 330)
INSERT [dbo].[Venta] ([Venta_id], [Vendedor_id], [Reserva_id], [Pago_id], [Total]) VALUES (2, 2, 2, 2, 330)
INSERT [dbo].[Venta] ([Venta_id], [Vendedor_id], [Reserva_id], [Pago_id], [Total]) VALUES (3, 3, 3, 3, 330)
INSERT [dbo].[Venta] ([Venta_id], [Vendedor_id], [Reserva_id], [Pago_id], [Total]) VALUES (4, 4, 4, 4, 550)
INSERT [dbo].[Venta] ([Venta_id], [Vendedor_id], [Reserva_id], [Pago_id], [Total]) VALUES (5, 5, 5, 5, 330)
INSERT [dbo].[Venta] ([Venta_id], [Vendedor_id], [Reserva_id], [Pago_id], [Total]) VALUES (6, 6, 6, 6, 330)
ALTER TABLE [dbo].[asiento]  WITH CHECK ADD  CONSTRAINT [fk_Autobus] FOREIGN KEY([Autobus_id])
REFERENCES [dbo].[Autobus] ([Autobus_id])
GO
ALTER TABLE [dbo].[asiento] CHECK CONSTRAINT [fk_Autobus]
GO
ALTER TABLE [dbo].[asiento]  WITH CHECK ADD  CONSTRAINT [fk_Tipo] FOREIGN KEY([Tipo_Asiento])
REFERENCES [dbo].[Tipodeasiento] ([Tip_Asiento_id])
GO
ALTER TABLE [dbo].[asiento] CHECK CONSTRAINT [fk_Tipo]
GO
ALTER TABLE [dbo].[Autobus]  WITH CHECK ADD  CONSTRAINT [fk_Linea2] FOREIGN KEY([Linea_id])
REFERENCES [dbo].[Linea] ([Linea_id])
GO
ALTER TABLE [dbo].[Autobus] CHECK CONSTRAINT [fk_Linea2]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [fk_Asiento] FOREIGN KEY([Asiento_id])
REFERENCES [dbo].[asiento] ([Asiento_id])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [fk_Asiento]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [fk_Pasajero] FOREIGN KEY([Pasajero_id])
REFERENCES [dbo].[Pasajero] ([Pasajero_id])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [fk_Pasajero]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [fk_Servicio] FOREIGN KEY([Servicio_id])
REFERENCES [dbo].[Servicio] ([Servicio_id])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [fk_Servicio]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [fk_Venta] FOREIGN KEY([Venta_id])
REFERENCES [dbo].[Venta] ([Venta_id])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [fk_Venta]
GO
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [fk_Viaje] FOREIGN KEY([Viaje_id])
REFERENCES [dbo].[viaje] ([Viaje_id])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [fk_Viaje]
GO
ALTER TABLE [dbo].[vendedor]  WITH CHECK ADD  CONSTRAINT [fk_linea] FOREIGN KEY([Linea_id])
REFERENCES [dbo].[Linea] ([Linea_id])
GO
ALTER TABLE [dbo].[vendedor] CHECK CONSTRAINT [fk_linea]
GO
ALTER TABLE [dbo].[vendedor]  WITH CHECK ADD  CONSTRAINT [fk_Sucu] FOREIGN KEY([Sucursal_id])
REFERENCES [dbo].[sucursal] ([Sucursal_id])
GO
ALTER TABLE [dbo].[vendedor] CHECK CONSTRAINT [fk_Sucu]
GO
ALTER TABLE [dbo].[vendedor]  WITH CHECK ADD  CONSTRAINT [fk_Termi] FOREIGN KEY([Terminal_id])
REFERENCES [dbo].[Terminal] ([Terminal_id])
GO
ALTER TABLE [dbo].[vendedor] CHECK CONSTRAINT [fk_Termi]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [fk_Pago] FOREIGN KEY([Pago_id])
REFERENCES [dbo].[Formasdepago] ([Pago_id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [fk_Pago]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [fk_Vende] FOREIGN KEY([Vendedor_id])
REFERENCES [dbo].[vendedor] ([Vendedor_id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [fk_Vende]
GO
ALTER TABLE [dbo].[viaje]  WITH CHECK ADD  CONSTRAINT [fk_Bus] FOREIGN KEY([Bus_id])
REFERENCES [dbo].[Autobus] ([Autobus_id])
GO
ALTER TABLE [dbo].[viaje] CHECK CONSTRAINT [fk_Bus]
GO
ALTER TABLE [dbo].[viaje]  WITH CHECK ADD  CONSTRAINT [fk_Conduc] FOREIGN KEY([Conductor_id])
REFERENCES [dbo].[Conductores] ([Conductor_id])
GO
ALTER TABLE [dbo].[viaje] CHECK CONSTRAINT [fk_Conduc]
GO
ALTER TABLE [dbo].[viaje]  WITH CHECK ADD  CONSTRAINT [fk_Horario] FOREIGN KEY([Horario_id])
REFERENCES [dbo].[Horarios] ([Horarios_id])
GO
ALTER TABLE [dbo].[viaje] CHECK CONSTRAINT [fk_Horario]
GO
ALTER TABLE [dbo].[viaje]  WITH CHECK ADD  CONSTRAINT [fk_Ruta] FOREIGN KEY([Ruta_id])
REFERENCES [dbo].[Ruta] ([Ruta_id])
GO
ALTER TABLE [dbo].[viaje] CHECK CONSTRAINT [fk_Ruta]
GO
ALTER TABLE [dbo].[viaje]  WITH CHECK ADD  CONSTRAINT [fk_Tdes] FOREIGN KEY([Terminal_destino])
REFERENCES [dbo].[Terminal] ([Terminal_id])
GO
ALTER TABLE [dbo].[viaje] CHECK CONSTRAINT [fk_Tdes]
GO
ALTER TABLE [dbo].[viaje]  WITH CHECK ADD  CONSTRAINT [fk_Tori] FOREIGN KEY([Terminal_origen])
REFERENCES [dbo].[Terminal] ([Terminal_id])
GO
ALTER TABLE [dbo].[viaje] CHECK CONSTRAINT [fk_Tori]
GO
USE [master]
GO
ALTER DATABASE [SendaLBD] SET  READ_WRITE 
GO
