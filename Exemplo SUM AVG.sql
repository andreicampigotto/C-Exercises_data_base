/*CREATE TABLE vendas(
	nome		VARCHAR (100),
	preco		DECIMAL	(6,2),
	quantidade	SMALLINT
	);

	INSERT INTO vemdas VALUES
	('Café',		4,	27.13), 
	('Leite',		35,	 4.15), 
	(Açucar',		52,	24.67), 
	('Biscoito',	3,	 1.71), 
	('Miojo',		9,	45.23), 
	('Calabresa',	17,  1.72), 
	('Bacon',		18, 19.52), 
	('Feijão',		18,  7.87), 
	(Sarzon',		47,  4.16), 
	('Qboa',		50, 22.39), */
-- PODE MULTIPLICAR CRIANDO UMA COLUNA NOVA;
/*SELECT 
	nome				'NOME',
	quantidade			'Quantidade',
	preco				'Preço',
	quantidade * preco	'Total'
	FROM vendas 
	ORDER BY 'TOTAL' DESC;*/

	--SELECT SUM (precos) 'Somátorio dos preços' FROM vendas; -- Soma todos os registros de uma coluna;


	SELECT AVG (precos) 'Somátorio dos preços' FROM vendas; --Tira média da coluna;

	SELECT MIN (preco) FROM vendas; -- Retorna o menor preço;

	SELECT Max(preco) FROM vendas; -- Retorna o maior  preço;

	SELECT 
	nome , LEN (nome)
	FROM vendas
	WHERE LEN (nome) > 5
	ORDER BY LEN (nome) DESC; -- LEN Retorna quantidade de caracteres;

	SELECT 
	nome , LEN (nome)
	FROM vendas
	WHERE LEN (nome) = (SELECT MAX (LEN(nome)) FROM vendas)
	ORDER BY LEN (nome) DESC; -- Retorna maior nome;
