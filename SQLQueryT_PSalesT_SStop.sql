-- Criar um banco de dados
CREATE DATABASE T_PSales;

-- Colocar o banco de dados em uso
USE T_PSales;

--DDL - Data Definition Language

-- Criar tabela de cursos
CREATE TABLE Cursos
(
	-- Tipo de dados, pk/fk 
	IdCurso		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT  NULL UNIQUE
);

-- Criar tabela de disciplinas
CREATE TABLE Disciplinas
(
	IdDiscpinas INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(250) NOT NULL 
	,IdCurso	INT FOREIGN KEY REFERENCES Cursos (IdCurso)
);

-- Criar tabela de alunos
CREATE TABLE Alunos
(
	IdAluno		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL 
);

-- Criar tabela intermediária de alunos e cursos (vincular)
CREATE TABLE CursosAlunos
(
	IdCurso		INT FOREIGN KEY REFERENCES Cursos (IdCurso)
	,IdAluno	INT FOREIGN KEY REFERENCES Alunos (IdAluno)
);

-- Inserir registros
-- insert into nome_tabela (colunas) values (valores)

-- 1 
INSERT INTO Cursos (Nome) VALUES ('Técnico em Dev. Sistemas');

-- 2
INSERT INTO Cursos VALUES ('Técnico em Redes');

-- 3
INSERT INTO Cursos VALUES ('Curso 1')
						  ,('Curso 2')
						  ,('Curso 3');

SELECT IdCurso, Nome
	FROM Cursos;

SELECT *
	FROM Cursos;

SELECT *
	FROM Cursos
	WHERE IdCurso = 1;

-- Atualização
-- update tabela set qual_coluna = novo_valor condicao

UPDATE Cursos
	SET Nome = 'Técnico em Desenvolvimento de Sistemas'
	WHERE IdCurso = 1;

INSERT INTO  Disciplinas (Nome, IdCurso)
	VALUES				 ('HTML',   1  );

INSERT INTO  Disciplinas (Nome, IdCurso)
	VALUES				 ('CSS',    1  );

SELECT *
	FROM Disciplinas;

DELETE FROM Cursos
WHERE IdCurso = 11;

DELETE FROM Disciplinas
WHERE IdDiscpinas = 2

-- CRUID 
-- create, read, update, delete
-- insert, select, update, delete