USE T_SStop

SELECT * FROM EstilosMusicais

SELECT * FROM EstilosMusicais
	WHERE IdEst = 1;

SELECT * FROM EstilosMusicais
	WHERE Nome = 'Rock';

SELECT * FROM EstilosMusicais
	WHERE Nome = 'Roc';

SELECT * FROM EstilosMusicais
	WHERE Nome LIKE 'Rock';

SELECT * FROM EstilosMusicais
	WHERE Nome LIKE 'Ro%';

SELECT * FROM EstilosMusicais
	WHERE Nome LIKE '%ck';

SELECT * FROM EstilosMusicais
	WHERE Nome LIKE '%a%';

SELECT Artistas.*,EstilosMusicais.*
	FROM Artistas FULL JOIN EstilosMusicais ON Artistas.IdEst = EstilosMusicais.IdEst 

INSERT INTO Artistas (Nome)
		VALUES ('Exalta Samba')

INSERT INTO EstilosMusicais
		VALUES ('Samba')

INSERT INTO EstilosMusicais
		VALUES ('Folk')

SELECT IdEst, Nome FROM EstilosMusicais WHERE IdEst = 1

SELECT A.IdArt, A.Nome, E.IdEst, E.Nome AS NomeEstilo
FROM Artistas A
INNER JOIN EstilosMusicais E 
ON A.IdEst = E.IdEst
