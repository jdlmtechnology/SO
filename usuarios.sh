#!/bin/bash
clear
opc=1
while test [$opc!=5]
do
echo Usuarios
echo 1-Agregar Usuario
echo 2-Eliminar Usuario
echo 3-Modificar Usuario
echo 4-Listar Usuarios
echo 5-Buscar Usuario
echo 0-Salir
echo Ingrese una Opcion:
read opc
case $opc in
1)clear
 echo Ingrese Nombre de Usuario:
	read usu
	sudo useradd -m -d /home/$usu $usu
	echo $usu ha sido creado con exito;;
2)clear
 echo Ingrese Nombre de Usuario:
	read usu
	sudo userdel -r $usu
	echo $usu ha sido eliminado con exito;;
3)clear
 echo Ingrese Nombre de Usario:
	read usu
	echo Ingrese Nuevo Nombre de Usuario:
	read usu2
	sudo usermod -l $usu2 $usu
	sudo usermod -d /home/$usu2 -m  $usu2
	echo $usu ha sido cambiado por $usu2 con exito;;
4)clear
 cut -d : -f1 /etc/passwd;;
5)clear
 echo Ingrese Nombre de Usuario:
	read usu
	grep -w $usu /etc/passwd;;
0) exit;;
*) echo Opcion Incorrecta;;
esac
done
