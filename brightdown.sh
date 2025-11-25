#!/bin/bash


# Diminui o brilho em 1%
brightnessctl set 1%-

# Obtém o brilho atual formatado em percentual (ex: 79%)
BRILHO=$(brightnessctl | grep 'Current brightness' | awk '{print $4}' | tr -d '()%')

# Exibe uma notificação com o brilho atual
notify-send -t 1 -a "Configurações do Monitor" "Brilho da Tela" "${BRILHO}%"
