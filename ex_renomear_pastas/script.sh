#!/bin/bash

function renomear_diretorio() {
    echo "start of the function"
    if [ "$#" -ne 2 ]; then
        echo "Uso: $0 <diretorio_pai> <novo_nome>"
        exit 1
    fi

    diretorio_pai="$1"
    novo_nome="$2"

    if [ ! -d "$diretorio_pai" ]; then
        echo "Este diretorio '$diretorio_pai' não existe"
        exit 1
    fi

    cd "$diretorio_pai" || exit 1

    for diretorio_atual in *; do
        if [ -d "$diretorio_atual" ]; then
            novo_nome_subdiretorio="${novo_nome}"
            mv "$diretorio_atual" "$novo_nome_subdiretorio"
            echo "Diretório renomeado: '$diretorio_atual' para '$novo_nome_subdiretorio'"
        fi
    done
}

renomear_diretorio "$1" "$2"



