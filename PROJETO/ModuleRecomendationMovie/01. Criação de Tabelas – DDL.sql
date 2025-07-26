-- ########################
-- Tabela de usuários
-- ########################
CREATE TABLE User (
    user_id      INTEGER PRIMARY KEY AUTOINCREMENT,
    name         TEXT NOT NULL,
    email        TEXT UNIQUE NOT NULL,
    signup_date  DATE DEFAULT (DATE('now'))
);

-- ########################
-- Tabela de filmes
-- Considerar duração em minutos
-- ########################
CREATE TABLE Movie (
    movie_id     INTEGER PRIMARY KEY AUTOINCREMENT,
    title        TEXT NOT NULL,
    description  TEXT,
    duration     INTEGER NOT NULL,               
    release_year INTEGER                          
);

-- ########################
-- Tabela de gêneros
-- ########################
CREATE TABLE Genre (
    genre_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name     TEXT UNIQUE NOT NULL
);

-- Tabela para relação entre Movie e Genre
CREATE TABLE MovieGenre (
    movie_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)  ON DELETE CASCADE, -- apagar caso o filme seja apagado
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)  ON DELETE CASCADE -- apagar caso o gênero seja apagado
);

-- ########################
-- Avaliações de usuários
-- ########################
CREATE TABLE Review (
    review_id    INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id      INTEGER NOT NULL,
    movie_id     INTEGER NOT NULL,
    rating       INTEGER CHECK (rating BETWEEN 1 AND 5),
    review_text  TEXT,
    review_date  DATE DEFAULT (DATE('now')),
    FOREIGN KEY (user_id)  REFERENCES User(user_id)   ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) ON DELETE CASCADE
);

CREATE INDEX index_review_movie   ON Review(movie_id);
CREATE INDEX index_review_user    ON Review(user_id);

-- ########################
-- Tabela para armazenar recomendações geradas pelo modelo
-- ########################
CREATE TABLE Recommendation (
    user_id      INTEGER NOT NULL,
    movie_id     INTEGER NOT NULL,
    score        REAL    NOT NULL,            
    generated_at DATE    DEFAULT (DATE('now')),
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id)  REFERENCES User(user_id)   ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) ON DELETE CASCADE
);

-- Índices para acelerar buscas de “top‑N por score”
CREATE INDEX idx_rec_user_score  ON Recommendation(user_id, score DESC);
