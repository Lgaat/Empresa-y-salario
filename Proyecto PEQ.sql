
/*Nombre: Marcos Nuñez	Matricula: 16-EIIT-1-011 Seccion: 0541*/
/*Nombre: Martir Lorenzo Matricula: 18-EIIT-1-102 Seccion: 0541*/





USE [master]
GO
/****** Object:  Database [Empresa Queso]    Script Date: 30/11/2018 1:41:09 p. m. ******/
CREATE DATABASE [Empresa Queso]


USE [Empresa Queso]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 30/11/2018 1:41:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[DepartamentoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[EmpleadoID] [int] NULL,
	[PuestoID] [int] NULL,
 CONSTRAINT [PK_Departamento2] PRIMARY KEY CLUSTERED 
(
	[DepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 30/11/2018 1:41:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[EmpleadoID] [int] NOT NULL,
	[Nombre] [varchar](70) NULL,
	[Fechadenacimiento] [datetime] NULL,
	[Sexo] [char](1) NULL,
	[TipoDeSangre] [char](1) NULL,
	[Telefono] [varchar](15) NULL,
	[Direccion] [varchar](250) NULL,
	[Email] [varchar](50) NULL,
	[PuestoID] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[EmpleadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 30/11/2018 1:41:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[PuestoID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Salario] [float] NULL,
	[Horario] [varchar](50) NULL,
	[EmpleadoID] [int] NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[PuestoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre], [EmpleadoID], [PuestoID]) VALUES (1, N'Comercializacion', 1, 4)
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre], [EmpleadoID], [PuestoID]) VALUES (2, N'Gerencia', 2, 1)
INSERT [dbo].[Departamento] ([DepartamentoID], [Nombre], [EmpleadoID], [PuestoID]) VALUES (3, N'Mantenimiento', 2, 5)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [Fechadenacimiento], [Sexo], [TipoDeSangre], [Telefono], [Direccion], [Email], [PuestoID]) VALUES (1, N'Marcos', CAST(N'1972-12-13T00:00:00.000' AS DateTime), N'H', N'O', N'8095558292', N'Herrera', N'tuchamaquito', 1)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [Fechadenacimiento], [Sexo], [TipoDeSangre], [Telefono], [Direccion], [Email], [PuestoID]) VALUES (2, N'Jesica', CAST(N'1800-02-13T00:00:00.000' AS DateTime), N'M', N'A', N'8098887628', N'Herrera', N'lakny', 3)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [Fechadenacimiento], [Sexo], [TipoDeSangre], [Telefono], [Direccion], [Email], [PuestoID]) VALUES (3, N'Carlos', CAST(N'2015-05-13T00:00:00.000' AS DateTime), N'H', N'A', N'8096465548', N'Herrera', N'wawawa', 2)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [Fechadenacimiento], [Sexo], [TipoDeSangre], [Telefono], [Direccion], [Email], [PuestoID]) VALUES (4, N'Jessicaria', CAST(N'1879-08-13T00:00:00.000' AS DateTime), N'M', N'A', N'8264855852', N'Hondura', N'Jenufer', 4)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [Fechadenacimiento], [Sexo], [TipoDeSangre], [Telefono], [Direccion], [Email], [PuestoID]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [Fechadenacimiento], [Sexo], [TipoDeSangre], [Telefono], [Direccion], [Email], [PuestoID]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [Fechadenacimiento], [Sexo], [TipoDeSangre], [Telefono], [Direccion], [Email], [PuestoID]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [Fechadenacimiento], [Sexo], [TipoDeSangre], [Telefono], [Direccion], [Email], [PuestoID]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([EmpleadoID], [Nombre], [Fechadenacimiento], [Sexo], [TipoDeSangre], [Telefono], [Direccion], [Email], [PuestoID]) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Puesto] ([PuestoID], [Nombre], [Salario], [Horario], [EmpleadoID]) VALUES (1, N'Gerente', 2500000, N'Matutino', 1)
INSERT [dbo].[Puesto] ([PuestoID], [Nombre], [Salario], [Horario], [EmpleadoID]) VALUES (2, N'SubGerente', 2000000, N'Matutino', 2)
INSERT [dbo].[Puesto] ([PuestoID], [Nombre], [Salario], [Horario], [EmpleadoID]) VALUES (3, N'Secretario', 1000000, N'Vespertino', 3)
INSERT [dbo].[Puesto] ([PuestoID], [Nombre], [Salario], [Horario], [EmpleadoID]) VALUES (4, N'Servicioalcliente', 250000, N'Matutino', 4)
INSERT [dbo].[Puesto] ([PuestoID], [Nombre], [Salario], [Horario], [EmpleadoID]) VALUES (5, N'Conserje', 15000, N'Nocturno', 5)
INSERT [dbo].[Puesto] ([PuestoID], [Nombre], [Salario], [Horario], [EmpleadoID]) VALUES (6, N'Encargado', 50000, N'Matutino', 7)
INSERT [dbo].[Puesto] ([PuestoID], [Nombre], [Salario], [Horario], [EmpleadoID]) VALUES (7, N'Operario', 10000, N'Matutino', 8)
INSERT [dbo].[Puesto] ([PuestoID], [Nombre], [Salario], [Horario], [EmpleadoID]) VALUES (8, N'Mensajero', 20000, N'Matutino', 9)





ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Empleado] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleado] ([EmpleadoID])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Empleado]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Puesto] FOREIGN KEY([PuestoID])
REFERENCES [dbo].[Puesto] ([PuestoID])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Puesto]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Puesto] FOREIGN KEY([PuestoID])
REFERENCES [dbo].[Puesto] ([PuestoID])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [FK_Puesto_Empleado1] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleado] ([EmpleadoID])
GO
ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [FK_Puesto_Empleado1]
GO
USE [master]
GO
ALTER DATABASE [Empresa Queso] SET  READ_WRITE 
GO
