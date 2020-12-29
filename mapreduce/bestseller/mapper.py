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
title = 0
rank = 2
bestrank = -1
bestranktitle = ""

data = sys.stdin.readlines()

for line in csv.reader(data, delimiter=';'):
    if line[rank] != "" and line[title] != "title" and line[rank] != "bestsellers-rank":
        # El libro tiene ranking
        thisrank = int(line[rank].replace('.','').replace(',',''))
        if thisrank < bestrank or bestrank == -1 :
            # Ha encontrado un libro con mejor ranking, o todavia no tenia un libro con mejor ranking
            bestrank = thisrank
            bestranktitle = line[title]

print("%s\t%s" % (str(bestrank), bestranktitle))