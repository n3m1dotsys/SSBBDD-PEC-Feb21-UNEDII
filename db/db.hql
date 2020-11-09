-- Crea la base de datos en el caso de que no este creada.

create database if not exists librosdb
Comment 'Base de datos con información de libros'
Location '/home/cloudera/librosdb'
With dbproperties('Creada por' = 'Martín Romera Sobrado', 'Creada el' = '9-Nov-2020');
