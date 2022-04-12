CREATE DATABASE BD_12
GO

USE BD_12
GO

-- Criando as tabelas

CREATE TABLE tbCurso(
codCurso INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
nomeCurso NVARCHAR (50) NOT NULL,
cargahorariaCurso INT NOT NULL,
valorCurso REAL NOT NULL,
)

CREATE TABLE tbTurma(
codTurma INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
nomeTurma NVARCHAR (50) NOT NULL,
codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso) NOT NULL,
horarioTurma DATETIME NOT NULL,
)

CREATE TABLE tbAluno(
codAluno INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
nomeAluno NVARCHAR (50) NOT NULL,
dataNascAluno DATETIME NOT NULL,
rgAluno NVARCHAR (20) NOT NULL,
naturalidadeAluno NVARCHAR (5) NOT NULL,
)

CREATE TABLE tbMatricula(
codMatricula INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
dataMatricula NVARCHAR (20) NOT NULL,
codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno) NOT NULL,
codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma) NOT NULL,
)

-- Inserindo dados

INSERT INTO tbCurso(nomeCurso, cargahorariaCurso, valorCurso)
VALUES ('Inglês', 2000, 356.00)
,('Alemão', 3000, 478.00)
,('Espanhol', 4000, 500.00)
GO

INSERT INTO tbTurma (nomeTurma, codCurso, horarioTurma)
VALUES ('1A', 1, '1900-01-01 12:00:00')
,('1C', 3, '1900-01-01 18:00:00')
,('1B', 1, '1900-01-01 18:00:00')
,('1AA', 2, '1900-01-01 19:00:00')
GO

INSERT INTO tbAluno (nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES('Paulo Santos', '2000-03-10 00:00:00', '82.282.122-0', 'SP')
,('Maria da Gloria', '1900-10-03 00:00:00', '45.233.123-0', 'SP')
,('Pedro Nogueira da Silva', '1998-04-04 00:00:00', '23.533.211-9', 'SP')
,('Gilson Barros Silva', '1995-09-09 00:00:00', '34.221.111-x', 'PE')
,('Mariana Barbosa Santos', '2001-10-10 00:00:00', '54.222.122-9', 'RJ')
,('Alessandro Pereira', '2003-10-11 00:00:00', '24.402.454-9', 'ES')
,('Aline Melo', '2001-10-08 00:00:00', '88.365.012-3', 'RJ')
GO

INSERT INTO tbMatricula (dataMatricula, codAluno, codTurma)
VALUES('2015-10-03 00:00:00', 1, 1)
,('2014-05-04 00:00:00', 2, 1)
,('2014-05-04 00:00:00', 2, 4)
,('2012-05-03 00:00:00', 3, 2)
,('2016-03-03 00:00:00', 1, 3)
,('2015-05-07 00:00:00', 4, 2)
,('2015-07-05 00:00:00', 4, 3)
GO

-- Exercício 01
SELECT dataMatricula, COUNT (nomeAluno) AS TotalAlunos FROM tbAluno 
INNER JOIN tbMatricula on tbAluno.codAluno = tbMatricula.codAluno
WHERE dataMatricula BETWEEN '2016-03-01 00:00:00' AND '2016-03-30'
GROUP BY dataMatricula, nomeAluno

-- Exercício 02
SELECT nomeAluno AS ALUNOS, nomeTurma AS TURMA FROM tbTurma
INNER JOIN tbAluno on tbTurma.codTurma = tbAluno.codAluno
ORDER BY nomeAluno ASC

-- Exercício 03
SELECT nomeCurso AS NOME, horarioTurma AS HORÁRIO_AULA FROM tbTurma
INNER JOIN tbCurso on tbTurma.codCurso = tbCurso.codCurso

-- Exercício 04 
SELECT naturalidadeAluno AS UF, COUNT(naturalidadeAluno) AS QUANTIDADE FROM tbAluno
GROUP BY naturalidadeAluno

-- Exercício 05
SELECT SUBSTRING(dataMatricula, 9,2) + ' / ' + SUBSTRING(dataMatricula, 6,2) + ' / ' + SUBSTRING(dataMatricula, 1,4)
AS DATA_MATRICULA, nomeAluno AS ALUNO FROM tbAluno INNER JOIN tbMatricula on tbAluno.codAluno = tbMatricula.codMatricula
ORDER BY nomeAluno ASC

-- Exercício 06
SELECT nomeAluno, nomeCurso FROM tbCurso
INNER JOIN tbAluno on tbAluno.codAluno = tbCurso.codCurso
INNER JOIN tbMatricula on tbMatricula.codAluno = tbAluno.codAluno
WHERE nomeAluno LIKE 'A%' AND nomeCurso = 'Inglês'
-- Nenhum aluno com nome que inicia com a letra A está matriculado em Inglês

-- Exercício 07
SELECT SUBSTRING(dataMatricula, 9,2) + ' / ' + SUBSTRING(dataMatricula, 6,2) + ' / ' + SUBSTRING(dataMatricula, 1,4) AS DATA_MATRICULA,
COUNT(dataMatricula) AS QUANTIDADE FROM tbMatricula WHERE dataMatricula BETWEEN '2016-01-01 00:00:00' AND '2016-12-31'
GROUP BY dataMatricula

-- Exercício 08
SELECT nomeAluno AS NOME_ALUNO, nomeCurso AS NOME_CURSO FROM tbCurso
INNER JOIN tbAluno on tbAluno.codAluno = tbCurso.codCurso

-- Exercício 09
SELECT nomeCurso AS NOME_CURSO, COUNT(nomeCurso) AS QUANTIDADE FROM tbCurso
INNER JOIN tbTurma on tbTurma.codCurso = tbCurso.codCurso
INNER JOIN tbMatricula on tbMatricula.codTurma = tbTurma.codCurso
GROUP BY nomeCurso

-- Exercício 10
SELECT nomeTurma AS NOME_TURMA, COUNT(nomeTurma) AS QUANTIDADE FROM tbTurma
INNER JOIN tbCurso on tbCurso.codCurso = tbTurma.codTurma
INNER JOIN tbMatricula on tbMatricula.codTurma = tbTurma.codCurso
GROUP BY nomeTurma
