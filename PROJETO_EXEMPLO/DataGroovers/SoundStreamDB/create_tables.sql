CREATE TABLE artista (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(50)
);

CREATE TABLE album (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    artista_id INT REFERENCES artista(id),
    ano_lancamento INT
);

CREATE TABLE musica (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    album_id INT REFERENCES album(id),
    duracao_segundos INT
);

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE stream (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuario(id),
    musica_id INT REFERENCES musica(id),
    data_execucao TIMESTAMP
);
