CREATE TABLE quedas (
	nome		VARCHAR (100) DEFAULT 'NEYMAR',
	quedas		SMALLINT
);

INSERT INTO jogos
	(quedas, nome)
	VALUES(2, 'Tite');

INSERT INTO jogos
	(quedas)
	VALUES (20);

SELECT * FROM jogos;

