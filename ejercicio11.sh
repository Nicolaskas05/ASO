#!/bin/bash

if [ $# -ne 2 ]; then
   echo "Uso: $0 archivo_original archivo_copia"
   exit 1
fi

orig=$1
copia=$2

if [ ! -f "$orig" ]; then
   echo "El archivo $orig no existe o no es un archivo normal"
   exit 2
fi

if [ -e "$copia" ]; then
   echo "Ya existe algo con el nombre $copia"
  exit 3
fi

cp "$orig" "$copia"
echo "Copia hecha: $orig -> $copia" 
