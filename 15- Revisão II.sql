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
,('�tica')
,('Companhia das Letras')
,('Abril');

SELECT * FROM tbEditora

INSERT INTO tbGenero VALUES 
 ('Fic��o')
,('Romance')
,('Trag�dia');

SELECT * FROM tbGenero

INSERT INTO tbLivro VALUES
 ('Budapeste', 176, 2, 4, 1)
,('O Bicho-da-Seda', 454, 2, 5, 3)
,('Gabriela. Cravo e Canela', 214, 1, 2, 2)
,('Reina��es de Narizinho', 143, 2, 2, 5)
,('Romeu e Julieta', 421, 1, 3, 4)
,('O Irm�o Alem�o', 478, 1, 4, 1)
,('Terras do Sem-Fim', 125, 1, 3, 2)
,('Animais Fant�sticos e Onde Habitam', 267, 2, 4, 3);

SELECT * FROM tbLivro

-- Exerc�cio 01
SELECT nomeLivro 'Nome do livro', numPaginas 'N� de p�ginas' FROM tbLivro nomeLivro
WHERE numPaginas = (SELECT MAX(numPaginas) FROM tbLivro)

-- Exerc�cio 02
SELECT nomeLivro 'Nome do livro', numPaginas 'N� de p�ginas' FROM tbLivro nomeLivro
WHERE numPaginas = (SELECT MIN(numPaginas) FROM tbLivro)

-- Exerc�cio 03
SELECT AVG (numPaginas) AS 'M�dia de p�ginas'
FROM tbLivro

-- Exerc�cio 04
SELECT SUM(numPaginas) AS 'Soma das p�ginas'
FROM tbLivro WHERE codEditora = '01'

--Exerc�cio 05
SELECT SUM (numPaginas) AS 'Soma' FROM tbLivro
WHERE nomeLivro LIKE '%a'

--Exerc�cio 06
SELECT AVG (numPaginas) AS 'M�dia de p�ginas'
FROM tbLivro WHERE codAutor = 3

--Exerc�cio 07
SELECT COUNT (numPaginas) AS 'Soma' FROM tbLivro
WHERE codAutor = 4

--Exerc�cio 08
SELECT SUM (numPaginas) AS 'Soma com ESTRELA' FROM tbLivro
WHERE nomeLivro LIKE '%ESTRELA%'

--Exerc�cio 09
SELECT COUNT (numPaginas) AS 'Quantidade' FROM tbLivro
WHERE nomeLivro LIKE '%POEMA%'

--Exerc�cio 10
SELECT COUNT(codLivro) AS 'Quantidade de Livros', nomeGenero FROM tbGenero LEFT JOIN tbLivro 
ON tbLivro.codGenero = tbGenero.codGenero
GROUP BY nomeGenero

--Exerc�cio 11
SELECT nomeAutor AS 'Nome do Autor', SUM(numPaginas) AS 'Soma das paginas' 
FROM tbAutor INNER JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
GROUP BY nomeAutor

--Exerc�cio 12
SELECT AVG(numPaginas) AS 'M�dia das p�ginas', nomeAutor AS 'Nome Autores' FROM tbLivro
INNER JOIN tbAutor on tbAutor.codAutor = tbLivro.codLivro
GROUP BY nomeAutor
ORDER BY nomeAutor DESC

--Exerc�cio 13
SELECT nomeEditora AS 'Nome da editora', COUNT(codLivro) AS 'Quantidade de Livros'
FROM tbEditora INNER JOIN tbLivro ON tbLivro.codEditora = tbEditora.codEditora
GROUP BY nomeEditora 
ORDER BY nomeEditora DESC

--Exerc�cio 14
SELECT nomeAutor AS 'Nome do Autor', SUM(numPaginas) AS 'Soma das p�ginas' 
FROM tbLivro RIGHT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeAutor LIKE '%C%'
GROUP BY nomeAutor

--Exerc�cio 15
SELECT nomeAutor AS 'Nome do Autor', COUNT(codLivro) AS 'Quantidade de Livro' 
FROM tbAutor LEFT JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeAutor LIKE '%MACHADO DE ASSIS%' OR nomeAutor LIKE '%CORA CORALINA%' OR nomeAutor LIKE '%CLARICE LISPECTOR%'
GROUP BY nomeAutor

--Exerc�cio 16
SELECT nomeEditora AS 'Nome da Editora', SUM(numPaginas) AS 'Soma das p�ginas' 
FROM tbEditora INNER JOIN tbLivro ON tbLivro.codEditora = tbEditora.codEditora
WHERE numPaginas BETWEEN 200 AND 500
GROUP BY nomeEditora

--Exerc�cio 17
SELECT nomeLivro AS 'Nome do Livro', nomeEditora AS 'Nome da Editora', nomeAutor AS 'Nome do Autor'
FROM tbLivro LEFT JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora 
LEFT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

--Exerc�cio 18
SELECT nomeLivro AS 'Nome do Livro', nomeAutor AS 'Nome do Autor'
FROM tbLivro LEFT OUTER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeAutor ='%Cia das Letras%'

--Exerc�cio 19
SELECT nomeLivro AS 'Nome do Livro', nomeAutor AS 'Nome do Autor'
FROM tbLivro LEFT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeAutor !='%�RICO VER�SSIMO%'

--Exerc�cio 20
SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' 
FROM tbAutor LEFT JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor

--Exerc�cio 21
SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' 
FROM tbLivro LEFT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

--Exerc�cio 22
SELECT nomeAutor AS 'Nome do Autor', nomeLivro AS 'Nome do Livro' 
FROM tbLivro FULL JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
ORDER BY nomeAutor ASC

--Exerc�cio 23
SELECT nomeEditora AS 'Editora', nomeLivro AS 'Livro' FROM tbEditora INNER JOIN tbLivro ON tbLivro.codEditora = tbEditora.codEditora
WHERE nomeEditora = '�tica'

--Exerc�cio 24
SELECT nomeAutor AS 'Nome da editora', COUNT (codLivro) AS 'Quantidade'
FROM tbAutor LEFT OUTER JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
WHERE nomeLivro IS NULL
GROUP BY nomeAutor 

--Exerc�cio 25
SELECT nomeGenero, nomeLivro FROM tbGenero FULL JOIN tbLivro ON tbLivro.codGenero = tbGenero.codGenero
WHERE nomeLivro IS NULL