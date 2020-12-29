-- Creamos las dos tablas: authors y datasets

USE librosdb;

-- Tabla authors

CREATE EXTERNAL TABLE IF NOT EXISTS authors
(
    author_id INT,
    author_name STRING
)
COMMENT 'Tabla de autores'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\;'
tblproperties("skip.header.line.count"="1"); 

-- Tabla dataset

CREATE EXTERNAL TABLE IF NOT EXISTS dataset
(
    title STRING,
    author_id INT,
    bestsellers_rank INT,
    imprint BINARY,
    publication_date STRING,
    rating_avg DOUBLE,
    rating_count INT
)
COMMENT 'Tabla de libros'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\;'
tblproperties("skip.header.line.count"="1"); 

