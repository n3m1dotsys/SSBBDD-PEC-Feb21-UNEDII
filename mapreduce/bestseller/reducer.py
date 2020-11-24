#!/usr/bin/python
#
# Autor: Martin Romera Sobrado
# Contacto: mromera95@alumno.uned.es
# 
# Sintaxis: Python 2
#
# Funcion reduce para obtener el bestseller entre los libros

import sys
from operator import itemgetter

bestrank = -1
besttitle = ""

for line in sys.stdin:
    line.strip()
    rank, title = line.split('\t',1)

    if bestrank == -1 or rank < bestrank:
        # Encuentra un libro con mejor ranking, o no tenia todavia un libro con mejor ranking
        bestrank = rank
        besttitle = title

    print("%s" % (besttitle))