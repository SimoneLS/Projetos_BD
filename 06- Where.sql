USE BD_06
GO

CREATE TABLE Funcionarios(
Nome VARCHAR(30) PRIMARY KEY NOT NULL,
Cargo VARCHAR (15)			 NOT NULL,
Nascimento VARCHAR(10)		 NOT NULL,
Taxa_Presenca VARCHAR(7)	 NOT NULL,
Avaliacao VARCHAR (15)		 NOT NULL,
Salario_Base MONEY			 NOT NULL,
);

ALTER TABLE Funcionarios
ADD telefone VARCHAR (10) NULL

INSERT INTO Funcionarios(Nome,Cargo,Nascimento,Taxa_Presenca,Salario_Base,Avaliacao)
VALUES ('João Maria de Jesus','Administrativo','07/23/78','80.2','10800','08,7')
    	,('Felipe dos Santos','Técnico','11/02/88','90','18200','05,6')
		,('Maria José Silva','Técnico','12/23/90','87.3','15000','04,5')
		,('José Silva','Administrativo','12/23/78','60','16200','09,3')
		,('Mário Antunes','RH','02/11/77','54.2','8000','07,2')
		,('Paulo Roberto Silva','RH','10/13/76','87.2333','8900','09,9')
		,('Teresa Jardim','RH','01/13/80','100','4000','07,7')
		,('Roberto Carlos Alves','RH','12/10/83','23.64','4000','07,7')
		,('Paulo Jardim','RH','06/28/45','34.89','30500','10,0')
		,('Maria Eduarda Carvalho da Rosa','Administrativo','08/30/70','90.78','9000','06,6')
		,('Pedro Henrique','Técnico','12/23/78','100','7400','07,2')

		
SELECT * FROM Funcionarios

SELECT Nome FROM Funcionarios
Where Avaliacao < '06,0'

SELECT * FROM Funcionarios
Where (Avaliacao > '07,0') and (Cargo = 'RH')