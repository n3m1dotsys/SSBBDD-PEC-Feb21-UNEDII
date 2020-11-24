-- Crea una vista para las tablas creadas con los siguientes atributos:
-- Titulo, Nombre del autor, Fecha de publicación y Valoración media
USE librosdb;

CREATE VIEW IF NOT EXISTS vista_libros 
(
    title COMMENT 'Titulo del libro',
    author_name COMMENT 'Autor del libro',
    publication_date COMMENT 'Fecha de publicación',
    rating_avg COMMENT 'Valoración media del libro'
)
AS SELECT title, author_name, publication_date, rating_avg
FROM authors, dataset
WHERE authors.author_id = dataset.author_id;