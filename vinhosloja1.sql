CREATE TABLE vinhosloja.regiao (
codRegiao BIGINT PRIMARY KEY,
nomeRegiao VARCHAR(100) NOT NULL,
descricaoRegiao TEXT
);

CREATE TABLE vinhosloja.vinicola (
codVinicola BIGINT PRIMARY KEY,
nomeVinicola VARCHAR(100) NOT NULL,
descricaoVinicola TEXT,
foneVinicola VARCHAR(15),
emailVinicola VARCHAR(50),
codRegiao BIGINT,
FOREIGN KEY (codRegiao) REFERENCES vinhosloja.regiao(codRegiao)
);

CREATE TABLE vinhosloja.vinhos (
codVinho BIGINT PRIMARY KEY,
nomeVinho VARCHAR(50) NOT NULL,
tipoVinho VARCHAR(30) NOT NULL,
anoVinho INT NOT NULL,
descricaoVinho TEXT,
codVinicola BIGINT,
FOREIGN KEY (codVinicola) REFERENCES vinhosloja.vinicola(codVinicola)
);
