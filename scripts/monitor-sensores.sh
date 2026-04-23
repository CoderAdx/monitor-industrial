#!/bin/bash

rodadas=1
while [ $rodadas -le 3 ]; do
  echo "--- Iniciando varredura: $rodadas ---"
    for i in temperatura pressao umidade; do
	numero=$(( $RANDOM % 101))
 
	if [ "$numero" -gt 80  ]; then
		echo "ALERTA: SENSOR $i acima do limite- Valor $numero"
	else
		echo "SENSOR $i: normal - Valor $numero"
	fi
     done
	echo "--- FIM de varredura: $rodadas ---"
	echo ""

  ((rodadas++))
done
