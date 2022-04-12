CREATE DATABASE bd_03
GO

USE bd_03
GO

-- Atividade de comandos DQL

CREATE TABLE Departamento(
	Nome NVARCHAR (100) NOT NULL,
	Número NVARCHAR (10) NOT NULL,
	RG_Gerente NVARCHAR (10) NOT NULL,
	)
	GO

CREATE TABLE Empregados(
	Nome NVARCHAR (100) NOT NULL,
	RG NVARCHAR (8) NOT NULL,
	CPF NVARCHAR (8) NOT NULL,
	Departamento int NOT NULL,
	RG_Supervisor NVARCHAR (10) NULL,
	Salário NVARCHAR (50) NOT NULL,
	)
	GO

	INSERT INTO Departamento(Nome, Número, RG_Gerente)
	VALUES('Contabilidade', '01', '10101010')
	,('Engenharia Cívil', '02', '30303030') 
	,('Engenharia Mecânica', '03', '20202020')
	GO

	INSERT INTO Empregados(Nome, RG, CPF, Departamento, RG_Supervisor, Salário)
	VALUES('João Luiz', '10101010', '11111111', 1, NULL, '300000')
	,('Fernando', '20202020', '22222222', 2, '10101010', '250000')
	,('Ricardo', '30303030', '33333333', 2, '10101010', '230000')
	,('Jorge', '40404040', '44444444', 2, '20202020', '420000')
	,('Renato', '50505050', '55555555', 3, '20202020', '130000')
	GO

	SELECT * FROM Departamento

	SELECT * FROM Empregados

	SELECT Nome AS NOME, SUBSTRING(RG,1,3) + '.' + SUBSTRING(RG,1,3) + '-' + SUBSTRING(RG,3,2) AS RG, 
	SUBSTRING(CPF,1,4) + '-' + SUBSTRING(CPF,1,4) AS CPF FROM Empregados
	ORDER BY CPF;