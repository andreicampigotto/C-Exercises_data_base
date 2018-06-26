CREATE TABLE outfit(
	marca		VARCHAR(100),
	valor		DECIMAL(8,2),
	tamanho		CHAR(3),
	cor			VARCHAR(20),
	tecido		VARCHAR(40)
);

INSERT INTO outfit VALUES
('Supreme', 700, 'M', 'Cinza Espacial', 'TNT'),
('Vans', 15000, 'P', 'Preto com vermelho', 'Lycra'),
('Lelis Blanc', 15, '', 'Rosa xoque', 'Seda'),
('Nike', 400, 'M', 'Indefinida', 'Malha'),
('Gucci', 2500, 'M', 'Verde','150% Malha'),
('Okle', 500, 'PP', 'Fogo', 'Lona'),
('Chilli beans' , 14999, 'GGG', 'Branco', 'Diamente')

SELECT * FROM outfit

--UPDATE outfit SET tamanho = 'XGG' WHERE marca =  'Lelis blanc'

--UPDATE outfit SET cor = 'Verde', valor = 1.50 WHERE cor = 'Rosa xoque';

--UPDATE outfit SET marca = 'Oakley' WHERE marca = 'OAKLEY'

--UPDATE outfit SET cor = 'Azul Spacial' WHERE tecido LIKE '%Malha%'

--DELETE FROM outfit WHERE cor = 'Azul Spacial' OR cor = 'Verde'

