CREATE DATABADE BD_09
GO

USE BD_09
GO

CREATE TABLE Registro (
Vendedor NVARCHAR (50)		NOT NULL,
DataVenda REAL				NOT NULL,
Produto NVARCHAR (20)		NOT NULL,
Preço REAL					NOT NULL,
Quantidade REAL				NOT NULL,
VendaTotal REAL				NOT NULL,
)
GO

INSERT INTO Registro (Vendedor,DataVenda, Produto, Preço, Quantidade, VendaTotal)
VALUES ('Luciano', 05012015, 'Produto A', 50.00, 1, 50.00)
,('Rafael', 05012015, 'Produto A', 50.00, 2, 100.00)
,('Renata', 05012015, 'Produto A', 50.00, 3, 150.00)
,('Luciano', 05012015, 'Produto B', 30.00, 2, 60.00)
,('Rafael', 05012015, 'Produto B', 30.00, 5, 150.00)
,('Renata', 05012015, 'Produto B', 30.00, 4, 120.00)
,('Luciano', 06012015, 'Produto A', 50.00, 6, 300.00)
,('Rafael', 06012015, 'Produto A', 50.00, 2, 100.00)
,('Renata', 06012015, 'Produto A', 50.00, 9, 450.00)
,('Luciano', 06012015, 'Produto B', 30.00, 6, 180.00)
,('Rafel', 06012015, 'Produto B', 30.00, 8, 240.00)
,('Renata', 06012015, 'Produto B', 30.00, 4, 120.00)
GO

SELECT * FROM Registro

SELECT COUNT (Quantidade) AS 'QUANTIDADE DE VENDAS' FROM Registro WHERE(DataVenda='05012015')

SELECT AVG (VendaTotal) AS 'Valor Total de Vendas' FROM Registro

SELECT DATEDIFF (DAY, '05/01/2015', '20/03/2021') AS diferencaEmDias
SELECT DATEDIFF (MONTH, '05/01/2015', '20/03/2021') AS diferencaEmMeses
SELECT DATEDIFF (YEAR, '05/01/2015', '20/03/2021') AS diferencaEmAnos

