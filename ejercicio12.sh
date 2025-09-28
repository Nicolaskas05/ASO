#!/bin/bash

h=$(date +%H)

if [ $h -ge 8 ] && [ $h -lt 15 ]; then
   echo "Buenos días"

elif [ $h -ge 15 ] && [ $h -lt 20 ]; then
   echo "Buenas tardes"

else
   echo "Buenas noches"

fi

