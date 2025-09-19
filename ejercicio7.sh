#!/bin/bash

if [ "${1:-}" = "" ]; then
  echo "Uso: $0 /etc"
  exit 1
fi

dir="$1"

if [ ! -d "$dir" ]; then
  echo "Error: '$dir' no es un directorio válido" >&2
  exit 1
fi


fecha=$(date +%F)
base=$(basename "$dir")
archivo="${fecha}_${base}.tar.gz"


tar -czf "$archivo" -C "$(dirname "$dir")" "$base"

echo "El directorio '$dir' se ha comprimido en '$archivo'"
