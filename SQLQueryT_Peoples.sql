CREATE DATABASE T_Peoples

USE T_Peoples

-- DDL

CREATE TABLE Funcionarios
(
	IdFuncionario	INT PRIMARY KEY IDENTITY 
	,Nome			VARCHAR(255) NOT NULL 
	,Sobrenome		VARCHAR(255) NOT NULL
)

-- DML 

INSERT INTO Funcionarios (Nome, Sobrenome) VALUES ('Catarina','Strada')
												  ,('Tadeu','Vitelli')

UPDATE Funcionarios SET Nome = 'Oba', Sobrenome = 'Abo' WHERE IdFuncionario = 2


-- DQL

SELECT * FROM Funcionarios