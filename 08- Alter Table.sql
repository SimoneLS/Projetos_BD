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
VALUES('mercado', 85.00, 'cart�o')
,('rem�dio', 48.00, 'dinheiro')
,('celular', 149.00, 'cart�o')
,('lanches', 35.00, 'cheque')
,('livros', 65.00, 'cheque')
,('passagem', 430.00, 'cart�o')
,('aluguel', 650.00, 'dinheiro')
,('teatro', 50.00, 'cart�o')
,('roupas', 220.00, 'cart�o')
GO

ALTER TABLE GASTOS
ADD ID REAL PRIMARY KEY NULL
SELECT * FROM GASTOS

SELECT TIPO, VALOR, PAGAMENTO FROM GASTOS WHERE PAGAMENTO = 'cart�o'

UPDATE GASTOS
SET VALOR = 250.00
WHERE TIPO = 'roupas'

SELECT TIPO, CAST(VALOR AS int) AS VALOR, PAGAMENTO FROM GASTOS
WHERE PAGAMENTO > 100.00

