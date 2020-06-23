#!/bin/bash
clear
echo Ingrese nombre de usuario: 
read usu
u=$( grep -w "$usu" /etc/passwd | cut -d: -f3 )
if [ $u -eq  1000 ]
then
	sh menu.sh
else
	echo Acceso Denegado
fi
