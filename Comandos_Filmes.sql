-- 1
SELECT 
	Nome,
	Ano
FROM Filmes

-- 2
SELECT 
	Nome,
	Ano
FROM Filmes
ORDER BY Ano

-- 3 - Buscar pelo filme "De Volta Para o Futuro" - Nome, Ano e a duração
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
Where Nome = 'De Volta Para o Futuro'

-- 4 - Buscar os filmes lançados em 1997;
SELECT * 
FROM Filmes
Where Ano = 1997

-- 5 - Buscar os filmes lançados após o ano 2000;
SELECT * FROM Filmes
Where Ano > 2000

-- 6 - Buscar os filmes  com a duração maior que 100  e menor que 150, ordenado pela duração em ordem crescente
SELECT * FROM Filmes
Where Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7 - Buscar a quantidade  de filmes lançados no ano, agrupado por ano, ordenado pela duração em ordem decrescente;
SELECT Ano, COUNT(Ano)  FROM Filmes
GROUP BY Ano
ORDER BY COUNT(Duracao) DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'm' OR  Genero = 'M'

-- 9 - Buscar os atores do gênero feminino, retornando o PrimeiroNome, UltimoNome e ordenando pelo primeiro nome;
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'f' OR  Genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
SELECT 

	Filmes.Nome,
	Generos.Genero

FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 

	Filmes.Nome,
	Generos.Genero

FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12 - Busar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT

Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel

FROM Filmes

INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id

