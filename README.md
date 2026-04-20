# Monitor de Ambiente Industrial

Sistema IIoT de monitoramento de ativos industriais — coleta dados de
sensores via MQTT, persiste em banco de séries temporais e visualiza
em dashboard com alarmes configurados.

> Projeto desenvolvido como parte da minha stack IIoT do zero:
> CC + Automação Industrial → Indústria 4.0

## Arquitetura
ESP32 + DHT22
→ MQTT (Mosquitto)
→ Python subscriber
→ TimescaleDB
→ Grafana (dashboard + alarmes)
→ Serviço systemd (24/7)

## Stack

| Camada | Tecnologia |
|---|---|
| Hardware | ESP32 + sensor DHT22 |
| Protocolo | MQTT (Mosquitto) |
| Backend | Python 3 |
| Banco de dados | TimescaleDB |
| Visualização | Grafana |
| Sistema | Linux (Fedora) + systemd |

## Status

🚧 Em desenvolvimento — Fase 1 do roadmap IIoT

## Autor

Ádrya Giuly — [LinkedIn](https://www.linkedin.com/in/adrya-giuly/)
