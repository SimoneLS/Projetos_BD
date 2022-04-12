CREATE TABLE BD_08
GO

USE BD_08
GO

CREATE TABLE GASTOS (
TIPO VARCHAR (20) NOT NULL,
VALOR REAL NOT NULL,
PAGAMENTO VARCHAR (20) NOT NULL,
)
GO

INSERT INTO GASTOS(TIPO, VALOR, PAGAMENTO)
VALUES('mercado', 85.00, 'cartão')
,('remédio', 48.00, 'dinheiro')
,('celular', 149.00, 'cartão')
,('lanches', 35.00, 'cheque')
,('livros', 65.00, 'cheque')
,('passagem', 430.00, 'cartão')
,('aluguel', 650.00, 'dinheiro')
,('teatro', 50.00, 'cartão')
,('roupas', 220.00, 'cartão')
GO

ALTER TABLE GASTOS
ADD ID REAL PRIMARY KEY NULL
SELECT * FROM GASTOS

SELECT TIPO, VALOR, PAGAMENTO FROM GASTOS WHERE PAGAMENTO = 'cartão'

UPDATE GASTOS
SET VALOR = 250.00
WHERE TIPO = 'roupas'

SELECT TIPO, CAST(VALOR AS int) AS VALOR, PAGAMENTO FROM GASTOS
WHERE PAGAMENTO > 100.00

