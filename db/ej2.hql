-- Importamos datos de los csv a la base de datos

USE librosdb;

LOAD DATA INPATH '/user/cloudera/librosdb/authors/authors.csv' INTO TABLE authors;

LOAD DATA INPATH '/user/cloudera/librosdb/dataset/dataset.csv' INTO TABLE dataset;