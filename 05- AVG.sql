CREATE DATABASE BD_05
GO

USE BD_05
GO 

CREATE TABLE INFO (
Nome NVARCHAR (50)		    NOT NULL,
Profiss�o NVARCHAR (50)		NOT NULL,
Nascimento NVARCHAR (10)    NOT NULL,
Sexo NVARCHAR (01)			NOT NULL,
Peso REAL					NOT NULL,
Altura REAL					NOT NULL,
Pa�s NVARCHAR (50)			NOT NULL,
)
GO

INSERT INTO INFO(Nome, Profiss�o, Nascimento, Sexo, Peso, Altura, Pa�s)
VALUES ('Caio', 'Professor', '1984 01 02', 'M', 78.50, 1.83, 'Brasil')
,('Felipe', 'Empres�rio', '1984 01 02', 'M', 78.50, 1.83, 'Afeganist�o')
,('Alfredo', 'Juiz', '1992 03 04', 'M', 85.30, 1.86, 'Brasil')
,('Alessandra', 'Diretora', '1985 05 03', 'F', 73.40, 1.76, 'Brasil')
,('M�rcio', 'Professor', '1984 01 02', 'M', 78.50, 1.83, 'Brasil')
,('Pablo', 'Juiz', '1992 03 04', 'M', 82.50, 1.85, 'Angola')
,('Andiara', 'Professora', '1985 05 03', 'F', 75.30, 1.76, 'Brasil')
,('Gustavo', 'Marceneiro', '1990 06 04', 'M', 80.30, 1.90, 'Inglaterra')
,('Jos� Fernando', 'Professor', '1984 01 02', 'M', 78.50, 1.83, 'Brasil')
,('Augusto', 'Contador', '1992 03 04', 'M', 82.50, 1.85, 'Canad�')
,('Luciana', 'Advogada', '1985 05 03', 'F', 75.30, 1.76, 'Brasil')
,('Celso', 'Professor', '1990 06 04', 'M', 80.30, 1.90, 'France')
,('Paulo', 'Padeiro', '1945 03 04', 'M', 99.90, 1.87, 'Sui�a')
GO

SELECT * FROM INFO

SELECT AVG(Peso) AS PESO FROM INFO

SELECT AVG(Altura) AS ALTURA FROM INFO

SELECT COUNT(Pa�s) AS PESSOAS FROM INFO WHERE (Pa�s='Brasil')

SELECT Profiss�o, Pa�s FROM INFO WHERE (Profiss�o = 'Professor') AND (Pa�s= 'Brasil')

SELECT Nome AS 'NOME', SUBSTRING(Nascimento, 9,10) + '/' + SUBSTRING(Nascimento, 6,3) + '/' + SUBSTRING(Nascimento, 1,5) AS 'NASCIMENTO',Profiss�o  AS 'PROFISS�O' FROM INFO