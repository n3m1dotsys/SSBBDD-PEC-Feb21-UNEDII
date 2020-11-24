-- Selecciona el libro más alto en el ranking de bestsellers

USE librosdb;

SELECT title
FROM dataset LEFT SEMI JOIN (
    SELECT min(bestsellers_rank) AS bestseller
    FROM dataset
) AS a 
ON bestsellers_rank = a.bestseller
LIMIT 1;
