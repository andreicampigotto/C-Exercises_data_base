/*CREATE TABLE pessoas (
Nome				VARCHAR(100),
CPF					VARCHAR(14),
RG					VARCHAR(12),
Data_Nascimento		DATE,
Idade				TINYINT
);*/

INSERT INTO pessoas 
(Nome, CPF, RG, Data_Nascimento, Idade) 
VALUES('Bryan Caio Lopes', '213.217.201-30', '12.949.454-9', '1970-06-18', 48);

/*INSERT INTO pessoas 
(Nome, CPF, RG, Data_Nascimento, Idade) 
VALUES('Erick Bryan Enrico Vieira', '699.734.958-70', '90.745.276-0', '1989-05-28',29);*/

SELECT * FROM pessoas;
