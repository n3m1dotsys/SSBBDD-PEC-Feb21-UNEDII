-- Selecciona el libro más alto en el ranking de bestsellers

USE librosdb;

SELECT title
FROM datasets LEFT SEMI JOIN (
    SELECT min(bestsellers_rank) AS bestseller
    FROM datasets
) AS a 
ON bestsellers_rank = a.bestseller
LIMIT 1;
