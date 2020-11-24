-- Selecciona los 5 autores con más libros

USE librosdb;

SELECT DISTINCT author_name
FROM authors, dataset LEFT SEMI JOIN (
    SELECT author_id, count(title) AS num_libros
    FROM dataset
    GROUP BY author_id
    ORDER BY num_libros DESC
    LIMIT 5
) AS a
ON dataset.author_id = a.author_id
WHERE authors.author_id = dataset.author_id;
