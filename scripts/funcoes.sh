#!/bin/bash

checar_sensor() {
   local nome_sensor=$1
   local valor=$((  $RANDOM % 101 ))

   if [ "$valor" -gt 80 ]; then
	echo "ALERTA: $nome_sensor crítico! Valor: $valor"
   else
	echo "$nome_sensor: normal. Valor: $valor"
   fi
}

for rodada in {1..3}; do
    echo "--- Rodada $rodada ---"

    checar_sensor "Temperatura"
    checar_sensor "Pressão"
    checar_sensor "Umidade"

    sleep 1
    echo ""
done
