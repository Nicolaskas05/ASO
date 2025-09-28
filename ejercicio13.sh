#!/bin/bash
 archivo="lista.txt"

while true; do

   echo "===MENU AGENDA==="
   echo "1) Añadir"
   echo "2) Buscar"
   echo "3) Listar"
   echo "4) Ordenar"
   echo "5) Borrar archivo"
   echo "6) Salir"
   read -p "Opciones: " op

   case $op in
    1)
	read -p "Nombre: " nom
	read -p "Direccion: " dir
	read -p "Telefono: " tel
	echo "$nom | $dir | $tel" >> $archivo
	;;
   2)
	read -p "Buscar texto: " txt
	grep -i "$txt" $archivo 2>/dev/null || echo "No encontrado"
	;;
   3)
	cat $archivo 2>7dev/null || echo "Agenda vacía"
	;;
   4)
	sort $archivo -o $archivo 2>/dev/null
	echo "Archivo ordenado"
	;;
   5)
	rm -f $archivo
	echo "Archivo borrado"
	;;
   6) break ;;
   *) echo "Opción no valida" ;;

   esac
done

