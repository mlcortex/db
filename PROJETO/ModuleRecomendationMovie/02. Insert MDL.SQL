-- ######## Insert Generos
INSERT INTO Genre (name) VALUES
  ('Ação'),
  ('Comédia'),
  ('Drama'),
  ('Ficção Científica'),
  ('Suspense'),
  ('Terror'),
  ('Romance'),
  ('Aventura'),
  ('Documentário'),
  ('Animação'),
  ('Biografia'),
  ('Musical'),
  ('Fantasia'),
  ('Crime'),
  ('Família'),
  ('Esporte');

-- ######## Insert Filmes
INSERT INTO Movie (title, description, duration, release_year) VALUES
  ('Cidade Invisível',     'Policiais investigam crimes ligados ao folclore brasileiro.',               112, 2021),
  ('O Auto da Compadecida', 'Aventuras cômicas de João Grilo e Chicó no sertão nordestino.',            104, 2000),
  ('Bacurau',              'Moradores de um vilarejo descobrem que sua cidade sumiu do mapa.',          131, 2019),
  ('Hoje Eu Quero Voltar Sozinho', 'Adolescente cego busca independência e descobre o amor.',           96, 2014),
  ('Que Horas Ela Volta?', 'Empregada doméstica recebe a filha e desafia costumes sociais.',            112, 2015),
  ('Turma da Mônica - Laços', 'Mônica e seus amigos partem em uma jornada para encontrar Floquinho.',   96, 2019),
  ('Aquarius',             'Uma mulher luta para manter seu apartamento contra uma construtora.',       146, 2016),
  ('Tropa de Elite',       'Capitão do BOPE combate o tráfico de drogas no Rio de Janeiro.',            115, 2007),
  ('Minha Mãe é uma Peça', 'Dona Hermínia enfrenta os desafios da maternidade e da vida adulta.',       103, 2013),
  ('O Menino e o Mundo',   'Garoto parte em uma jornada fantástica em busca do pai.',                   80, 2013),
  ('Os Parças',            'Grupo improvável se envolve em muitas confusões para organizar um casamento.', 99, 2017),
  ('2 Filhos de Francisco', 'História real de Zezé di Camargo & Luciano.',                              132, 2005),
  ('Central do Brasil',      'Ex-professora e um menino órfão cruzam o interior do Brasil.',               115, 1998),
  ('Carandiru',              'História baseada em fatos reais do presídio de Carandiru.',                  145, 2003),
  ('Elis',                   'Cinebiografia da cantora Elis Regina.',                                     110, 2016),
  ('Era o Hotel Cambridge',  'Refugiados ocupam prédio abandonado no centro de SP.',                       99, 2016),
  ('Estômago',               'Nordestino usa a culinária para vencer na vida.',                           113, 2007),
  ('Lisbela e o Prisioneiro','Comédia romântica nordestina cheia de reviravoltas.',                       106, 2003),
  ('Linha de Passe',         'Quatro irmãos lutam para sobreviver na periferia paulistana.',              113, 2008),
  ('O Palhaço',              'Palhaço busca sentido na vida pelo interior do Brasil.',                     88, 2011),
  ('Quebrando a Banca',      'Gênio da matemática entra em esquema de cartas em Las Vegas.',              122, 2008),
  ('O Som ao Redor',         'Condomínio em Recife é abalado por ameaças e tensões.',                     131, 2012),
  ('Colegas',                'Três amigos com síndrome de Down fogem para viver aventuras.',               98, 2012),
  ('Garota da Moto',         'Motogirl enfrenta perigos nas ruas de São Paulo.',                          109, 2019),
  ('Mazzaropi: Jeca Tatu',   'Clássico do caipira brasileiro em busca de uma vida melhor.',                98, 1960),
  ('2 Coelhos',              'Suspense policial com ação e narrativa não-linear.',                        108, 2012),
  ('Heleno',                 'Vida e tragédia do craque Heleno de Freitas.',                             116, 2012),
  ('Casa Grande',            'Jovem da elite carioca descobre desigualdades do país.',                    114, 2014),
  ('A Última Parada 174',    'Baseado em história real de sequestro de ônibus no RJ.',                   110, 2008),
  ('Bingo: O Rei das Manhãs','Inspirado no palhaço Bozo, sucesso e drama nos bastidores.',                113, 2017),
  ('O Lobo Atrás da Porta',  'Investigação policial sobre sequestro de uma criança.',                     104, 2013),
  ('Hoje Eu Quero Ficar Sozinho','Jovem surdo descobre o valor da amizade.',                               93, 2018);

-- ######## Insert relação Filme x Genero
INSERT INTO MovieGenre (movie_id, genre_id) VALUES
  (1, 4), (1, 5),                      -- Cidade Invisível: Ficção Científica, Suspense
  (2, 2), (2, 3),                      -- O Auto da Compadecida: Comédia, Drama
  (3, 5), (3, 3),                      -- Bacurau: Suspense, Drama
  (4, 3), (4, 7),                      -- Hoje Eu Quero Voltar Sozinho: Drama, Romance
  (5, 3),                              -- Que Horas Ela Volta?: Drama
  (6,10), (6, 8),                      -- Turma da Mônica - Laços: Animação, Aventura
  (7, 3),                              -- Aquarius: Drama
  (8, 1), (8, 5),                      -- Tropa de Elite: Ação, Suspense
  (9, 2),                              -- Minha Mãe é uma Peça: Comédia
  (10,10), (10, 8),                    -- O Menino e o Mundo: Animação, Aventura
  (11, 2),                             -- Os Parças: Comédia
  (12, 3), (12, 9),                    -- 2 Filhos de Francisco: Drama, Documentário
  (13, 3),        -- Central do Brasil: Drama
  (14, 3), (14, 4),  -- Carandiru: Drama, Crime
  (15, 1), (15, 3),  -- Elis: Biografia, Drama
  (16, 3),           -- Era o Hotel Cambridge: Drama
  (17, 3), (17, 5),  -- Estômago: Drama, Suspense
  (18, 2), (18, 7),  -- Lisbela e o Prisioneiro: Comédia, Romance
  (19, 3),           -- Linha de Passe: Drama
  (20, 2),           -- O Palhaço: Comédia
  (21, 4),           -- Quebrando a Banca: Crime
  (22, 3), (22, 5),  -- O Som ao Redor: Drama, Suspense
  (23, 2), (23,10),  -- Colegas: Comédia, Família
  (24, 1), (24, 8),  -- Garota da Moto: Ação, Aventura
  (25, 2),           -- Mazzaropi: Jeca Tatu: Comédia
  (26, 4), (26, 5),  -- 2 Coelhos: Crime, Suspense
  (27, 6), (27, 3),  -- Heleno: Esporte, Drama
  (28, 3),           -- Casa Grande: Drama
  (29, 4), (29, 3),  -- A Última Parada 174: Crime, Drama
  (30, 1), (30, 2),  -- Bingo: O Rei das Manhãs: Biografia, Comédia
  (31, 5), (31, 4),  -- O Lobo Atrás da Porta: Suspense, Crime
  (32, 3);           -- Hoje Eu Quero Ficar Sozinho: Drama

-- ######## Insert Usuarios
INSERT INTO User (name, email) VALUES
  ('Camila Silva',      'camila.silva@gmail.com'),
  ('Rafael Oliveira',   'rafael.oliveira@hotmail.com'),
  ('Juliana Souza',     'juliana.souza@outlook.com'),
  ('Marcos Paulo',      'marcos.paulo@yahoo.com'),
  ('Ana Beatriz Lima',  'ana.beatriz.lima@gmail.com'),
  ('Pedro Henrique',    'pedro.henrique@uol.com.br'),
  ('Letícia Alves',     'leticia.alves@gmail.com'),
  ('Bruno Rocha',       'bruno.rocha@hotmail.com'),
  ('Tiago Mendes',        'tiago.mendes@gmail.com'),
  ('Jéssica Martins',     'jessica.martins@gmail.com'),
  ('Carlos Eduardo',      'carlos.eduardo@hotmail.com'),
  ('Priscila Moreira',    'priscila.moreira@gmail.com'),
  ('Fernanda Azevedo',    'fernanda.azevedo@outlook.com'),
  ('Lucas Carvalho',      'lucas.carvalho@gmail.com'),
  ('Gabriel Fernandes',   'gabriel.fernandes@hotmail.com'),
  ('Marina Andrade',      'marina.andrade@gmail.com'),
  ('André Ribeiro',       'andre.ribeiro@gmail.com'),
  ('Paula Figueiredo',    'paula.figueiredo@hotmail.com'),
  ('Vinicius Nascimento', 'vinicius.nascimento@gmail.com'),
  ('Eduarda Gonçalves',   'eduarda.goncalves@gmail.com');

-- ######## Insert Reviews
INSERT INTO Review (user_id, movie_id, rating, review_text, review_date) VALUES
  (1, 2, 5, 'Hilário, nordestino raiz! Assisti várias vezes.',                 '2024-07-01'),
  (2, 3, 4, 'Bacurau é diferente de tudo, prende do início ao fim.',           '2024-07-02'),
  (3, 4, 5, 'Filme sensível, delicado e emocionante.',                         '2024-07-03'),
  (4, 1, 3, 'Gostei, mas achei um pouco confuso.',                             '2024-07-03'),
  (5, 8, 5, 'Tropa de Elite é ação pura, Wagner Moura incrível.',              '2024-07-04'),
  (6, 5, 4, 'Reflexão sobre desigualdade, atuações excelentes.',               '2024-07-05'),
  (1, 6, 5, 'Me fez voltar à infância, a turma da Mônica é eterna!',           '2024-07-05'),
  (2,10, 4, 'Animação linda e profunda, vale cada minuto.',                    '2024-07-06'),
  (3, 9, 5, 'Minha Mãe é uma Peça é impossível não rir.',                      '2024-07-06'),
  (4, 7, 4, 'Aquarius tem ritmo lento, mas é um ótimo drama.',                 '2024-07-07'),
  (5,12, 5, 'Muito emocionante! Chorei com a história.',                       '2024-07-07'),
  (6,11, 3, 'Os Parças diverte, mas o roteiro é meio bobo.',                   '2024-07-08'),
  (7, 2, 5, 'Uma das melhores comédias brasileiras.',                          '2024-07-09'),
  (8, 8, 5, 'Filme marcante, mostra a realidade do Rio.',                      '2024-07-09'),
  (7, 4, 4, 'Filme leve e romântico, recomendo.',                              '2024-07-10'),
  (3, 5, 5, 'Roteiro brilhante e crítica social forte.',                       '2024-07-10'),
  (2,12, 4, 'História inspiradora dos sertanejos.',                            '2024-07-10'),
  (1,10, 3, 'A animação é bonita, mas faltou história.',                       '2024-07-11'),
  (6, 3, 4, 'Uma mistura de gêneros que funciona.',                            '2024-07-11'),
  (8, 9, 5, 'Dona Hermínia é sensacional! Ri do começo ao fim.',               '2024-07-12'),
  (9, 13, 5, 'Central do Brasil é tocante, a Fernanda Montenegro está incrível.',      '2024-07-01'),
  (10, 15, 4, 'Filme biográfico bem feito, adorei as músicas.',                        '2024-07-01'),
  (11, 14, 4, 'Carandiru é pesado, mas retrata bem a realidade.',                      '2024-07-02'),
  (12, 16, 5, 'Ótimo retrato dos refugiados e da luta por moradia.',                   '2024-07-02'),
  (13, 17, 5, 'Estômago tem humor ácido e roteiro criativo.',                          '2024-07-02'),
  (14, 18, 5, 'Lisbela é leve e divertida, perfeito pra família.',                     '2024-07-02'),
  (15, 19, 4, 'Linha de Passe é intenso e emocionante.',                               '2024-07-03'),
  (16, 20, 3, 'O Palhaço é bonito visualmente, história simples.',                     '2024-07-03'),
  (17, 21, 4, 'Filme instigante sobre matemática e apostas.',                          '2024-07-03'),
  (18, 22, 3, 'O Som ao Redor é lento, mas vale pela reflexão social.',                '2024-07-04'),
  (19, 23, 4, 'Colegas é sensível e diferente, gostei muito.',                         '2024-07-04'),
  (20, 24, 5, 'Adorei Garota da Moto! Cheio de ação.',                                 '2024-07-04'),
  (9, 25, 3, 'Jeca Tatu é clássico, divertido e simples.',                             '2024-07-04'),
  (10, 26, 5, '2 Coelhos é um filme policial moderno e inteligente.',                  '2024-07-04'),
  (11, 27, 4, 'Heleno mostra o lado humano do futebol.',                               '2024-07-05'),
  (12, 28, 4, 'Casa Grande retrata bem o choque de classes.',                          '2024-07-05'),
  (13, 29, 3, 'A Última Parada 174 é tenso, prende até o fim.',                        '2024-07-05'),
  (14, 30, 5, 'Bingo tem atuação sensacional do Vladimir Brichta.',                    '2024-07-05'),
  (15, 31, 5, 'O Lobo Atrás da Porta é um dos melhores suspenses nacionais.',          '2024-07-05'),
  (16, 32, 4, 'Hoje Eu Quero Ficar Sozinho emociona sem ser piegas.',                  '2024-07-06'),
  (17, 13, 5, 'Assistir Central do Brasil é obrigatório para todo brasileiro.',         '2024-07-06'),
  (18, 16, 4, 'Refugiados no Brasil, história pouco abordada.',                        '2024-07-06'),
  (19, 18, 5, 'Comédia romântica nacional que vale a pena.',                           '2024-07-06'),
  (20, 14, 4, 'Carandiru impressiona pelo realismo.',                                  '2024-07-06'),
  (9, 27, 3, 'Heleno é bom, mas um pouco arrastado.',                                  '2024-07-07'),
  (10, 20, 5, 'O Palhaço é poético, recomendo.',                                       '2024-07-07'),
  (11, 29, 4, 'A Última Parada 174 é forte e emocionante.',                            '2024-07-07'),
  (12, 15, 5, 'Elis Regina é retratada com maestria.',                                 '2024-07-07'),
  (13, 23, 4, 'Colegas me surpreendeu positivamente.',                                 '2024-07-07'),
  (14, 24, 5, 'Garota da Moto me prendeu do início ao fim.',                           '2024-07-07'),
  (15, 16, 4, 'Era o Hotel Cambridge é um filme social relevante.',                    '2024-07-07'),
  (16, 25, 3, 'Jeca Tatu é aquela comédia clássica do interior.',                      '2024-07-08'),
  (17, 28, 4, 'Casa Grande faz pensar no Brasil real.',                                '2024-07-08'),
  (18, 31, 5, 'Suspense nacional de qualidade.',                                       '2024-07-08'),
  (19, 14, 3, 'Carandiru choca, mas falta algo.',                                      '2024-07-08'),
  (20, 26, 4, '2 Coelhos tem ritmo acelerado, gostei.',                                '2024-07-08');

-- ######## Insert Recomendações
INSERT INTO Recommendation (user_id, movie_id, score, generated_at) VALUES
  (1, 3, 0.97, '2024-07-15'),
  (1, 4, 0.85, '2024-07-15'),
  (1, 6, 0.95, '2024-07-15'),
  (2, 1, 0.72, '2024-07-15'),
  (2,12, 0.90, '2024-07-15'),
  (2, 8, 0.89, '2024-07-15'),
  (3, 2, 0.98, '2024-07-15'),
  (3,10, 0.87, '2024-07-15'),
  (4, 7, 0.93, '2024-07-15'),
  (4, 5, 0.81, '2024-07-15'),
  (5, 8, 0.92, '2024-07-15'),
  (5,12, 0.85, '2024-07-15'),
  (6, 9, 0.88, '2024-07-15'),
  (7, 2, 0.80, '2024-07-15'),
  (7, 4, 0.91, '2024-07-15'),
  (8, 8, 0.90, '2024-07-15'),
  (8, 1, 0.73, '2024-07-15'),
  (9, 13, 0.96, '2024-07-10'),
  (9, 14, 0.84, '2024-07-10'),
  (9, 17, 0.75, '2024-07-10'),
  (10, 15, 0.92, '2024-07-10'),
  (10, 26, 0.90, '2024-07-10'),
  (10, 20, 0.88, '2024-07-10'),
  (11, 14, 0.91, '2024-07-10'),
  (11, 29, 0.89, '2024-07-10'),
  (11, 31, 0.86, '2024-07-10'),
  (12, 16, 0.87, '2024-07-10'),
  (12, 15, 0.95, '2024-07-10'),
  (12, 28, 0.79, '2024-07-10'),
  (13, 17, 0.99, '2024-07-10'),
  (13, 23, 0.85, '2024-07-10'),
  (13, 29, 0.80, '2024-07-10'),
  (14, 18, 0.97, '2024-07-10'),
  (14, 24, 0.89, '2024-07-10'),
  (15, 19, 0.94, '2024-07-10'),
  (15, 31, 0.93, '2024-07-10'),
  (16, 25, 0.73, '2024-07-10'),
  (16, 20, 0.77, '2024-07-10'),
  (16, 32, 0.85, '2024-07-10'),
  (17, 13, 0.83, '2024-07-10'),
  (17, 28, 0.91, '2024-07-10'),
  (17, 21, 0.69, '2024-07-10'),
  (18, 16, 0.87, '2024-07-10'),
  (18, 31, 0.93, '2024-07-10'),
  (19, 18, 0.97, '2024-07-10'),
  (19, 23, 0.80, '2024-07-10'),
  (19, 14, 0.65, '2024-07-10'),
  (20, 24, 0.94, '2024-07-10'),
  (20, 14, 0.85, '2024-07-10'),
  (20, 26, 0.90, '2024-07-10');
