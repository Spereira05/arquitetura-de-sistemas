#!/bin/bash


criar_arquivo_txt() {

    nome_do_folder=$(basename "$PWD")

    nome_do_arquivo="${nome_do_folder}.txt"
    echo "script_sample_folder-'${nome_do_arquivo}'" > "$nome_do_arquivo"

    echo "Arquivo '$nome_do_arquivo' criado com sucesso em '$PWD' com o seguinte conteúdo:"
    cat "$nome_do_arquivo"
}

criar_arquivo_txt



