USE [master]
GO
/****** Object:  Database [CasoEstudio]    Script Date: 10/12/2019 9:38:36 a. m. ******/
CREATE DATABASE [CasoEstudio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CasoEstudio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CasoEstudio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CasoEstudio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CasoEstudio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CasoEstudio] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CasoEstudio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CasoEstudio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CasoEstudio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CasoEstudio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CasoEstudio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CasoEstudio] SET ARITHABORT OFF 
GO
ALTER DATABASE [CasoEstudio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CasoEstudio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CasoEstudio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CasoEstudio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CasoEstudio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CasoEstudio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CasoEstudio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CasoEstudio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CasoEstudio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CasoEstudio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CasoEstudio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CasoEstudio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CasoEstudio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CasoEstudio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CasoEstudio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CasoEstudio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CasoEstudio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CasoEstudio] SET RECOVERY FULL 
GO
ALTER DATABASE [CasoEstudio] SET  MULTI_USER 
GO
ALTER DATABASE [CasoEstudio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CasoEstudio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CasoEstudio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CasoEstudio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CasoEstudio] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CasoEstudio', N'ON'
GO
ALTER DATABASE [CasoEstudio] SET QUERY_STORE = OFF
GO
USE [CasoEstudio]
GO
/****** Object:  Table [dbo].[administrador]    Script Date: 10/12/2019 9:38:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administrador](
	[idAdministrador] [int] NOT NULL,
	[password] [varchar](50) NOT NULL,
	[usuario_cedula] [int] NOT NULL,
 CONSTRAINT [PK_administrador] PRIMARY KEY CLUSTERED 
(
	[idAdministrador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[centro_medico]    Script Date: 10/12/2019 9:38:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[centro_medico](
	[idCentro_medico] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefonos] [varchar](50) NOT NULL,
	[foto] [text] NOT NULL,
	[nivel_atencion_idNivel_atencion] [int] NOT NULL,
	[eps_idEps] [int] NOT NULL,
	[hora_apertura_idHora_apertura] [time](7) NOT NULL,
	[hora_cierre_idHora_cierre] [time](7) NOT NULL,
 CONSTRAINT [PK_centro_medico] PRIMARY KEY CLUSTERED 
(
	[idCentro_medico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[centro_medico_has_especialidad]    Script Date: 10/12/2019 9:38:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[centro_medico_has_especialidad](
	[centro_medico_idCentro_medico] [int] NOT NULL,
	[especialidad_idEspecialidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eps]    Script Date: 10/12/2019 9:38:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eps](
	[idEps] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
	[nit] [varchar](45) NOT NULL,
	[direccion] [varchar](45) NOT NULL,
	[telefono] [varchar](45) NOT NULL,
	[password] [varchar](45) NOT NULL,
	[estado_eps_idEstado_eps] [int] NOT NULL,
 CONSTRAINT [PK_eps] PRIMARY KEY CLUSTERED 
(
	[idEps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[especialidad]    Script Date: 10/12/2019 9:38:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[especialidad](
	[idEspecialidad] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[especialidad_idEspecialidad] [int] NULL,
 CONSTRAINT [PK_especialidad] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_eps]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_eps](
	[idEstado_eps] [int] NOT NULL,
	[estado_eps] [varchar](50) NOT NULL,
 CONSTRAINT [PK_estado_eps] PRIMARY KEY CLUSTERED 
(
	[idEstado_eps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hora_apertura]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hora_apertura](
	[idHora_apertura] [int] NOT NULL,
	[hora_apertura] [time](7) NOT NULL,
 CONSTRAINT [PK_hora_apertura] PRIMARY KEY CLUSTERED 
(
	[idHora_apertura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hora_cierre]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hora_cierre](
	[idHora_cierre] [int] NOT NULL,
	[hora_cierre] [time](7) NOT NULL,
 CONSTRAINT [PK_hora_cierre] PRIMARY KEY CLUSTERED 
(
	[idHora_cierre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nivel_atencin]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nivel_atencin](
	[idNivel_atencion] [int] NOT NULL,
	[nombre] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Nivel_atencin] PRIMARY KEY CLUSTERED 
(
	[idNivel_atencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permisos]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permisos](
	[idPermisos] [int] NOT NULL,
	[url] [varchar](50) NOT NULL,
	[permiso_padre] [int] NOT NULL,
 CONSTRAINT [PK_permisos] PRIMARY KEY CLUSTERED 
(
	[idPermisos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla_consultas]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla_consultas](
	[usuario_cedula] [int] NOT NULL,
	[centro_medico_idCentro_medico] [int] NOT NULL,
	[consulta] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[cedula] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[idEps] [int] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_has_centro_medico]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_has_centro_medico](
	[usuario_cedula] [int] NOT NULL,
	[centro_medico_idCentro_medico] [int] NOT NULL,
	[calificacion] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_has_permisos]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_has_permisos](
	[usuario_cedula] [int] NOT NULL,
	[permisos_idPermisos] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[administrador]  WITH CHECK ADD  CONSTRAINT [FK_admin_usuario] FOREIGN KEY([usuario_cedula])
REFERENCES [dbo].[usuario] ([cedula])
GO
ALTER TABLE [dbo].[administrador] CHECK CONSTRAINT [FK_admin_usuario]
GO
ALTER TABLE [dbo].[centro_medico]  WITH CHECK ADD  CONSTRAINT [FK_centro_medico_eps] FOREIGN KEY([idCentro_medico])
REFERENCES [dbo].[eps] ([idEps])
GO
ALTER TABLE [dbo].[centro_medico] CHECK CONSTRAINT [FK_centro_medico_eps]
GO
ALTER TABLE [dbo].[centro_medico]  WITH CHECK ADD  CONSTRAINT [FK_centro_medico_hora_apertura] FOREIGN KEY([idCentro_medico])
REFERENCES [dbo].[hora_apertura] ([idHora_apertura])
GO
ALTER TABLE [dbo].[centro_medico] CHECK CONSTRAINT [FK_centro_medico_hora_apertura]
GO
ALTER TABLE [dbo].[centro_medico]  WITH CHECK ADD  CONSTRAINT [FK_centro_medico_hora_cierre] FOREIGN KEY([idCentro_medico])
REFERENCES [dbo].[hora_cierre] ([idHora_cierre])
GO
ALTER TABLE [dbo].[centro_medico] CHECK CONSTRAINT [FK_centro_medico_hora_cierre]
GO
ALTER TABLE [dbo].[centro_medico]  WITH CHECK ADD  CONSTRAINT [FK_centro_medico_Nivel_atencin] FOREIGN KEY([idCentro_medico])
REFERENCES [dbo].[Nivel_atencin] ([idNivel_atencion])
GO
ALTER TABLE [dbo].[centro_medico] CHECK CONSTRAINT [FK_centro_medico_Nivel_atencin]
GO
ALTER TABLE [dbo].[centro_medico_has_especialidad]  WITH CHECK ADD  CONSTRAINT [FK_centro_medico_has_especialidad_centro_medico] FOREIGN KEY([centro_medico_idCentro_medico])
REFERENCES [dbo].[centro_medico] ([idCentro_medico])
GO
ALTER TABLE [dbo].[centro_medico_has_especialidad] CHECK CONSTRAINT [FK_centro_medico_has_especialidad_centro_medico]
GO
ALTER TABLE [dbo].[centro_medico_has_especialidad]  WITH CHECK ADD  CONSTRAINT [FK_centro_medico_has_especialidad_especialidad] FOREIGN KEY([especialidad_idEspecialidad])
REFERENCES [dbo].[especialidad] ([idEspecialidad])
GO
ALTER TABLE [dbo].[centro_medico_has_especialidad] CHECK CONSTRAINT [FK_centro_medico_has_especialidad_especialidad]
GO
ALTER TABLE [dbo].[eps]  WITH CHECK ADD  CONSTRAINT [FK_eps_estado_eps] FOREIGN KEY([idEps])
REFERENCES [dbo].[estado_eps] ([idEstado_eps])
GO
ALTER TABLE [dbo].[eps] CHECK CONSTRAINT [FK_eps_estado_eps]
GO
ALTER TABLE [dbo].[especialidad]  WITH CHECK ADD  CONSTRAINT [FK_especialidad_especialidad] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[especialidad] ([idEspecialidad])
GO
ALTER TABLE [dbo].[especialidad] CHECK CONSTRAINT [FK_especialidad_especialidad]
GO
ALTER TABLE [dbo].[permisos]  WITH CHECK ADD  CONSTRAINT [FK_permisos_permisos] FOREIGN KEY([idPermisos])
REFERENCES [dbo].[permisos] ([idPermisos])
GO
ALTER TABLE [dbo].[permisos] CHECK CONSTRAINT [FK_permisos_permisos]
GO
ALTER TABLE [dbo].[tabla_consultas]  WITH CHECK ADD  CONSTRAINT [FK_tabla_consultas_centro_medico] FOREIGN KEY([centro_medico_idCentro_medico])
REFERENCES [dbo].[centro_medico] ([idCentro_medico])
GO
ALTER TABLE [dbo].[tabla_consultas] CHECK CONSTRAINT [FK_tabla_consultas_centro_medico]
GO
ALTER TABLE [dbo].[tabla_consultas]  WITH CHECK ADD  CONSTRAINT [FK_tabla_consultas_usuario] FOREIGN KEY([usuario_cedula])
REFERENCES [dbo].[usuario] ([cedula])
GO
ALTER TABLE [dbo].[tabla_consultas] CHECK CONSTRAINT [FK_tabla_consultas_usuario]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_eps] FOREIGN KEY([idEps])
REFERENCES [dbo].[eps] ([idEps])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_eps]
GO
ALTER TABLE [dbo].[usuario_has_centro_medico]  WITH CHECK ADD  CONSTRAINT [FK_usuario_has_centro_medico_centro_medico] FOREIGN KEY([centro_medico_idCentro_medico])
REFERENCES [dbo].[centro_medico] ([idCentro_medico])
GO
ALTER TABLE [dbo].[usuario_has_centro_medico] CHECK CONSTRAINT [FK_usuario_has_centro_medico_centro_medico]
GO
ALTER TABLE [dbo].[usuario_has_centro_medico]  WITH CHECK ADD  CONSTRAINT [FK_usuario_has_centro_medico_usuario] FOREIGN KEY([usuario_cedula])
REFERENCES [dbo].[usuario] ([cedula])
GO
ALTER TABLE [dbo].[usuario_has_centro_medico] CHECK CONSTRAINT [FK_usuario_has_centro_medico_usuario]
GO
ALTER TABLE [dbo].[usuario_has_permisos]  WITH CHECK ADD  CONSTRAINT [FK_usuario_has_permisos_permisos] FOREIGN KEY([permisos_idPermisos])
REFERENCES [dbo].[permisos] ([idPermisos])
GO
ALTER TABLE [dbo].[usuario_has_permisos] CHECK CONSTRAINT [FK_usuario_has_permisos_permisos]
GO
ALTER TABLE [dbo].[usuario_has_permisos]  WITH CHECK ADD  CONSTRAINT [FK_usuario_has_permisos_usuario] FOREIGN KEY([usuario_cedula])
REFERENCES [dbo].[usuario] ([cedula])
GO
ALTER TABLE [dbo].[usuario_has_permisos] CHECK CONSTRAINT [FK_usuario_has_permisos_usuario]
GO
/****** Object:  StoredProcedure [dbo].[sp_login_admin]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_admin] 
	-- Add the parameters for the stored procedure here
	@cedula int,
	@password varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from dbo.administrador where usuario_cedula=@cedula and password=@password;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_login_eps]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_eps]
	-- Add the parameters for the stored procedure here
	@nit varchar(45),
	@password varchar(45)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.eps where nit = @nit AND password = @password;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_login_usuario]    Script Date: 10/12/2019 9:38:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_login_usuario]
	-- Add the parameters for the stored procedure here
	@cedula int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from dbo.usuario where dbo.usuario.cedula = @cedula;
END

GO
USE [master]
GO
ALTER DATABASE [CasoEstudio] SET  READ_WRITE 
GO
