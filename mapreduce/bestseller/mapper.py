#!/usr/bin/python
#
# Autor: Martin Romera Sobrado
# Contacto: mromera95@alumno.uned.es
# 
# Sintaxis: Python 2
#
# Funcion map para obtener el bestseller entre los libros

import sys
import csv

first_line = True
title = -1
rank = -1
bestrank = -1
bestranktitle = ""

data = sys.stdin.readlines()

for line in csv.reader(data, delimiter=';'):
    if first_line:
        # Buscamos en que columna se encuentran los datos de title y bestseller-rank
        column_count = 0
        for column in line:
            if column == "title":
                title = column_count
            if column == "bestsellers-rank":
                rank = column_count
            column_count += 1
        if title == -1 or rank == -1:
            raise Exception("title or rank column not found")
        first_line = False
    else:
        if line[rank] != "":
            # El libro tiene ranking
            thisrank = int(line[rank].replace('.','').replace(',',''))
            if thisrank < bestrank or bestrank == -1 :
                # Ha encontrado un libro con mejor ranking, o todavia no tenia un libro con mejor ranking
                bestrank = thisrank
                bestranktitle = line[title]

print("%s\t%s" % (str(bestrank), bestranktitle))