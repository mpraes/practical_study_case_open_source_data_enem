CREATE DATABASE UNIDATA_EXPANSAO_DW
GO

USE DATABASE UNIDATA_EXPANSAO_DW
GO

CREATE TABLE DIM_TP_ESCOLA(
ID_TP_ESCOLA INT NOT NULL PRIMARY KEY,
DESC_TP_ESCOLA NVARCHAR(200) NOT NULL)

CREATE TABLE DIM_MUNICIPIO(
ID_MUNICIPIO INT NOT NULL PRIMARY KEY,
DESC_MUNICIPIO NVARCHAR(200) NOT NULL)

CREATE TABLE TA_DADOS_MUNICIPIO(
ID_MUNICIPIO INT NOT NULL UNIQUE,
IDH_MUNICIPIO DECIMAL(10,4),
IDH_EDU_MUNICIPIO DECIMAL(10,4),
IDH_LONG_MUNICIPIO DECIMAL(10,4),
IDH_RENDA_MUNICIPIO DECIMAL(10,4),
POP_1517 INT,
POP_1820 INT,
POP_TOTAL INT)

CREATE TABLE FCT_CANDIDATOS(
ID_INSCRICAO INT NOT NULL PRIMARY KEY,
ID_TP_ESCOLA INT NOT NULL FOREIGN KEY REFERENCES DIM_TP_ESCOLA(ID_TP_ESCOLA),
ID_MUNICIPIO INT NOT NULL FOREIGN KEY REFERENCES DIM_MUNICIPIO(ID_MUNICIPIO),
ANO INT NOT NULL,
NOTA_CN INT,
NOTA_CH INT,
NOTA_LC INT,
NOTA_MT INT,
NOTA_REDACAO INT)
