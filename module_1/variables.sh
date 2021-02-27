#!/usr/bin/env bash

# Normalmente se usa o comando abaixo, mas melhor utilizar o comando acima pois
# se o script for portado para outro sistema pode ser que o mesmo não encontre
# o bash pelo endereço absoluto abaixo
## -> #!/bin/bash

# As variáveis do tipo string podem ser escritas com as aspas duplas ou sem,
# porém é aconselhável usar com aspas por via de regra, pois dependendo do caso
# se a string tiver espaço vai dar erro na leitura dessa variável
NAME="Gustavo
Satana
Domingueti"

# Lê a variável NAME. Porém por via de regra se a variável é do tipo string é
# boa prática usar aspas duplas também no echo da mesma para manter a formatação
echo $NAME # <- Funciona mas não respeita a formatação (quebra de linha)
echo "$NAME" # <- Funciona e obedece a formatação (quebra de linha)

# -----------------------------------------------------------------------------
# Variáveis globais é boa prática declarar sempre com letras maiúsculas, em
# contrapartida, variáveis dentro de funções se declara com letras minúsculas
# -----------------------------------------------------------------------------

NUMBER_1=24
NUMBER_2=45

# para fazer cálculos se usa nativamente $(()) envolvendo os números
TOTAL=$(($NUMBER_1 + $NUMBER_2))

echo $TOTAL

# Variáveis também são muito úteis para armazenar comandos
# E para comandos se usa $()
CAT="$(cat /etc/passwd | grep dominguetigs)"

echo "$CAT"
