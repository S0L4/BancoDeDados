CREATE DATABASE T_Filmes;

USE T_Filmes;

CREATE TABLE Generos 
(
    IdGenero    INT PRIMARY KEY IDENTITY
    ,Nome       VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Filmes
(
    IdFilme     INT PRIMARY KEY IDENTITY
    ,Titulo     VARCHAR(200) UNIQUE
    ,IdGenero   INT FOREIGN KEY REFERENCES Generos (IdGenero)
);

INSERT INTO Generos VALUES ('A��o'), ('Terror')
INSERT INTO Filmes (Titulo, IdGenero) VALUES ('Duro de Matar', 1), ('Invoca��o do Mal',2)

SELECT * FROM Generos
SELECT * FROM Filmes

SELECT F.IdFilme, F.Titulo, G.IdGenero, G.Nome 
FROM Filmes F
JOIN Generos G
ON F.IdGenero = G.IdGenero 
WHERE IdFilme = 2