-- Selecciona el libro con mejor valoración de Ana Maria Spagna

USE librosdb;

SELECT title
FROM(
    SELECT title, rating_avg
    FROM dataset LEFT SEMI JOIN (
        SELECT max(rating_avg) AS max_rating
        FROM authors, dataset
        WHERE authors.author_id = dataset.author_id AND authors.author_name = "Ana Maria Spagna"
    ) AS b
    ON rating_avg = b.max_rating
) AS a
LIMIT 1;
