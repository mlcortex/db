INSERT INTO artista (nome, genero) VALUES
('The Jazz Cats', 'Jazz'),
('ElectroNova', 'Eletrônica'),
('RockStorm', 'Rock');

INSERT INTO album (titulo, artista_id, ano_lancamento) VALUES
('Smooth Nights', 1, 2022),
('Beats & Bass', 2, 2021),
('Thunder Rock', 3, 2023);

INSERT INTO musica (titulo, album_id, duracao_segundos) VALUES
('Night Vibes', 1, 180),
('Midnight Sax', 1, 200),
('Drop the Bass', 2, 210),
('Electric Dreams', 2, 230),
('Rock You', 3, 250);

INSERT INTO usuario (nome, email) VALUES
('João Mendes', 'joao@gmail.com'),
('Maria Lima', 'maria@gmail.com'),
('Carlos Souza', 'carlos@gmail.com');

INSERT INTO stream (usuario_id, musica_id, data_execucao) VALUES
(1, 1, '2025-07-10 10:00'),
(2, 2, '2025-07-10 10:05'),
(1, 3, '2025-07-11 09:30'),
(3, 3, '2025-07-11 11:15'),
(2, 4, '2025-07-12 14:00'),
(1, 5, '2025-07-12 15:00');
