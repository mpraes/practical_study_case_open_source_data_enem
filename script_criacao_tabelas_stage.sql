CREATE DATABASE ST_UNIDATA_EXPANSAO
GO

USE ST_UNIDATA_EXPANSAO
GO 

CREATE TABLE [dbo].[TS_CANDIDATOS](
	[NU_INSCRICAO] [int] NOT NULL,
	[NU_ANO] [int] NOT NULL,
	[TP_ESCOLA] [int] NOT NULL,
	[COD_MUNICIPIO_ESC] [int] NOT NULL,
	[NOME_MUNICIPIO_ESC] [varchar](260) NOT NULL,
	[NU_NOTA_CN] [decimal(10,4)] NULL,
	[NU_NOTA_CH] [decimal(10,4)] NULL,
	[NU_NOTA_LC] [decimal(10,4)] NULL,
	[NU_NOTA_MT] [decimal(10,4)] NULL,
	[NU_NOTA_REDACAO] [decimal(10,4)] NULL)
GO

USE ST_UNIDATA_EXPANSAO
GO 

CREATE TABLE [dbo].[TS_MUNICIPIOS](
	[CODMUN7] [int] NOT NULL,
	[NOMEMUN] [nvarchar](260) NOT NULL,
	[IDHM] [decimal](10, 4) NULL,
	[IDHM_EDU] [decimal](10, 4) NULL,
	[IDHM_LONG] [decimal](10, 4) NULL,
	[IDHM_RENDA] [decimal](10, 4) NULL,
	[PESO1524] [int] NULL,
	[PESOTOT] [int] NULL,
	[ANO] [int] NULL)
GO
