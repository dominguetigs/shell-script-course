#!/usr/bin/env bash

# chaves_flags.sh - Extrai usuários de /etc/passwd
#
# Site:       https://github.com/dominguetigs
# Autor:      Gustavo Domingueti
# Manutenção: Gustavo Domingueti
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair os usuários de /etc/passwd e colocar em maiúsculo e em ordem alfabética.
#
#  Exemplos:
#      $ ./chaves_flags.sh -s -m
#      Neste exemplo os nomes são colocados em ordem alfabética e em maiúsculo.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 01/03/2021, Gustavo:
#      - Adiciona -h, -v e -s
#   v1.1 01/03/2021, Gustavo:
#      - Muda de if para case
#      - Adiciona basename
#   v1.2 01/03/2021, Gustavo:
#      - Adiciona -m
#      - Adiciona 2 flags
#   v1.3 01/03/2021, Gustavo:
#      - Adiciona while com shift e teste de variável
#      - Adiciona 2 flags
#
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.0.17
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
USERS="$(cat /etc/passwd | cut -d : -f 1)"
HELP_MESSAGE="
    $(basename $0) - [Options]

        -h - Help menu
        -v - Version
        -s - Sort output
        -m - Uppercase
"
VERSION="v1.3"
SORT_FLAG=0
UPPERCASE_FLAG=0

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

# v1.0
# if [ "$1" = "-h" ]; then
#     echo "$HELP_MESSAGE" && exit 0
# fi

# if [ "$1" = "-v" ]; then
#     echo "$VERSION" && exit 0
# fi

# if [ "$1" = "-s" ]; then
#     echo "$USERS" | sort && exit 0
# fi

# echo "$USERS"

# v1.1
# case "$1" in
#     -h) echo "$HELP_MESSAGE" && exit 0 ;;
#     -v) echo "$VERSION" && exit 0      ;;
#     -s) echo "$USERS" | sort && exit 0 ;;
#      *) echo "$USERS"                  ;;
# esac

# v1.2
# case "$1" in
#     -h) echo "$HELP_MESSAGE" && exit 0 ;;
#     -v) echo "$VERSION" && exit 0      ;;
#     -s) SORT_FLAG=1                    ;;
#     -m) UPPERCASE_FLAG=1               ;;
#      *) echo "$USERS"                  ;;
# esac

# [ $SORT_FLAG -eq 1 ] && echo "$USERS" | sort && exit 0
# [ $UPPERCASE_FLAG -eq 1 ] && echo "$USERS" | tr [a-z] [A-Z]

#v1.3
while test -n "$1"
do
    case "$1" in
        -h) echo "$HELP_MESSAGE" && exit 0                           ;;
        -v) echo "$VERSION" && exit 0                                ;;
        -s) SORT_FLAG=1                                              ;;
        -m) UPPERCASE_FLAG=1                                         ;;
         *) echo "Invalid option. See help with -h param." && exit 1 ;;
    esac
    shift
done

[ $SORT_FLAG -eq 1 ] && USERS=$(echo "$USERS" | sort)
[ $UPPERCASE_FLAG -eq 1 ] && USERS=$(echo "$USERS" | tr [a-z] [A-Z])

echo "$USERS"

# ------------------------------------------------------------------------ #
