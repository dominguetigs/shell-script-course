#!/usr/bin/env bash

# Parâmetros que são passadas para o shell script pela linha de comando, por
# exemplo: ./reserved_variables.sh -a -b
# As variáveis -a e -b ficam armazenadas em variáveis reservadas, $1 e $2
# respectivamente
echo "Parameter 1: $1"
echo "Parameter 1: $2"

# Para pegar todos os parâmetros passados -> $*
echo "All parameters: $*"

# Para contagem dos parâmetros enviados -> $#
echo "How many parameters? $#"

# Para verificar a saída do último comando -> $?
# Por padrão se der 0 significa que é sucesso e se der 1 é erro
echo "Last command: $?"

# Todo comando gera um novo PID e para pegar esse número de processo -> $$
echo "PID: $$"

# Para pegar o nome do script que está sendo executado -> $0
echo $0
