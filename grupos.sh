#!/bin/bash
clear
opc=1
while test [$opc!=0]
do
echo Grupos
echo 1-Crear Grupo
echo 2-Agregar Usuario a Grupo
echo 3-Eliminar Usuario de Grupo
echo 0-Salir
echo Ingrese una Opcion:
read opc
case $opc in
1)clear
	echo Ingrese Nombre del Grupo:
	read grupo
	sudo groupadd $grupo
	echo  El grupo $grupo ha sido creado con exito;;
2)clear
	echo Ingrese Nombre del Grupo:
	read grupo
	echo Ingrese el Usuario:
	read usu
	sudo  gpasswd -a $usu $grupo
	echo $usu ha sido agregado a $grupo con exito;;
3)clear
	echo Ingrese Nombre del Grupo
	read grupo
	echo Ingrese el Usuario
	read usu
	sudo gpasswd -d $usu $grupo
	echo $usu ha sido borrado de $grupo con exito;;
0)exit;;
*)echo Opcion Incorrecta;;
esac
done
