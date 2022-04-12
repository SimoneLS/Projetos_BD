CREATE DATABASE bdLivraria 
USE bdLivraria

CREATE TABLE tbAutor( 
codAutor INT PRIMARY KEY IDENTITY (1,1)
,nomeAutor VARCHAR (45) 
);

CREATE TABLE tbEditora(
codEditora INT PRIMARY KEY IDENTITY (1,1)
,nomeEditora VARCHAR (45)
);

CREATE TABLE tbGenero(
codGenero INT PRIMARY KEY IDENTITY (1,1)
,nomeGenero VARCHAR (45)
);

CREATE TABLE tbLivro(
codLivro INT PRIMARY KEY IDENTITY (1,1)
,nomeLivro VARCHAR (45)
,numPaginas INT 
,codGenero INT FOREIGN KEY (codGenero) REFERENCES tbGenero 
,codAutor INT FOREIGN KEY (codAutor) REFERENCES tbAutor
,codEditora INT FOREIGN KEY (codEditora) REFERENCES tbEditora
);

INSERT INTO tbAutor VALUES
 ('Chico Buarque')
,('Jorge Amado')
,('J.K. Rowling')
,('William Shakespeare')
,('Monteiro Lobato')
,('Cora Coralina')
,('Clarice Lispector');

SELECT * FROM tbAutor

INSERT INTO tbEditora VALUES 
 ('Melhoramentos')
,('Globo')
,('Ática')
,('Companhia das Letras')
,('Abril');

SELECT * FROM tbEditora

INSERT INTO tbGenero VALUES 
 ('Ficção')
,('Romance')
,('Tragédia');

SELECT * FROM tbGenero

INSERT INTO tbLivro VALUES
 ('Budapeste', 176, 2, 4, 1)
,('O Bicho-da-Seda', 454, 2, 5, 3)
,('Gabriela. Cravo e Canela', 214, 1, 2, 2)
,('Reinações de Narizinho', 143, 2, 2, 5)
,('Romeu e Julieta', 421, 1, 3, 4)
,('O Irmão Alemão', 478, 1, 4, 1)
,('Terras do Sem-Fim', 125, 1, 3, 2)
,('Animais Fantásticos e Onde Habitam', 267, 2, 4, 3);

SELECT * FROM tbLivro

-- Exercício 01
SELECT nomeLivro 'Nome do livro', numPaginas 'Nº de páginas' FROM tbLivro nomeLivro
WHERE numPaginas = (SELECT MAX(numPaginas) FROM tbLivro)

-- Exercício 02
SELECT nomeLivro 'Nome do livro', numPaginas 'Nº de páginas' FROM tbLivro nomeLivro
WHERE numPaginas = (SELECT MIN(numPaginas) FROM tbLivro)

-- Exercício 03
SELECT AVG (numPaginas) AS 'Média de páginas'
FROM tbLivro

-- Exercício 04
SELECT SUM(numPaginas) AS 'Soma das páginas'
FROM tbLivro WHERE codEditora = '01'

--Exercício 05
SELECT SUM (numPaginas) AS 'Soma' FROM tbLivro
WHERE nomeLivro LIKE '%a'

--Exercício 06
SELECT AVG (numPaginas) AS 'Média de páginas'
FROM tbLivro WHERE codAutor = 3

--Exercício 07
SELECT COUNT (numPaginas) AS 'Soma' FROM tbLivro
WHERE codAutor = 4

--Exercício 08
SELECT SUM (numPaginas) AS 'Soma com ESTRELA' FROM tbLivro
WHERE nomeLivro LIKE '%ESTRELA%'

--Exercício 09
SELECT COUNT (numPaginas) AS 'Quantidade' FROM tbLivro
WHERE nomeLivro LIKE '%POEMA%'

--Exercício 10
SELECT COUNT(codLivro) AS 'Quantidade de Livros', nomeGenero FROM tbGenero LEFT JOIN tbLivro 
ON tbLivro.codGenero = tbGenero.codGenero
GROUP BY nomeGenero

--Exercício 11
SELECT nomeAutor AS 'Nome do Autor', SUM(numPaginas) AS 'Soma das paginas' 
FROM tbAutor INNER JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
GROUP BY nomeAutor

--Exercício 12
SELECT AVG(numPaginas) AS 'Média das páginas', nomeAutor AS 'Nome Autores' FROM tbLivro
INNER JOIN tbAutor on tbAutor.codAutor = tbLivro.codLivro
GROUP BY nomeAutor
ORDER BY nomeAutor DESC

--Exercício 13
SELECT nomeEditora AS 'Nome da editora', COUNT(codLivro) AS 'Quantidade de Livros'
FROM tbEditora INNER JOIN tbLivro ON tbLivro.codEditora = tbEditora.codEditora
GROUP BY nomeEditora 
ORDER BY nomeEditora DESC

--Exercício 14
SELECT nomeAutor AS 'Nome do Autor', SUM(numPaginas) AS 'Soma das páginas' 
FROM tbLivro RIGHT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeAutor LIKE '%C%'
GROUP BY nomeAutor

--Exercício 15
SELECT nomeAutor AS 'Nome do Autor', COUNT(codLivro) AS 'Quantidade de Livro' 
FROM tbAutor LEFT JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeAutor LIKE '%MACHADO DE ASSIS%' OR nomeAutor LIKE '%CORA CORALINA%' OR nomeAutor LIKE '%CLARICE LISPECTOR%'
GROUP BY nomeAutor

--Exercício 16
SELECT nomeEditora AS 'Nome da Editora', SUM(numPaginas) AS 'Soma das páginas' 
FROM tbEditora INNER JOIN tbLivro ON tbLivro.codEditora = tbEditora.codEditora
WHERE numPaginas BETWEEN 200 AND 500
GROUP BY nomeEditora

--Exercício 17
SELECT nomeLivro AS 'Nome do Livro', nomeEditora AS 'Nome da Editora', nomeAutor AS 'Nome do Autor'
FROM tbLivro LEFT JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora 
LEFT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

--Exercício 18
SELECT nomeLivro AS 'Nome do Livro', nomeAutor AS 'Nome do Autor'
FROM tbLivro LEFT OUTER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeAutor ='%Cia das Letras%'

--Exercício 19
SELECT nomeLivro AS 'Nome do Livro', nomeAutor AS 'Nome do Autor'
FROM tbLivro LEFT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeAutor !='%ÉRICO VERÍSSIMO%'

--Exercício 20
SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' 
FROM tbAutor LEFT JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor

--Exercício 21
SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' 
FROM tbLivro LEFT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

--Exercício 22
SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' 
FROM tbLivro FULL JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
ORDER BY nomeAutor ASC

--Exercício 23
SELECT nomeEditora AS 'Editora', nomeLivro AS 'Livro' FROM tbEditora INNER JOIN tbLivro ON tbLivro.codEditora = tbEditora.codEditora
WHERE nomeEditora = 'Ática'

--Exercício 24
SELECT nomeAutor AS 'Nome da editora', COUNT (codLivro) AS 'Quantidade'
FROM tbAutor LEFT OUTER JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeLivro IS NULL
GROUP BY nomeAutor 

--Exercício 25
SELECT nomeGenero, nomeLivro FROM tbGenero FULL JOIN tbLivro ON tbLivro.codGenero = tbGenero.codGenero
WHERE nomeLivro IS NULL