#!/bin/bash
# Monitor de serviço industrial
# Verifica se o MQTT está rodando e publica status via MQTT

BROKER="localhost"
TOPICO="fabrica/gateway/status"
SERVICO="mosquitto"

while true; do
	if systemctl is-active --quiet $SERVICO; then
		STATUS="online"
	else
		STATUS="offline"
	fi

	TIMESTAMP=$(date '+%Y-%m-%dT%H:%M:%S')
	MENSAGEM="{\"servico\": \"$SERVICO\", \"status\": \"$STATUS\", \"timestamp\": \"$TIMESTAMP\"}"

	mosquitto_pub -h $BROKER -t $TOPICO -m "MENSAGEM"
	echo "[$TIMESTAMP] Publicado: $MENSAGEM"

	sleep 5
done


