-- 1. Top3 filmes com maior média de avaliação
SELECT M.title,
       ROUND(AVG(R.rating),2) AS avg_rating,
       COUNT(R.review_id)     AS total_reviews
FROM Movie M
JOIN Review R USING (movie_id)
GROUP BY M.movie_id
ORDER BY avg_rating DESC, total_reviews DESC
LIMIT 3;

-- 2. Quantidade de reviews por usuário
SELECT U.name, COUNT(R.review_id) AS num_reviews
FROM User U
LEFT JOIN Review R USING (user_id)
GROUP BY U.user_id;

-- 3. Generos avaliados por usuário
SELECT U.name,
       GROUP_CONCAT(DISTINCT G.name) AS genres_watched
FROM User U
JOIN Review  R ON R.user_id = U.user_id
JOIN MovieGenre MG ON MG.movie_id = R.movie_id
JOIN Genre G  ON G.genre_id = MG.genre_id
GROUP BY U.user_id;

-- 4. Recomendações pendentes (score ≥ 0.9) para o usuário 'Camila Silva'
SELECT M.title, R.score
FROM Recommendation R
JOIN User  U ON U.user_id = R.user_id
JOIN Movie M ON M.movie_id = R.movie_id
WHERE U.name = 'Camila Silva' AND R.score >= 0.9
ORDER BY R.score DESC;

-- 5. Filmes sem review
SELECT M.title
FROM Movie M
LEFT JOIN Review R USING (movie_id)
WHERE R.review_id IS NULL;

--6. Média de nota por gênero
SELECT
    G.name AS genre,
    ROUND(AVG(R.rating), 2) AS avg_rating,
    COUNT(*) AS num_reviews
FROM Review      AS R
JOIN Movie       AS M  ON M.movie_id  = R.movie_id
JOIN MovieGenre  AS MG ON MG.movie_id = M.movie_id
JOIN Genre       AS G  ON G.genre_id  = MG.genre_id
GROUP BY G.genre_id
ORDER BY avg_rating DESC;

--7. Usuários que avaliaram pelo menos 2 filmes
SELECT
    U.name,
    COUNT(R.review_id) AS num_reviews
FROM User AS U
LEFT JOIN Review AS R USING (user_id)
GROUP BY U.user_id
HAVING COUNT(R.review_id) >= 2
ORDER BY num_reviews DESC;

