--DROP TABLE habilidades
--DROP TABLE herois
CREATE TABLE herois (
	id			INT IDENTITY (1,1) PRIMARY KEY,
	nome		VARCHAR(100) NOT NULL,
	dificuldade	TINYINT NOT NULL,
	funcao		VARCHAR(10) NOT NULL
	--PRIMARY KEY(ID) --SQL(AUTO_INCREMENT);
);

CREATE TABLE habilidades (
	id			INT IDENTITY (1,1) PRIMARY KEY,
	id_heroi	INT,
	nome		VARCHAR(100) NOT NULL,
	descricao	TEXT DEFAULT 'N/A',
	FOREIGN KEY (id_heroi) REFERENCES herois (id)
);

INSERT INTO herois (nome, dificuldade, funcao) VALUES ('BASTION', 1 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('TRACER', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('REAPER', 1 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('GENJI', 3 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('WINSTON', 2 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('ZENYATTA', 3 , 'SUPORTE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('DOOMFIST', 3 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('JUNKRAT', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('MCCREE', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('MEI', 3 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('PHARAH', 1 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('HANZO', 3 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('SOLDADO: 76', 1 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('SOMBRA', 3 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('SYMMETRA', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('TORBJÖRN', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('WIDOWMAKER', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('ZARYA --vai bater punheta', 3 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('ROADHOG', 1 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('REINHARDT', 1 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('ORISA', 2 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('D.VA', 2 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('MOIRA', 2 , 'SUPORTE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('MERCY', 1 , 'SUPORTE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('LÚCIO', 2 , 'SUPORTE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('BRIGITTE', 1 , 'SUPORTE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('ANA', 3 , 'SUPORTE');


INSERT INTO habilidades (id_heroi, nome , descricao) VALUES
((SELECT id FROM herois WHERE nome = 'TRACER'), 'PISTOLAS ELETROMAGNÉTICAS' ,NULL),
((SELECT id FROM herois WHERE nome = 'TRACER'), 'TELEPORTAR',NULL),
((SELECT id FROM herois WHERE nome = 'TRACER'), 'RECORDAÇÃO',NULL),
((SELECT id FROM herois WHERE nome = 'TRACER'),'BOMBA ELETROMAGNÉTICA',NULL);

INSERT INTO habilidades (id_heroi, nome , descricao) VALUES
(1, 'CONFIGURAÇÃO: RECONHECIMENTO' ,NULL),
(1, 'CONFIGURAÇÃO: SENTINELA',NULL),
(1, 'RECONFIGURAR',NULL),
(1,'AUTO REPARO',NULL),
(1,'CONFIGURAÇÃO: TANQUE',NULL);

INSERT INTO habilidades (id_heroi, nome , descricao) VALUES
((SELECT id FROM herois WHERE nome = 'REAPER'), 'ESPINGARDAS INFERNAIS' ,UPPER('Reaper estraçalha os inimigos com suas espingardas.')),
((SELECT id FROM herois WHERE nome = 'REAPER'), 'FORMA FANTASMA' ,UPPER('Reaper se torna uma sombra por um curto período de tempo. Enquanto está nessa forma, ele não recebe dano e pode atravessar inimigos, mas não pode usar suas armas ou outras habilidades.')),
((SELECT id FROM herois WHERE nome = 'REAPER'), 'PASSOS DAS SOMBRAS' ,UPPER('Após marcar um destino, Reaper desaparece e reaparece naquele destino.')),
((SELECT id FROM herois WHERE nome = 'REAPER'), 'DESABROCHAR DA MORTE' ,UPPER('Em um movimento rápido, Reaper esvazia as duas espingardas infernais em velocidade relâmpago, infligindo dano massivo aos inimigos nas proximidades.'));

INSERT INTO habilidades (id_heroi, nome , descricao) VALUES
((SELECT id FROM herois WHERE nome = 'GENJI'), 'SHURIKEN' ,UPPER('Genji solta três estrelas ninjas mortais em sucessão rápida. Como alternativa, ele pode jogar três shurikens em uma abrangência maior.')),
((SELECT id FROM herois WHERE nome = 'GENJI'), 'DESVIAR' ,UPPER('Com ataques velozes de sua espada, Genji reflete projéteis iminentes e os lança de volta em seu oponente.')),
((SELECT id FROM herois WHERE nome = 'GENJI'), 'GOLPE VELOZ' ,UPPER ('Genji avança para frente, golpeando com sua katana e passando por inimigos em seu caminho. Se Genji eliminar um alvo com essa habilidade, ele pode usá-la de novo instantaneamente.')),
((SELECT id FROM herois WHERE nome = 'GENJI'), 'LÂMINA DO DRAGÃO' , UPPER ('Genji brande sua katana por um breve período de tempo. Até embainhar sua espada, Genji consegue acertar golpes mortais em qualquer alvo ao seu alcance.'));

INSERT INTO habilidades (id_heroi, nome , descricao) VALUES
((SELECT id FROM herois WHERE nome = 'WINSTON'), 'CANHÃO DE TESLA' ,UPPER('A arma de Winston dispara uma rajada elétrica de curto alcance enquanto ele mantiver o gatilho pressionado.')),
((SELECT id FROM herois WHERE nome = 'WINSTON'), 'SALTO A JATO' ,UPPER('Com a ajuda do seu jato de energia, Winston ataca pelo ar, causando dano significativo e atordoando inimigos próximos ao aterrissar.')),
((SELECT id FROM herois WHERE nome = 'WINSTON'), 'LÂMINA DO DRAGÃO' , UPPER ('Genji brande sua katana por um breve período de tempo. Até embainhar sua espada, Genji consegue acertar golpes mortais em qualquer alvo ao seu alcance.'));

SELECT * FROM herois
SELECT * FROM habilidades
