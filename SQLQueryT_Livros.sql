CREATE DATABASE T_Livros

USE T_Livros

CREATE TABLE Generos
(
	IdGenero INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Autores
(
	IdAutor INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
);

ALTER TABLE Autores
	ADD Email VARCHAR (200) 
		,Ativo BIT 
		,DataNascimento VARCHAR (200) 

CREATE TABLE Livros
(
	IdLivro INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
	,IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor)
	,IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero)
);

INSERT INTO Generos VALUES ('Aventura')
						   ,('Terror')
						   ,('Ficção')

UPDATE Autores SET DataNascimento = '25/06/1903' WHERE IdAutor = 3

INSERT INTO Livros VALUES ('Senhor dos Anéis',1,1)
						  ,('It A Coisa',2,3)
						  ,('1964',3,4)

SELECT Livros.*,Autores.*,Generos.*
FROM 

SELECT * FROM Generos
SELECT * FROM Autores
SELECT * FROM Livros