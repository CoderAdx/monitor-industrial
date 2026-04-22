#!/bin/bash

read -p "Digite o nome do sensor: " SENSOR
read -p "Digite a leitura atual: " LEIT
read -p "Digite a leitura máxima permitida: " LEITMAX

echo "Nome: $SENSOR | Leitura Atual: $LEIT | Leitura Máxima: $LEITMAX"
read -p "Deseja confirmar o registro? (s/n)" CONF

CONF=$(echo "$CONF" | tr '[:upper:]' '[:lower:]')
if [ "$CONF" = "s" ]; then
	echo "Registro Confirmado"
	echo "|Nome do Sensor: $SENSOR"
	echo "|Leitura atual: $LEIT"
	echo "|Leitura máxima: $LEITMAX"
else
	echo "Registro Cancelado"
fi




