USE T_SSolve

INSERT INTO Clientes (NomeFatasia, CNPJ, RazaoSocial, Endereço)
VALUES ('I Limpeza','63.046.069/0001-76','Bruno e Lorenzo Compania IL','Avenida Joaquim Guerra, 169')

INSERT INTO Clientes (NomeFatasia, CNPJ, RazaoSocial, Endereço)
VALUES ('Manucation','54.331.343/0001-68','Pedro Henrique e Isabela Manutenções','Rua Paulo Cordeiro, 388')



INSERT INTO Trabalhos VALUES ('Limpeza'), ('Manutenção'), ('Concerto')

INSERT INTO Comodos	VALUES ('Banheiro'), ('Cozinha'), ('Quarto'), ('Sala')

INSERT INTO Funcionarios VALUES ('Uwellyntom'), ('Jeffersom'), ('Klaytu'), ('Édu Ardi D+')



INSERT INTO Servicos (IdCliente, IdTrabalho, Descricao, IdComodo, Duracao, Preco, Localizacao)
VALUES (2, 1, 'Limpar sala de reunião', 4, '02:00:00', 'R$120,00', 'Avenida Guerra Guerra, 300')

INSERT INTO Servicos (IdCliente, IdTrabalho, Descricao, IdComodo, Duracao, Preco, Localizacao)
VALUES (1, 3, 'Concerto de Pc', 3, '01:30:00', 'R$200,00', 'Rua General Canrobert, 190 B')



INSERT INTO Servico_Funcionario (IdServico, IdFuncionario)
VALUES (1,1),(2,4),(1,3)

SELECT * FROM Clientes
SELECT * FROM Trabalhos ORDER BY IdTrabalho ASC
SELECT * FROM Comodos ORDER BY IdComodo ASC
SELECT * FROM Funcionarios ORDER BY IdFuncionario ASC
SELECT * FROM Servicos
SELECT * FROM Servico_Fruncionario



