#!/bin/bash

if [ $# -lt 4 ]; then
   echo "Error. Sintaxis: $0 alto/baja nombre apellido1 apellido2 [grupo]"
   exit 1
fi

accion=$1
nombre=$2
ape1=$3
ape2=$4
grupo=$5
id="alu${ape1:0:2}${ape2:0:2}${nombre:0:1}"

if [ "$accion" = "alta" ]; then
   if [-z "$grupo" ]; then
     grupo=$id
   fi
   sudo groupadd $grupo 2>/dev/null
   sudo useradd -m -g $grupo -c "$nombre $ape1 $ape2" $id
   echo "Usuario $id creado en grupo $grupo"
elif
   sudo userdel -r $id
   echo "Usuario $id eliminado"
else
   echo "Error. Sintaxis: $0 alta/baja nombre apellido1 apellido2 [grupo]"
   exit 2
fi


