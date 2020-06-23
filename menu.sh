#!bin/bash
clear
opc=1
while test [$opc!=3]
do
echo Menu
echo 1-Usuarios
echo 2-Grupos
echo 0-Salir
echo Ingrese una Opcion:
read opc
case $opc in
1) sh usuarios.sh;;
2) sh grupos.sh;;
0) exit;;
*) echo Opcion Incorrecta;;
esac
done
