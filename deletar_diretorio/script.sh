 #!/bin/bash

# Verifica se o número de argumentos passados é válido
if [ $# -ne 2 ]; then
    echo "Uso: $0 <diretorio> <argumento>"
    exit 1
fi

diretorio="$1"
argumento="$2"

# Verifica se o diretório existe
if [ ! -d "$diretorio" ]; then
    echo "O diretório '$diretorio' não existe."
    exit 1
fi

# Se o argumento for passado e for "true", deleta todos os diretórios
if [ "$argumento" = "true" ]; then
    rm -rf "$diretorio"/*
    echo "Todos os diretórios de '$diretorio' foram deletados."
    exit 0
fi

# Se o argumento não foi passado ou é diferente de "true", deleta somente os diretórios com conteúdo
for dir in "$diretorio"/*; do
    if [ -d "$dir" ] && [ -n "$(ls -A "$dir")" ]; then
        rm -rf "$dir"
        echo "Diretório '$dir' deletado."
    fi
done