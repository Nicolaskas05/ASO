#!/bin/bash

echo "Escribe una palabra:"
read word

echo "$word" >> lista.txt

echo "La palabra $word se ha añadido al fichero lista.txt"
