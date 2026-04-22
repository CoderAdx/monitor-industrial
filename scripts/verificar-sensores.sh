#!/bin/bash


for SENSOR in temperatura pressao umidade vibração; do
	read -p "Sensor está online?: "  READSENSOR
	READSENSOR=$(echo "$READSENSOR" | tr '[:upper:]' '[:lower:]')
	if [ "$READSENSOR" = "s" ]; then
		echo "RODANDO: O SENSOR $SENSOR está ok"
	else
		echo "ALERTA:O SENSOR $SENSOR está com falha"
	fi
done


