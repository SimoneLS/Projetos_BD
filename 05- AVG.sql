CREATE DATABASE BD_05
GO

USE BD_05
GO 

CREATE TABLE INFO (
Nome NVARCHAR (50)		    NOT NULL,
Profissão NVARCHAR (50)		NOT NULL,
Nascimento NVARCHAR (10)    NOT NULL,
Sexo NVARCHAR (01)			NOT NULL,
Peso REAL					NOT NULL,
Altura REAL					NOT NULL,
País NVARCHAR (50)			NOT NULL,
)
GO

INSERT INTO INFO(Nome, Profissão, Nascimento, Sexo, Peso, Altura, País)
VALUES ('Caio', 'Professor', '1984 01 02', 'M', 78.50, 1.83, 'Brasil')
,('Felipe', 'Empresário', '1984 01 02', 'M', 78.50, 1.83, 'Afeganistão')
,('Alfredo', 'Juiz', '1992 03 04', 'M', 85.30, 1.86, 'Brasil')
,('Alessandra', 'Diretora', '1985 05 03', 'F', 73.40, 1.76, 'Brasil')
,('Márcio', 'Professor', '1984 01 02', 'M', 78.50, 1.83, 'Brasil')
,('Pablo', 'Juiz', '1992 03 04', 'M', 82.50, 1.85, 'Angola')
,('Andiara', 'Professora', '1985 05 03', 'F', 75.30, 1.76, 'Brasil')
,('Gustavo', 'Marceneiro', '1990 06 04', 'M', 80.30, 1.90, 'Inglaterra')
,('José Fernando', 'Professor', '1984 01 02', 'M', 78.50, 1.83, 'Brasil')
,('Augusto', 'Contador', '1992 03 04', 'M', 82.50, 1.85, 'Canadá')
,('Luciana', 'Advogada', '1985 05 03', 'F', 75.30, 1.76, 'Brasil')
,('Celso', 'Professor', '1990 06 04', 'M', 80.30, 1.90, 'France')
,('Paulo', 'Padeiro', '1945 03 04', 'M', 99.90, 1.87, 'Suiça')
GO

SELECT * FROM INFO

SELECT AVG(Peso) AS PESO FROM INFO

SELECT AVG(Altura) AS ALTURA FROM INFO

SELECT COUNT(País) AS PESSOAS FROM INFO WHERE (País='Brasil')

SELECT Profissão, País FROM INFO WHERE (Profissão = 'Professor') AND (País= 'Brasil')

SELECT Nome AS 'NOME', SUBSTRING(Nascimento, 9,10) + '/' + SUBSTRING(Nascimento, 6,3) + '/' + SUBSTRING(Nascimento, 1,5) AS 'NASCIMENTO',Profissão  AS 'PROFISSÃO' FROM INFO