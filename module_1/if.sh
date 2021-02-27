#!/usr/bin/env bash

# Existem várias formas de se fazer condicionais no shell script, abaixo vão
# algumas

VAR_1=""
VAR_2=""

# 1
if [[ "$VAR_1" = "$VAR_2" ]]; then
  echo "Equals"
fi

# 2
if [[ "$VAR_1" = "$VAR_2" ]]
then
  echo "Equals"
fi

# 3
if test "$VAR_1" = "$VAR_2"; then
  echo "Equals"
fi

# 4
if test "$VAR_1" = "$VAR_2"
then
  echo "Equals"
fi

# 5
if [ "$VAR_1" = "$VAR_2" ]; then
  echo "Equals"
fi

# 6
if [ "$VAR_1" = "$VAR_2" ]
then
  echo "Equals"
fi

# Em casos de apenas uma condição é boa prática utilizar a forma reduzida
# 7
[[ "$VAR_1" = "$VAR_2" ]] && echo "Equals"
# 8
[ "$VAR_1" = "$VAR_2" ] && echo "Equals"
