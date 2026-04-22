#!/bin/bash

CONTADOR=1

echo "Loop Until"
until [ $CONTADOR -gt 5 ]; do
	echo "Contagem: $CONTADOR"
	CONTADOR=$((CONTADOR + 1))
done

CONTADOR2=1
echo "Loop While"
while [ $CONTADOR2 -le 5 ]; do
	echo "Contagem: $CONTADOR2"
	CONTADOR2=$((CONTADOR2 + 1))
done

echo "Loop For"
for ITEM in item1 item2 item3; do
	echo "Processando: $ITEM"
done

echo "For para percorrer arquivos"
for ARQUIVO in *.sh; do
	echo "Script encontrado: $ARQUIVO"
done
