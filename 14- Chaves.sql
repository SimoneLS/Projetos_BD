CREATE DATABASE BD_14
GO

USE BD_14
GO

-- Atividade de chave estrangeira e chave primária

CREATE TABLE tbProfessor (
codProfessor INT PRIMARY KEY,
nomeProfessor NVARCHAR (50),
)
GO

CREATE TABLE tbFoneProfessor (
codFoneProfessor INT PRIMARY KEY,
numFoneProfessor INT,
codProfessor INT FOREIGN KEY REFERENCES tbProfessor(codProfessor),
)
GO

CREATE TABLE tbHorario (
codHorario INT PRIMARY KEY,
descHorario INT,
) 
GO

CREATE TABLE tbModalidade (
codModalidade INT PRIMARY KEY,
nomeModalidade NVARCHAR (20),
codProfessor INT FOREIGN KEY REFERENCES tbProfessor(codProfessor),
codHorario  INT FOREIGN KEY REFERENCES tbHorario(codHorario),
) 
GO

CREATE TABLE tbAluno (
codAluno INT PRIMARY KEY,
nomeAluno NVARCHAR (50),
rgAluno INT,
cpfAluno INT,
)
GO

CREATE TABLE tbTipoPlano (
codTipoPlano INT PRIMARY KEY,
descTipoPlano INT,
)
GO

CREATE TABLE tbMatricula (
codMatricula INT PRIMARY KEY,
codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno),
codTipoPlano INT FOREIGN KEY REFERENCES tbTipoPlano(codTipoPlano),
codModalidade INT FOREIGN KEY REFERENCES tbModalidade(codModalidade),
dataMatricula DATE,
)
GO

CREATE TABLE tbFoneAluno (
codFoneAluno INT PRIMARY KEY,
numFoneAluno REAL,
codAluno  INT FOREIGN KEY REFERENCES tbAluno(codAluno),
)
GO

