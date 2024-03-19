 #!/bin/bash

# Verifica se o número de argumentos passados é válido
if [ $# -ne 2 ]; then
    echo "Uso: $0 <diretorio> <caracter>"
    exit 1
fi

diretorio="$1"
caracter="$2"

# Verifica se o diretório existe
if [ ! -d "$diretorio" ]; then
    echo "O diretório '$diretorio' não existe."
    exit 1
fi

# Loop pelos diretórios dentro do diretório especificado
for dir in "$diretorio"/*; do
    # Extrai apenas o nome base do diretório
    nome_dir=$(basename "$dir")
    echo "$nome_dir"
    # Verifica se o caractere especificado está presente no nome base do diretório
    if [[ -d "$dir" && "$nome_dir" == *"$caracter"* ]]; then
        # Remove todo o conteúdo do diretório
        rm -rf "$dir"
        echo "Conteúdo deletado em: $dir"
    fi
done