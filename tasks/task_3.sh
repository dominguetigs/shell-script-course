#!/usr/bin/env bash
#
# task_3.sh - Cria uma sequência decrescente de asteriscos de 100 (default) asteriscos por linha até 0 (default) 
#
# Site:       https://github.com/dominguetigs
# Autor:      Gustavo Dominguti
# Manutenção: Gustavo Domingueti
#
# ------------------------------------------------------------------------ #
#
#  Exemplo:
#      $ ./task_3.sh 0 5
#       ******
#       *****
#       ****
#       ***
#       **
#       *
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 28/02/2021, Gustavo Domingueti:
#       - Cria dinâmica para pegar 2 parâmetros pelo comando, um mínimo e um máximo
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.0.17
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #

MIN=$1
MAX=$2

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

[ -z $MIN ] && MIN=0
[ -z $MAX ] && MAX=100

[ $MIN -ge $MAX ] && exit 1

for i in $(seq $MIN $MAX); do
    for j in $(seq $i $MAX); do 
        printf "*"
    done
    printf "\n"
done

#-----------------------------------------------------------------------------------------------------------------#