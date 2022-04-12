CREATE DATABASE bd_02
GO

USE bd_02
GO

-- Tabela 01, atividade de comandos DQL

CREATE TABLE Funcionários(
	Nome NVARCHAR (100) NOT NULL,
	Cargo NVARCHAR (50) NOT NULL,
	Nascimento NVARCHAR (8) NOT NULL,
	Presença NVARCHAR (10) NOT NULL,
	Salario NVARCHAR (10) NOT NULL,
	Avaliação NVARCHAR (10) NOT NULL,
	)
	GO

	INSERT INTO Funcionários(Nome, Cargo, Nascimento, Presença, Salario, Avaliação)
	VALUES ('João Maria de Jesus', 'Administrativo', '07/23/78', '80.2', '10600', '8,7')
	,('Felipe dos Santos', 'Técnico', '11/02/88', '90', '18200', '5,6')
	,('Maria José Silva', 'Técnico', '12/23/90', '87.3', '15000', '4,5')
	,('José Silva', 'Administrativo', '12/23/78', '60', '16200', '9,3')
	,('Mario Antunes', 'RH', '02/11/77', '54.2', '8000', '7,2')
	,('Paulo Roberto Silva', 'RH', '10/13/76', '87.2333', '8900', '9,9') 
	,('Teresa Jardim', 'RH', '01/13/80', '100', '4000', '7,7')
	,('Roberto Carlos Alves', 'RH', '12/10/83', '23.64', '4000', '7,7')
	,('Paulo Jardim', 'RH', '06/28/45', '34.89', '30500', '10')
	,('Maria Eduarda Carvalho da Rosa', 'Administrativo', '08/30/70', '90.78', '9000', '6,6')
	,('Pedro Henrique Teixeira', 'Técnico', '12/23/78', '100', '7400', '7,2')
	GO

	SELECT * FROM Funcionários
	
	SELECT Nome AS NOME, Presença + '%' AS PRESENÇA, 'R$ ' + Salario AS SALARIO FROM Funcionários
	ORDER BY PRESENÇA DESC;