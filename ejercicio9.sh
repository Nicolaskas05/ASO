#!/bin/bash

echo "Dime un número:"
read a

echo "Dime otro número:"
read b

echo "Elige operación:"
echo "1) suma"
echo "2) resta"
echo "3) multiplicar"
echo "4) dividir"
read op

case $op in
   1)echo "Resultado: $((a+b))" ;;
   2)echo "Resultado: $((a-b))" ;;
   3)echo "Resultado: $((a*b))" ;;
   4)
	if [ $b -ne 0 ]; then
	  echo "Resultado: $((a/b))"
	else
	  echo "No se puede dividir entre cero"
	fi
	;;
   *)echo "opción no válida" ;;
esac
