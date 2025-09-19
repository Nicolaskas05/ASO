#!/bin/bash

ls /etc/listado.txt

echo "Listado de archivos y directorios en /etc:"
cat listado.txt

echo ""
echo "Número de líneas:"
wc -l < listado.txt

echo "Número de palabras:"
wc -w < listado.txt
