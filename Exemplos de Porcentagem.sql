CREATE TABLE produtos(
	nome		VARCHAR(100)

);

INSERT INTO produtos VALUES
('Calabresa'),
('X-Calabresa'),
('Pizza de Calabresa'),
('Calabresa com miojo'),
('Milk Shake de Calabresa'),
('Paçoca de Calabresa com açai'),
('Polenta com paçoca');

SELECT * FROM produtos WHERE nome LIKE 'Cala%'; -- Busca os produtos que contem o nome iniciando com Cala;

SELECT * FROM produtos WHERE nome LIKE '%Calabresa'; -- Busca os produtos que terminam com Calabresa;  

SELECT * FROM produtos WHERE nome LIKE '%Calabresa%'; -- Busca os produtos que Contém calabresa em qualquer parte;