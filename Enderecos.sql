/*CREATE TABLE endereco(
Estado		CHAR(2),
Cidade		VARCHAR(140),
Bairro		VARCHAR(120),
CEP			CHAR(10),
Logradouro	VARCHAR(250),
Número		SMALLINT,
Complemento	TEXT
);*/

INSERT INTO endereco 
(Estado,Cidade, Bairro, CEP, Logradouro, Número) 
VALUES('PB', 'Cabedelo', 'Camalaú', '58.103-052', 'Rua Siqueira Campos', 249);

/*INSERT INTO endereco 
(Estado, Cidade, Bairro, CEP, Logradouro, Número, Complemento) 
VALUES('AC',  'Rio Branco', 'Ayrton Senna', '69.911-866', 'Estrada Deputado José Rui da Silveira Lino', 282, 'Casa');*/

SELECT * FROM endereco;