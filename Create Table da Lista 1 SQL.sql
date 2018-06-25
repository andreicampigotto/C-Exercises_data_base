--DROP TABLE pokemons;
CREATE TABLE pokemons (
id						INT IDENTITY(1,1) PRIMARY KEY,
nome					VARCHAR(255),
codigo                  VARCHAR(4),
categoria				VARCHAR(255),
altura					FLOAT,
peso					FLOAT,
hp						INT,
ataque					INT,
defesa					INT,
especial_ataque			INT,
especial_defesa			INT,
velocidade				INT,
descricao				TEXT
 );


