#!/bin/bash

contagem_alertas=$(grep -c "ALERTA" sistema.log)

echo "Total de alertas: $contagem_alertas"

echo "Sensores e alertas: "
grep "ALERTA" sistema.log | awk '{print $3, $5}'

sed 's/ALERTA/CRITICO/g' sistema.log > critico.log

echo ""
echo "Arquivo critico.log gerado com sucesso!"
