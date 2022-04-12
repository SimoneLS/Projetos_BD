CREATE DATABASE BD_01
GO

USE BD_01
GO

--Tabela, exercicio 1

CREATE TABLE CARRO (
	PLACA NVARCHAR (8) PRIMARY KEY		NOT NULL,
	MARCA NVARCHAR (100)				NOT NULL,
	MODELO NVARCHAR (100)				NOT NULL,
	COR NVARCHAR (100)				    NOT NULL,
	ANO INT CHECK (ANO>1000)			NOT NULL,
	)
	GO

CREATE TABLE CLIENTE (
	NOME NVARCHAR (100) PRIMARY KEY					       NOT NULL,
	LOGRADOURO NVARCHAR (100)						       NOT NULL,
	Nº INT CHECK(Nº>0)								       NOT NULL,
	BAIRRO NVARCHAR (100)								   NOT NULL,
	TELEFONE NVARCHAR (11)								   NOT NULL,
	CARRO NVARCHAR (8) FOREIGN KEY REFERENCES CARRO (PLACA)
)
GO

INSERT INTO CARRO(PLACA, MARCA, MODELO, COR, ANO)
VALUES ('AFT-9087', 'VW', 'Gol', 'Preto', 2007)
,('DXO-9876', 'Ford', 'Ka', 'Azul', 2000)
,('EGT-4631', 'Renault', 'Clio', 'Verde', 2004)
,('LKM-7380', 'Fiat', 'Palio', 'Prata', 1997)
,('BCD-7521', 'Ford', 'Fiesta', 'Preto', 1999)
GO
SELECT * FROM CARRO


INSERT INTO CLIENTE(NOME, LOGRADOURO, Nº, BAIRRO, TELEFONE, CARRO)
VALUES ('João Alves', 'R. Pereira Barreto', 1258, 'Jd. Oliveiras', '2154-968', 'DXO-9876')
,('Ana Maria', 'R. 7 de Setembro', 259, 'Centro', '9658-8541', 'LKM-7380') 
,('Clara Oliveira', 'AV. Nações Unidas', 10254, 'Pinheiros', '2458-9658', 'EGT-4631')
,('José Simões', 'R. XV de Novembro', 36, 'Água Branca', '7895-2459', 'BDC-7521')
,('Paula Rocha', 'R. Anhaia', 548, 'Barra Funda', '6958-2548', 'AFT-9087')
GO
SELECT*FROM CLIENTE

UPDATE CARRO
SET ANO = 2009
WHERE PLACA = 'AFT-9087'

UPDATE CLIENTE
SET TELEFONE = '9658-8541'
WHERE NOME = 'Ana Maria'

SELECT Nome,Logradouro,Telefone FROM Cliente
SELECT Marca,Modelo,Cor,Ano FROM Carro

SELECT Nome FROM Cliente
SELECT Modelo,Placa FROM Carro
Where Ano>=2000

