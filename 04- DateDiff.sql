CREATE DATABASE BD_04
GO

USE BD_04
GO

CREATE TABLE CARRO(
Marca NVARCHAR (50)       NOT NULL,
Modelo NVARCHAR (50)	  NOT NULL,
Ano NVARCHAR (10)	      NOT NULL,
Cor NVARCHAR (50)	      NOT NULL,
Valor REAL				  NOT NULL,
Portas NVARCHAR (10)      NOT NULL,
Combustivel NVARCHAR (20) NOT NULL,
)
GO

INSERT INTO CARRO(Marca, Modelo, Ano, Cor, Valor, Portas, Combustivel)
VALUES ('Fiat', 'Uno', '2010', 'Branco', 30600.00, '2', 'flex')
,('Fiat', 'Palio', '2010', 'Prata', 35500.00, '2', 'flex')
,('Fiat', 'Uno', '2008', 'Prata', 29600.00, '4', 'GNV')
,('Fiat', 'Stilo', '2010', 'Verde', 42600.00, '4', 'flex')
,('Fiat', 'Uno', '2008', 'Preto', 44900.00, '4', 'flex')
,('Fiat', 'Punto', '2009', 'Branco', 25500.00, '4', 'flex')
,('Fiat', 'Uno', '2008', 'Branco', 23000.00, '2', 'flex')
,('Fiat', 'Palio', '2007', 'Prata', 26000.00, '2', 'flex')
GO

SELECT * FROM CARRO

SELECT (Valor*10/100+Valor) AS 'NOVO PREÇO' FROM CARRO

SELECT Modelo FROM CARRO WHERE (Modelo = 'Uno')

SELECT Portas, Modelo FROM CARRO WHERE (Portas = '4') AND (Modelo = 'Palio')

SELECT DATEDIFF (DAY, '05/01/2010', '05/10/2021') AS diferencaEmDias
SELECT DATEDIFF (MONTH, '05/01/2010', '05/10/2021') AS diferencaEmMeses
SELECT DATEDIFF (YEAR, '05/01/2010', '05/10/2021') AS diferencaEmAnos