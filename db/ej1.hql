-- Creamos las dos tablas: authors y datasets

USE librosdb;

-- Tabla authors

CREATE EXTERNAL TABLE IF NOT EXISTS authors
(
    author_id INT,
    author_name STRING
)
COMMENT 'Tabla de autores';

-- Tabla datasets

CREATE EXTERNAL TABLE IF NOT EXISTS datasets
(
    title STRING,
    author_id INT,
    bestsellers-rank INT,
    imprint BINARY,
    publication-date TIMESTAMP,
    rating-avg DOUBLE,
    rating-count INT
)
COMMENT 'Tabla de libros';

