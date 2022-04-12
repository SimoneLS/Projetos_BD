CREATE TABLE BD_07
GO 

USE BD_07
GO

-- Atividade 2� bimestre! Lista de exerc�cio 02

-- Adicionei a tabela de Filiados do PTC e coloquei 30 comandos com select.

SELECT * FROM Filiados_PTC

SELECT * FROM Filiados_PTC WHERE [NOME DO FILIADO] LIKE 'ANTONIO%';

SELECT * FROM Filiados_PTC WHERE [NOME DO FILIADO] LIKE '%SEBASTI�O%';

SELECT * FROM Filiados_PTC WHERE [NOME DO FILIADO] LIKE 'OS%';

SELECT * FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] = 'S�O F�LIX';

SELECT * FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] = 'INHAMBUPE';

SELECT [NOME DO MUNICIPIO] FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] LIKE 'SANTA%';

SELECT [NOME DO MUNICIPIO] FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] LIKE 'E%';

SELECT [NOME DO MUNICIPIO] FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] LIKE '%CRUZ%';

SELECT [NOME DO MUNICIPIO] FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] LIKE '%DE%';

SELECT [NOME DO FILIADO] AS 'Nome do Filiado', CONVERT(VARCHAR(10), [DATA DA FILIACAO], 103) AS 'Data do Filia��o' FROM Filiados_PTC 
WHERE [DATA DA FILIACAO] BETWEEN '01-01-1990' AND '01-01-2000';

SELECT [NOME DO FILIADO] AS 'Nome do Filiado', CONVERT(VARCHAR(10), [DATA DA FILIACAO], 103) AS 'Data do Filia��o' FROM Filiados_PTC 
WHERE [DATA DA FILIACAO] BETWEEN '02-01-2010' AND '01-03-2010';
 
SELECT [NOME DO FILIADO] AS 'Nome do Filiado', CONVERT(VARCHAR(10), [DATA DA FILIACAO], 103) AS 'Data do Filia��o' FROM Filiados_PTC 
WHERE [DATA DA FILIACAO] BETWEEN '01-07-2007' AND '01-12-2007';

SELECT * FROM Filiados_PTC WHERE [SITUACAO DO REGISTRO] = 'REGULAR';

SELECT * FROM Filiados_PTC WHERE [ZONA ELEITORAL] = '203';

SELECT * FROM Filiados_PTC WHERE [ZONA ELEITORAL] = '180';

SELECT * FROM Filiados_PTC WHERE [ZONA ELEITORAL] = '199';

SELECT MAX([ZONA ELEITORAL]) AS [�LTIMA ZONA ELEITORAL] FROM Filiados_PTC

SELECT MIN([ZONA ELEITORAL]) AS [PRIMEIRA ZONA ELEITORAL] FROM Filiados_PTC

UPDATE Filiados_PTC SET [SIGLA DO PARTIDO] = 'PT' WHERE [CODIGO DO MUNICIPIO] = '36471';
UPDATE Filiados_PTC SET [NOME DO PARTIDO] = 'PARTIDO DOS TRABALHADORES' WHERE [CODIGO DO MUNICIPIO] = '36471';
SELECT * FROM Filiados_PTC WHERE [CODIGO DO MUNICIPIO] = '36471';

UPDATE Filiados_PTC SET [SIGLA DO PARTIDO] = 'PMDB' WHERE [CODIGO DO MUNICIPIO] = '38490';
UPDATE Filiados_PTC SET [NOME DO PARTIDO] = 'PARTIDO DO MOVIMENTO DEMOCR�TICO BR' WHERE [CODIGO DO MUNICIPIO] = '38490';
SELECT * FROM Filiados_PTC WHERE [CODIGO DO MUNICIPIO] = '38490';

UPDATE Filiados_PTC SET [SIGLA DO PARTIDO] = 'PC' WHERE [NOME DO MUNICIPIO] = 'SANTAN�POLIS';
UPDATE Filiados_PTC SET [NOME DO PARTIDO] = 'PARTIDO COMUNISTA DO BRASIL' WHERE [NOME DO MUNICIPIO] = 'SANTAN�POLIS';
SELECT * FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] = 'SANTAN�POLIS';

UPDATE Filiados_PTC SET [SIGLA DO PARTIDO] = 'PV' WHERE [NOME DO MUNICIPIO] = 'S�O F�LIX';
UPDATE Filiados_PTC SET [NOME DO PARTIDO] = 'PARTIDO VERDE DOS FILIADOS' WHERE [NOME DO MUNICIPIO] = 'S�O F�LIX';
SELECT * FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] = 'S�O F�LIX';

UPDATE Filiados_PTC SET [SIGLA DO PARTIDO] = 'PV' WHERE [NOME DO MUNICIPIO] = 'S�O F�LIX';
UPDATE Filiados_PTC SET [NOME DO PARTIDO] = 'PARTIDO VERDE DOS FILIADOS' WHERE [NOME DO MUNICIPIO] = 'S�O F�LIX';
SELECT * FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] = 'S�O F�LIX';

UPDATE Filiados_PTC SET [SIGLA DO PARTIDO] = 'PSDB' WHERE [NOME DO MUNICIPIO] = 'ENCRUZILHADA';
UPDATE Filiados_PTC SET [NOME DO PARTIDO] = 'PARTIDO DA SOCIAL DEMOCR�CIA BRASILEIRA' WHERE [NOME DO MUNICIPIO] = 'ENCRUZILHADA';
SELECT * FROM Filiados_PTC WHERE [NOME DO MUNICIPIO] = 'ENCRUZILHADA';

UPDATE Filiados_PTC SET [NOME DO FILIADO] = 'JORGE LUIS MAGALH�ES DOS SANTOS' WHERE [NOME DO FILIADO] = 'JORGE LUIS FERREIRA DOS SANTOS';
SELECT * FROM Filiados_PTC WHERE [NOME DO FILIADO] = 'JORGE LUIS MAGALH�ES DOS SANTOS';

UPDATE Filiados_PTC SET [NOME DO FILIADO] = 'RENATA XAVIER RODRIGUES' WHERE [NOME DO FILIADO] = 'BENTA XAVIER RODRIGUES';
SELECT * FROM Filiados_PTC WHERE [NOME DO FILIADO] = 'RENATA XAVIER RODRIGUES';

UPDATE Filiados_PTC SET [NOME DO FILIADO] = 'NOEL LEITE DA SILVA' WHERE [NOME DO FILIADO] = 'NOE LEITE DA SILVA';
SELECT * FROM Filiados_PTC WHERE [NOME DO FILIADO] = 'NOEL LEITE DA SILVA';

UPDATE Filiados_PTC SET [SITUACAO DO REGISTRO] = 'REGULAR' WHERE [NOME DO FILIADO] = 'JOSILENE ANDRADE DE SOUZA';
SELECT * FROM Filiados_PTC WHERE [NOME DO FILIADO] = 'JOSILENE ANDRADE DE SOUZA';

UPDATE Filiados_PTC SET [SITUACAO DO REGISTRO] = 'REGULAR' WHERE [NOME DO FILIADO] = 'ELIEL ALMEIDA SILVA';
SELECT * FROM Filiados_PTC WHERE [NOME DO FILIADO] = 'ELIEL ALMEIDA SILVA';

UPDATE Filiados_PTC SET [SITUACAO DO REGISTRO] = 'DESFILIADO' WHERE [NOME DO FILIADO] = 'ALINE DE SOUZA';
SELECT * FROM Filiados_PTC WHERE [NOME DO FILIADO] = 'ALINE DE SOUZA';

ALTER TABLE Filiados_PTC ADD GENERO VARCHAR;
SELECT [NOME DO FILIADO], GENERO AS G�NERO FROM Filiados_PTC