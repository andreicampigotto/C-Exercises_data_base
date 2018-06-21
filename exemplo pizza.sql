/*DROP TABLE pizzas;*/   -- APAGA TABELA
/*TRUMCATE TABLE */ -- APAGA REGISTROS DA TABELA
CREATE TABLE pizzas ( 
cliente		VARCHAR(100),
preco		DECIMAL(5,2),
diametro	SMALLINT,
fatias		TINYINT,
sabor_1		VARCHAR(50),
sabor_2		VARCHAR(50),
sabor_3		VARCHAR(50),
sabor_4		VARCHAR(50),
com_borda	BIT,
com_brinde	BIT		
);

INSERT INTO pizzas VALUES ('Francisgod', 12.40, 70, 40, 'Calabresa', 'Frango com Catupiry', 'Seis queijos', 'Alho e óleo', 1, 1);


INSERT INTO pizzas
(cliente, diametro, fatias, sabor_1,sabor_4, com_borda, com_brinde)
 VALUES ('Ygor', 45, 20, 'Pepino com tomate', 'Brócolis', 0, 0);


INSERT INTO pizzas
(cliente, preco, diametro, fatias, sabor_1,sabor_2, com_borda, com_brinde)
 VALUES ('Solfi junior', 40, 20, 16, 'Frango com cebola', 'Frango com cebola', 0, 1);

 INSERT INTO pizzas
(cliente, preco, diametro, fatias, sabor_1,sabor_2,sabor_4, com_borda, com_brinde)
 VALUES ('Fadinha', 65, 35, 25, 'Italiana', 'Alemã', 'Britanica', 1, 0);

INSERT INTO pizzas
(cliente, preco, diametro, fatias, sabor_1,sabor_2,sabor_4, com_borda, com_brinde)
 VALUES ('Desenhista', 55, 35, 8, 'Kostelinha', 'Quatro presuntos', 'Bacon', 0, 0);
