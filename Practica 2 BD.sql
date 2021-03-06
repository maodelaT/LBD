USE [UniBD]
GO
ALTER TABLE [dbo].[materia_profesor] DROP CONSTRAINT [fk_pr]
GO
ALTER TABLE [dbo].[materia_profesor] DROP CONSTRAINT [fk_ma1]
GO
ALTER TABLE [dbo].[materia_alumno] DROP CONSTRAINT [fk_mat]
GO
ALTER TABLE [dbo].[materia_alumno] DROP CONSTRAINT [fk_ma]
GO
/****** Object:  Table [dbo].[sueldos]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[sueldos]
GO
/****** Object:  Table [dbo].[profesor]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[profesor]
GO
/****** Object:  Table [dbo].[materia_profesor]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[materia_profesor]
GO
/****** Object:  Table [dbo].[materia_alumno]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[materia_alumno]
GO
/****** Object:  Table [dbo].[materia]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[materia]
GO
/****** Object:  Table [dbo].[horarios]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[horarios]
GO
/****** Object:  Table [dbo].[facultades]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[facultades]
GO
/****** Object:  Table [dbo].[examenes]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[examenes]
GO
/****** Object:  Table [dbo].[carrera]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[carrera]
GO
/****** Object:  Table [dbo].[alumno]    Script Date: 02/03/2019 11:29:11 a. m. ******/
DROP TABLE [dbo].[alumno]
GO
/****** Object:  Table [dbo].[alumno]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alumno](
	[matricula_id] [int] NOT NULL,
	[nombre_a] [varchar](30) NULL,
	[apPaterno_a] [varchar](20) NULL,
	[apMaterno_a] [varchar](20) NULL,
	[fechaNa_a] [date] NULL,
	[carrera_id] [tinyint] NULL,
 CONSTRAINT [pk_alu] PRIMARY KEY CLUSTERED 
(
	[matricula_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carrera]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrera](
	[carrera_id] [int] NOT NULL,
	[nombre_a] [varchar](60) NULL,
	[abrv_c] [varchar](7) NULL,
	[duracion] [tinyint] NULL,
 CONSTRAINT [pk_car] PRIMARY KEY CLUSTERED 
(
	[carrera_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[examenes]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[examenes](
	[exmaen_1] [date] NOT NULL,
	[examen_2] [date] NULL,
	[examen_final] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facultades]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facultades](
	[facultad_id] [int] NOT NULL,
	[facultad_nombre] [int] NOT NULL,
	[carreras_facul] [varchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[horarios]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horarios](
	[horario_id] [int] NOT NULL,
	[horario_clase] [date] NOT NULL,
	[alumnos_max] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia](
	[materia_id] [int] NOT NULL,
	[nombre_m] [varchar](50) NOT NULL,
	[creditos_m] [tinyint] NOT NULL,
	[semestre_m] [tinyint] NOT NULL,
 CONSTRAINT [pk_mat] PRIMARY KEY CLUSTERED 
(
	[materia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia_alumno]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia_alumno](
	[materia_id] [int] NOT NULL,
	[matricula_id] [int] NOT NULL,
	[calificacion] [tinyint] NULL,
	[fechacurso] [date] NULL,
	[identificador] [int] NOT NULL,
 CONSTRAINT [pk_ma] PRIMARY KEY CLUSTERED 
(
	[identificador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia_profesor]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia_profesor](
	[materia_id] [int] NOT NULL,
	[profesor_id] [smallint] NOT NULL,
	[identificador] [int] NOT NULL,
 CONSTRAINT [pk_ma1] PRIMARY KEY CLUSTERED 
(
	[identificador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profesor]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profesor](
	[profesor_id] [smallint] NOT NULL,
	[nombre_p] [varchar](20) NULL,
	[apellidos] [varchar](60) NULL,
	[tel_p] [varchar](15) NULL,
	[tutor] [bit] NULL,
	[estatus] [bit] NULL,
 CONSTRAINT [pk_pro] PRIMARY KEY CLUSTERED 
(
	[profesor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sueldos]    Script Date: 02/03/2019 11:29:11 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sueldos](
	[suledo_profesor] [smallint] NOT NULL,
	[sueldo_trabajdor] [smallint] NOT NULL,
	[sueldo_directores] [smallint] NOT NULL,
	[sueldo_becarios] [smallint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[materia_alumno]  WITH CHECK ADD  CONSTRAINT [fk_ma] FOREIGN KEY([materia_id])
REFERENCES [dbo].[materia] ([materia_id])
GO
ALTER TABLE [dbo].[materia_alumno] CHECK CONSTRAINT [fk_ma]
GO
ALTER TABLE [dbo].[materia_alumno]  WITH CHECK ADD  CONSTRAINT [fk_mat] FOREIGN KEY([matricula_id])
REFERENCES [dbo].[alumno] ([matricula_id])
GO
ALTER TABLE [dbo].[materia_alumno] CHECK CONSTRAINT [fk_mat]
GO
ALTER TABLE [dbo].[materia_profesor]  WITH CHECK ADD  CONSTRAINT [fk_ma1] FOREIGN KEY([materia_id])
REFERENCES [dbo].[materia] ([materia_id])
GO
ALTER TABLE [dbo].[materia_profesor] CHECK CONSTRAINT [fk_ma1]
GO
ALTER TABLE [dbo].[materia_profesor]  WITH CHECK ADD  CONSTRAINT [fk_pr] FOREIGN KEY([profesor_id])
REFERENCES [dbo].[profesor] ([profesor_id])
GO
ALTER TABLE [dbo].[materia_profesor] CHECK CONSTRAINT [fk_pr]
GO
