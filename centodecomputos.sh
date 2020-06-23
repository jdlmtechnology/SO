#!/bin/bash
clear
opc=1
while test [$opc!=0]
do
echo Centro de Computos
echo 1-ABM Usuarios
echo 2-Configuracion de Red
echo 3-Respaldos
echo 4-Logs
echo 5-Seguridad
echo 0-Salir
echo Ingrese una Opcion:
read opc
case $opc in
1) sh verificar.sh;;
2) echo Configuracion de Red;;
3) echo Respaldos;;
4) echo Logs;;
5) echo Seguridad;;
0) exit;;
*) echo Opcion Incorrecta;;
esac
done
