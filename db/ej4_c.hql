-- Selecciona los 5 autores con más libros

USE librosdb;

SELECT DISTINCT author_name
FROM authors, datasets LEFT SEMI JOIN (
    SELECT author_id, count(title) AS num_libros
    FROM datasets
    GROUP BY author_id
    ORDER BY num_libros DESC
    LIMIT 5
) AS a
ON datasets.author_id = a.author_id
WHERE authors.author_id = datasets.author_id;
