#!/bin/bash

read -p "Digite seu nome: " NAME
read -p "Digite o setor da fabrica: " FAB
read -p "Digite a temperatura indicada no sensor: " TEMP

echo "Operador: $NAME | Setor: $FAB | Temperatura: $TEMP°C"

read -p "Confirmar registro? (s/n): " CONF
CONF=$(echo "$CONF" | tr '[:upper:]' '[:lower:]')
if [ "$CONF" = "s" ] || [ "$CONF" = "S" ]; then
	echo "Regsitro confirmado"
else
	echo "Registro cancelado"
fi
