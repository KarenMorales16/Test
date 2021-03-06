USE [ConsecionarioDeAutos]
GO
/****** Object:  Table [dbo].[Anio]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anio](
	[IdAnio] [int] IDENTITY(1,1) NOT NULL,
	[Anio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAnio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auto_Adiccionales]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auto_Adiccionales](
	[IdAuto_Adic] [int] IDENTITY(1,1) NOT NULL,
	[IdAutos] [int] NOT NULL,
	[IdColor] [int] NOT NULL,
	[IdPerformance] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAuto_Adic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutoExistencia]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoExistencia](
	[IdAutoExistencia] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad] [int] NULL,
	[IdAutos] [int] NULL,
	[IdModelo] [int] NULL,
	[Fecha] [date] NULL,
	[IdSucursal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAutoExistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autos]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autos](
	[IdAutos] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](25) NULL,
	[IdColor] [int] NULL,
	[IdModelo] [int] NULL,
	[IdAnio] [int] NULL,
	[Precio] [decimal](14, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAutos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aval]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aval](
	[IdAval] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApP] [varchar](30) NULL,
	[ApM] [varchar](30) NULL,
	[Telefono] [varchar](13) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraDePago]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraDePago](
	[id_Bitacora] [int] IDENTITY(1,1) NOT NULL,
	[FechaDePago] [date] NULL,
	[Abono] [decimal](14, 2) NULL,
	[PagoMinimo] [decimal](14, 2) NULL,
	[IdVentaAuto] [int] NULL,
	[Restante] [decimal](14, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Bitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApP] [varchar](30) NULL,
	[ApM] [varchar](30) NULL,
	[Edad] [int] NULL,
	[FechaDeNacimiento] [date] NULL,
	[Sexo] [int] NULL,
	[RFC] [varchar](13) NULL,
	[Direccion] [varchar](50) NULL,
	[CP] [int] NULL,
	[Telefono] [varchar](13) NULL,
	[TelefonoCasa] [varchar](13) NULL,
	[Correo] [varchar](50) NULL,
	[IdAval] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[IdColor] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](20) NULL,
	[Precio] [decimal](14, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consecionario]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consecionario](
	[IdConsecionario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConsecionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosFinanciamiento]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosFinanciamiento](
	[IdDatosFinanciamiento] [int] IDENTITY(1,1) NOT NULL,
	[NombreEnTC] [varchar](100) NULL,
	[NoTarjetaC] [varchar](18) NULL,
	[IdMesExpiracion] [int] NULL,
	[IdFechaExpiracion] [int] NULL,
	[CVV] [varchar](3) NULL,
	[CPFacturacion] [int] NULL,
	[FechaPago] [date] NULL,
	[PrimerPago] [decimal](14, 2) NULL,
	[IdCliente] [int] NULL,
	[IdTiempoDePago] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDatosFinanciamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApP] [varchar](30) NULL,
	[ApM] [varchar](30) NULL,
	[Telefono] [varchar](13) NULL,
	[Correo] [varchar](50) NULL,
	[RFC] [varchar](13) NULL,
	[IdTipoEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpleadoSucursal]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoSucursal](
	[IdEmpleadoSucursal] [int] IDENTITY(1,1) NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleadoSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FechaExpiracion]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FechaExpiracion](
	[IdFechaExpiracion] [int] IDENTITY(1,1) NOT NULL,
	[FechaExpiracion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFechaExpiracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MesExpiracion]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MesExpiracion](
	[IdMesExpiracion] [int] IDENTITY(1,1) NOT NULL,
	[MesExpiracion] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMesExpiracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelo](
	[IdModelo] [int] IDENTITY(1,1) NOT NULL,
	[Modelo] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partes]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partes](
	[IdPartes] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDeParte] [varchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPartes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartesInventario]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartesInventario](
	[IdPartesInventario] [int] IDENTITY(1,1) NOT NULL,
	[IdPartes] [int] NULL,
	[Cantidad] [int] NULL,
	[IdSucursal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPartesInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartesPrecio]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartesPrecio](
	[IdPartesPrecio] [int] IDENTITY(1,1) NOT NULL,
	[Precio] [decimal](15, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPartesPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartesPrecioBitacora]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartesPrecioBitacora](
	[IdPartesPrecioBitacora] [int] IDENTITY(1,1) NOT NULL,
	[IdPartes] [int] NOT NULL,
	[IdPartesPrecio] [int] NOT NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPartesPrecioBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Performance]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Performance](
	[IdPerformance] [int] IDENTITY(1,1) NOT NULL,
	[Performance] [varchar](60) NULL,
	[Precio] [decimal](14, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPerformance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[IdSexo] [int] IDENTITY(1,1) NOT NULL,
	[Sexo] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](100) NULL,
	[CP] [int] NULL,
	[IdConsecionario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiempoDePago]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiempoDePago](
	[IdTiempoDePago] [int] IDENTITY(1,1) NOT NULL,
	[TiempoDePago] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTiempoDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoEmpleado]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEmpleado](
	[IdTipoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[TipoEmpleado] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaAuto]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaAuto](
	[IdVentaAuto] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdAutos] [int] NOT NULL,
	[IdAuto_Adic] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVentaAuto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaParte]    Script Date: 12/06/2020 08:36:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaParte](
	[IdVentaParte] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVentaParte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Anio] ON 

INSERT [dbo].[Anio] ([IdAnio], [Anio]) VALUES (1, 2019)
INSERT [dbo].[Anio] ([IdAnio], [Anio]) VALUES (2, 2020)
INSERT [dbo].[Anio] ([IdAnio], [Anio]) VALUES (3, 2021)
SET IDENTITY_INSERT [dbo].[Anio] OFF
SET IDENTITY_INSERT [dbo].[Auto_Adiccionales] ON 

INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (6, 15, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (17, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (18, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (19, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (20, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (21, 15, 3, 2)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (22, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (23, 15, 3, 2)
SET IDENTITY_INSERT [dbo].[Auto_Adiccionales] OFF
SET IDENTITY_INSERT [dbo].[AutoExistencia] ON 

INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (1, 495, 14, 1, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (2, 498, 15, 1, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (3, 500, 16, 2, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (4, 500, 17, 2, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (5, 500, 18, 3, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (6, 500, 19, 3, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (7, 500, 20, 4, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (8, 500, 21, 4, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (9, 600, 14, 1, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (10, 600, 15, 1, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (11, 600, 16, 2, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (12, 600, 17, 2, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (13, 400, 18, 3, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (14, 500, 19, 3, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (15, 100, 20, 4, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (16, 700, 21, 4, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (17, 900, 14, 1, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (18, 700, 15, 1, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (19, 600, 16, 2, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (20, 800, 17, 2, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (21, 400, 18, 3, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (22, 500, 19, 3, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (23, 100, 20, 4, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (24, 700, 21, 4, CAST(N'2020-06-12' AS Date), 6)
SET IDENTITY_INSERT [dbo].[AutoExistencia] OFF
SET IDENTITY_INSERT [dbo].[Autos] ON 

INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (14, N'Tesla', 1, 1, 2, CAST(349900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (15, N'Tesla', 1, 1, 3, CAST(359900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (16, N'Tesla', 1, 2, 2, CAST(2349900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (17, N'Tesla', 1, 2, 3, CAST(2449900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (18, N'Tesla', 1, 3, 2, CAST(1929900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (19, N'Tesla', 1, 3, 3, CAST(2029900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (20, N'Tesla', 1, 4, 2, CAST(1134246.9600 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (21, N'Tesla', 1, 4, 3, CAST(1134246.9600 AS Decimal(14, 4)))
SET IDENTITY_INSERT [dbo].[Autos] OFF
SET IDENTITY_INSERT [dbo].[BitacoraDePago] ON 

INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (27, CAST(N'2020-06-12' AS Date), CAST(136461.00 AS Decimal(14, 2)), CAST(12635.28 AS Decimal(14, 2)), 14, CAST(442234.72 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (28, CAST(N'2020-07-12' AS Date), NULL, CAST(12635.28 AS Decimal(14, 2)), 14, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (29, CAST(N'2020-06-12' AS Date), CAST(162607.50 AS Decimal(14, 2)), CAST(9033.75 AS Decimal(14, 2)), 15, CAST(532991.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (30, CAST(N'2020-07-12' AS Date), NULL, CAST(9033.75 AS Decimal(14, 2)), 15, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (31, CAST(N'2020-06-12' AS Date), CAST(136461.00 AS Decimal(14, 2)), CAST(12635.28 AS Decimal(14, 2)), 16, CAST(442234.72 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (32, CAST(N'2020-07-12' AS Date), NULL, CAST(12635.28 AS Decimal(14, 2)), 16, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (33, CAST(N'2020-06-12' AS Date), CAST(162607.50 AS Decimal(14, 2)), CAST(9033.75 AS Decimal(14, 2)), 17, CAST(532991.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (34, CAST(N'2020-07-12' AS Date), NULL, CAST(9033.75 AS Decimal(14, 2)), 17, NULL)
SET IDENTITY_INSERT [dbo].[BitacoraDePago] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (1, N'Jesús Eduardo', N'Escobedo', N'Diaz', 23, CAST(N'1996-10-15' AS Date), 1, N'EODJ9615NQ1', N'Insurgentes', 22278, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (2, N'ang', N's', N's', 1, CAST(N'2020-06-10' AS Date), 1, N's', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (3, N'ang', N's', N's', 1, CAST(N'2020-06-10' AS Date), 1, N's', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (4, N'ang', N'e', N'e', 12, CAST(N'2020-06-10' AS Date), 1, N'ds', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (5, N'Gamaliel', N'Escobedo', N'Diaz', 18, CAST(N'2020-06-11' AS Date), 1, N'dsfsd', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (6, N'Gamaliel', N'Escobedo', N'Diaz', 7, CAST(N'2020-06-12' AS Date), 1, N'jjhkj', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (17, N'eduardo', N'escobedo', N'diaz', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (18, N'eduardo', N'escobedo', N'diaz', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (19, N'eduardo', N'escobedo', N'diaz', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (20, N'eduardo', N'escobedo', N'diaz', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (21, N'Jesús Eduardo', N'Escobedo', N'Diaz', 23, CAST(N'1996-10-15' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (22, N'karen', N'Morales', N'Escobedo', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (23, N'Karen Nohemi', N'Morales', N'Galindo', 22, CAST(N'1997-09-11' AS Date), 2, N'MOGK961019AJ', N'Calle Rio Lerma #12640', 22190, N'6642008983', N'9696200', N'Karen.morales16@tectijuana.edu.mx', NULL)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (1, N'Blanco', CAST(0.0000 AS Decimal(14, 4)))
INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (2, N'Rojo', CAST(43200.0000 AS Decimal(14, 4)))
INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (3, N'Negro', CAST(21600.0000 AS Decimal(14, 4)))
INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (4, N'Metalico', CAST(21600.0000 AS Decimal(14, 4)))
INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (5, N'Azul', CAST(21600.0000 AS Decimal(14, 4)))
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[Consecionario] ON 

INSERT [dbo].[Consecionario] ([IdConsecionario], [Nombre]) VALUES (1, N'Tesla')
SET IDENTITY_INSERT [dbo].[Consecionario] OFF
SET IDENTITY_INSERT [dbo].[DatosFinanciamiento] ON 

INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (1, N'Gamaliel Escobedo Diaz', N'112233445566778899', 4, 5, N'123', 22278, CAST(N'2020-06-11' AS Date), NULL, NULL, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (2, N'Gamaliel Escobedo Diaz', N'1234567', 3, 3, N'123', 22222, CAST(N'2020-06-12' AS Date), NULL, 6, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (13, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), NULL, 17, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (14, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), NULL, 18, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (15, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), NULL, 19, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (16, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), NULL, 20, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (17, N'Jesus Eduardo Escobedo Diaz', N'12345678', 1, 1, N'123', 22222, CAST(N'2020-06-12' AS Date), NULL, 21, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (18, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), CAST(136461.00 AS Decimal(14, 2)), 22, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (19, N'Karen Nohemi Morales Galindo', N'1234567', 8, 5, N'3', 22190, CAST(N'2020-06-12' AS Date), CAST(162608.00 AS Decimal(14, 2)), 23, 2)
SET IDENTITY_INSERT [dbo].[DatosFinanciamiento] OFF
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [ApP], [ApM], [Telefono], [Correo], [RFC], [IdTipoEmpleado]) VALUES (1, N'Karen', N'Morales', N'Galindo', N'6641234567', N'elcorreo@gmail.com', N'sdfs5', 1)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
SET IDENTITY_INSERT [dbo].[FechaExpiracion] ON 

INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (1, 2020)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (2, 2021)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (3, 2022)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (4, 2023)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (5, 2024)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (6, 2025)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (7, 2026)
SET IDENTITY_INSERT [dbo].[FechaExpiracion] OFF
SET IDENTITY_INSERT [dbo].[MesExpiracion] ON 

INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (1, N'01')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (2, N'02')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (3, N'03')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (4, N'04')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (5, N'05')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (6, N'06')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (7, N'07')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (8, N'08')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (9, N'09')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (10, N'10')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (11, N'11')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (12, N'12')
SET IDENTITY_INSERT [dbo].[MesExpiracion] OFF
SET IDENTITY_INSERT [dbo].[Modelo] ON 

INSERT [dbo].[Modelo] ([IdModelo], [Modelo]) VALUES (1, N'Model S')
INSERT [dbo].[Modelo] ([IdModelo], [Modelo]) VALUES (2, N'Model 3')
INSERT [dbo].[Modelo] ([IdModelo], [Modelo]) VALUES (3, N'Model x')
INSERT [dbo].[Modelo] ([IdModelo], [Modelo]) VALUES (4, N'cybertruck')
SET IDENTITY_INSERT [dbo].[Modelo] OFF
SET IDENTITY_INSERT [dbo].[Performance] ON 

INSERT [dbo].[Performance] ([IdPerformance], [Performance], [Precio]) VALUES (1, N'Base', CAST(0.0000 AS Decimal(14, 4)))
INSERT [dbo].[Performance] ([IdPerformance], [Performance], [Precio]) VALUES (2, N'Autonomia estandar', CAST(20000.0000 AS Decimal(14, 4)))
INSERT [dbo].[Performance] ([IdPerformance], [Performance], [Precio]) VALUES (3, N'Autonomia mayor', CAST(30000.0000 AS Decimal(14, 4)))
INSERT [dbo].[Performance] ([IdPerformance], [Performance], [Precio]) VALUES (4, N'Performance', CAST(40000.0000 AS Decimal(14, 4)))
SET IDENTITY_INSERT [dbo].[Performance] OFF
SET IDENTITY_INSERT [dbo].[Sexo] ON 

INSERT [dbo].[Sexo] ([IdSexo], [Sexo]) VALUES (1, N'Hombre')
INSERT [dbo].[Sexo] ([IdSexo], [Sexo]) VALUES (2, N'Mujer')
SET IDENTITY_INSERT [dbo].[Sexo] OFF
SET IDENTITY_INSERT [dbo].[Sucursal] ON 

INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [Direccion], [CP], [IdConsecionario]) VALUES (4, N'Tesla', N'3248 Lionshead Ave, Carlsbad, CA , Estados Unidos', 92010, 1)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [Direccion], [CP], [IdConsecionario]) VALUES (5, N'Tesla', N'7007 Friars Rd #325a, San Diego, CA ,Estados Unidos', 92108, 1)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [Direccion], [CP], [IdConsecionario]) VALUES (6, N'Tesla Service Center', N'5600 Kearny Mesa Rd, CA, Estados Unidos', 92111, 1)
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
SET IDENTITY_INSERT [dbo].[TiempoDePago] ON 

INSERT [dbo].[TiempoDePago] ([IdTiempoDePago], [TiempoDePago]) VALUES (1, N'3 Años')
INSERT [dbo].[TiempoDePago] ([IdTiempoDePago], [TiempoDePago]) VALUES (2, N'5 Años')
INSERT [dbo].[TiempoDePago] ([IdTiempoDePago], [TiempoDePago]) VALUES (3, N'7 Años')
SET IDENTITY_INSERT [dbo].[TiempoDePago] OFF
SET IDENTITY_INSERT [dbo].[TipoEmpleado] ON 

INSERT [dbo].[TipoEmpleado] ([IdTipoEmpleado], [TipoEmpleado]) VALUES (1, N'Vendedora')
SET IDENTITY_INSERT [dbo].[TipoEmpleado] OFF
SET IDENTITY_INSERT [dbo].[VentaAuto] ON 

INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha]) VALUES (14, 1, 14, 20, 20, 4, CAST(N'2020-06-12' AS Date))
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha]) VALUES (15, 1, 15, 21, 21, 4, CAST(N'2020-06-12' AS Date))
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha]) VALUES (16, 1, 14, 22, 22, 4, CAST(N'2020-06-12' AS Date))
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha]) VALUES (17, 1, 15, 23, 23, 4, CAST(N'2020-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[VentaAuto] OFF
ALTER TABLE [dbo].[Auto_Adiccionales]  WITH CHECK ADD FOREIGN KEY([IdAutos])
REFERENCES [dbo].[Autos] ([IdAutos])
GO
ALTER TABLE [dbo].[Auto_Adiccionales]  WITH CHECK ADD FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([IdColor])
GO
ALTER TABLE [dbo].[Auto_Adiccionales]  WITH CHECK ADD FOREIGN KEY([IdPerformance])
REFERENCES [dbo].[Performance] ([IdPerformance])
GO
ALTER TABLE [dbo].[AutoExistencia]  WITH CHECK ADD FOREIGN KEY([IdAutos])
REFERENCES [dbo].[Autos] ([IdAutos])
GO
ALTER TABLE [dbo].[AutoExistencia]  WITH CHECK ADD FOREIGN KEY([IdModelo])
REFERENCES [dbo].[Modelo] ([IdModelo])
GO
ALTER TABLE [dbo].[AutoExistencia]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[Autos]  WITH CHECK ADD FOREIGN KEY([IdAnio])
REFERENCES [dbo].[Anio] ([IdAnio])
GO
ALTER TABLE [dbo].[Autos]  WITH CHECK ADD FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([IdColor])
GO
ALTER TABLE [dbo].[Autos]  WITH CHECK ADD FOREIGN KEY([IdModelo])
REFERENCES [dbo].[Modelo] ([IdModelo])
GO
ALTER TABLE [dbo].[BitacoraDePago]  WITH CHECK ADD FOREIGN KEY([IdVentaAuto])
REFERENCES [dbo].[VentaAuto] ([IdVentaAuto])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdAval])
REFERENCES [dbo].[Aval] ([IdAval])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([Sexo])
REFERENCES [dbo].[Sexo] ([IdSexo])
GO
ALTER TABLE [dbo].[DatosFinanciamiento]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[DatosFinanciamiento]  WITH CHECK ADD FOREIGN KEY([IdFechaExpiracion])
REFERENCES [dbo].[FechaExpiracion] ([IdFechaExpiracion])
GO
ALTER TABLE [dbo].[DatosFinanciamiento]  WITH CHECK ADD FOREIGN KEY([IdMesExpiracion])
REFERENCES [dbo].[MesExpiracion] ([IdMesExpiracion])
GO
ALTER TABLE [dbo].[DatosFinanciamiento]  WITH CHECK ADD FOREIGN KEY([IdTiempoDePago])
REFERENCES [dbo].[TiempoDePago] ([IdTiempoDePago])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([IdTipoEmpleado])
REFERENCES [dbo].[TipoEmpleado] ([IdTipoEmpleado])
GO
ALTER TABLE [dbo].[EmpleadoSucursal]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[EmpleadoSucursal]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[PartesInventario]  WITH CHECK ADD FOREIGN KEY([IdPartes])
REFERENCES [dbo].[Partes] ([IdPartes])
GO
ALTER TABLE [dbo].[PartesInventario]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[PartesPrecioBitacora]  WITH CHECK ADD FOREIGN KEY([IdPartes])
REFERENCES [dbo].[Partes] ([IdPartes])
GO
ALTER TABLE [dbo].[PartesPrecioBitacora]  WITH CHECK ADD FOREIGN KEY([IdPartesPrecio])
REFERENCES [dbo].[PartesPrecio] ([IdPartesPrecio])
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD FOREIGN KEY([IdConsecionario])
REFERENCES [dbo].[Consecionario] ([IdConsecionario])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdAutos])
REFERENCES [dbo].[Autos] ([IdAutos])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdAuto_Adic])
REFERENCES [dbo].[Auto_Adiccionales] ([IdAuto_Adic])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[VentaParte]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[VentaParte]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[VentaParte]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
/****** Object:  StoredProcedure [dbo].[AutosAlta]    Script Date: 12/06/2020 08:36:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AutosAlta]
@Marca varchar(25),
@IdColor int ,
@IdModelo int,
@IdAnio int,
@Precio Decimal (14,4)
as 
begin
	insert into autos  values(@Marca,@IdColor, @IdModelo,@IdAnio,@Precio)
end
GO
/****** Object:  StoredProcedure [dbo].[Caracteristicas]    Script Date: 12/06/2020 08:36:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Caracteristicas]
@IdAuto int ,@IdPerformace int ,@IdColor int
AS
BEGIN 
Insert into Auto_Adiccionales values(@IdAuto,@IdPerformace,@IdColor)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_OrdeanarCarro]    Script Date: 12/06/2020 08:36:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_OrdeanarCarro]-- 14,1,1,'eduardo','escobedo','diaz',23,'2020-06-12',1,'sdfs','laurel',22253,'6642414460','6642414460','sdfsd@','eduardo',123,1,1,'123',2222,1,4
@IdAuto int,
@IdColor int,
@IdPerformance int,
@Nombre varchar(50),
@ApP varchar(50),
@ApM varchar(50),
@Edad int,
@FechaDeNacimiento datetime,
@Sexo int,
@RFC varchar(13),
@Direccion varchar(100),
@CP int,
@Telefono varchar(15),
@TelefonoCasa varchar(15),
@Correo varchar(100),
@NombreEnTC varchar(100),
@NoTarjetaC varchar(18),
@IdMesExpiracion int,
@IdFechaExpiracion int,
@CVV varchar(3),
@CPFacturacion  int,
@IdTiempoDePago int,
@IdSucursal int
as
begin

	declare @IdClienteT int, @AAt int,@CuentaC int, @PrecioF decimal(14,2),@IdVentaT int,@Enganche  decimal(14,2),@abono decimal(14,2),@Precio decimal(14,2),@Suma decimal(14,2),@PrecioBase decimal(14,2)
	declare @PrecioColor decimal(14,2),@PrecioPerformance decimal(14,2)

	insert into Auto_Adiccionales (IdAutos,IdColor,IdPerformance) values(@IdAuto,@IdColor,@IdPerformance)
	set @AAt=SCOPE_IDENTITY()

	set @PrecioPerformance=(SELECT Precio from Performance where IdPerformance=@IdPerformance)
	set @PrecioColor=(SELECT Precio from Color where IdColor=@IdColor)	
	set @PrecioBase=(SELECT Precio from Autos where IdAutos=@IdAuto)
	set @Suma = (@PrecioPerformance + @PrecioColor + @PrecioBase)

	if (@IdTiempoDePago = 1) 
	begin
         set   @Precio = (@Suma * 0.30) + @Suma;
         set   @abono = @Precio/(3*12);

     end
        if (@IdTiempoDePago = 2) 
	begin
         set   @Precio = (@Suma * 0.35) + @Suma;
         set @abono = @Precio / (5 * 12);
     end
        if (@IdTiempoDePago = 3) 
	begin
        set   @Precio = (@Suma * 0.40) + @Suma;
        set   @abono = @Precio / ( 7* 12);
    end
	 
	insert into Cliente (Nombre,ApP,ApM,Edad,FechaDeNacimiento,Sexo,RFC,Direccion,CP,Telefono,TelefonoCasa,Correo) values
						(@Nombre,@ApP,@ApM,@Edad,@FechaDeNacimiento,@Sexo,@RFC,@Direccion,@CP,@Telefono,@TelefonoCasa,@Correo)

			set @IdClienteT=SCOPE_IDENTITY()	
			
			set @CuentaC=(select COUNT(IdCliente) from VentaAuto where IdCliente=@IdClienteT)

			if(@CuentaC>0)
			begin
				set @PrecioF = @Precio - (@Precio*0.15)
			end
			else
			begin
				set @PrecioF=@Precio
			end
			set @Enganche = (@PrecioF * 0.30)

	insert into DatosFinanciamiento (NombreEnTC,NoTarjetaC,IdMesExpiracion,IdFechaExpiracion,CVV,CPFacturacion,FechaPago,PrimerPago,IdCliente,IdTiempoDePago) values
	(@NombreEnTC,@NoTarjetaC,@IdMesExpiracion,@IdFechaExpiracion,@CVV,@CPFacturacion,GETDATE(),@Enganche,@IdClienteT,@IdTiempoDePago)

	--insert VentaAuto
	insert into VentaAuto (IdEmpleado,IdAutos,IdAuto_Adic,IdCliente,IdSucursal,Fecha) values (1,@IdAuto,@AAt,@IdClienteT,@IdSucursal,GETDATE())
	set  @IdVentaT = SCOPE_IDENTITY()
	--BitacoraDePago
	declare @Restante decimal (14,2)
	set @Restante= (@PrecioF-@abono)
	insert into BitacoraDePago (FechaDePago,Abono,PagoMinimo,IdVentaAuto,Restante) values (GETDATE(),@Enganche,@abono,@IdVentaT,@Restante)

	--insert siguiente mes
	declare @siguienteM date,@MesA date, @Idb int

	set @Idb =SCOPE_IDENTITY()

	set @MesA = (select FechaDePago from BitacoraDePago where id_Bitacora= @Idb)

	set @siguienteM = DATEADD(MONTH,1,@MesA)

	insert into BitacoraDePago (FechaDePago,PagoMinimo,IdVentaAuto) values(@siguienteM,@abono,@IdVentaT)

	---Resta stok AutoExistencia
	DECLARE @RestaExistencia int, @CantidadExistencia int
	set @CantidadExistencia= (select Cantidad from AutoExistencia where IdAutos=@IdAuto and IdSucursal=@IdSucursal)
	set @RestaExistencia=@CantidadExistencia-1
	update AutoExistencia set Cantidad=@RestaExistencia where IdAutos=@IdAuto and IdSucursal=@IdSucursal

end
GO
