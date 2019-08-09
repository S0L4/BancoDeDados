CREATE DATABASE T_DPS

USE T_DPS

CREATE TABLE Habilidades 
(
	IdHabilidade INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Departamentos
(
	IdDepartamento INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Funcionários
(
	IdFuncionario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL 
	,DataNascimento DATE
	,CPF FLOAT 
	,Salário MONEY 
	,IdDepartamento INT FOREIGN KEY REFERENCES Departamentos (IdDepartamento)
);

CREATE TABLE Funcionário_Habilidade
(
	IdFuncionario INT FOREIGN KEY REFERENCES Funcionários (IdFuncionario)
	,IdHabilidade  INT FOREIGN KEY REFERENCES Habilidades (IdHabilidade)
);

