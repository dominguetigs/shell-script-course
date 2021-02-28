#!/usr/bin/env bash

echo "======= Loop 1 (for)"
for (( i = 0; i < 10; i++ )); do
    echo $i
done

# Comando nativo seq aonde o retorno do mesmo é uma lista
echo "======= Loop 2 (seq)"
for i in $(seq 0 9); do
    echo $i
done

echo "======= Loop 3 (array)"
FRUITS=(
    "orange"
    "grape"
    "pineapple"
    "apple"
)
for i in "${FRUITS[@]}"; do
    echo "$i"
done

echo "======= Loop 4 (while)"
COUNT=0
while [[ $COUNT -lt ${#FRUITS[@]} ]]; do
    echo "${FRUITS[$COUNT]}"
    COUNT=$(($COUNT + 1))
done


# ----------------------------------------------------------------------------------------------------------------------
# Obs.:
# 1. ${FRUITS[@]} pega o array todo (@ significa todo o array)
# 2. ${#FRUITS[@]} é para pegar o tamanho do array (corresponde ao length)
# 3. ${FRUITS[$COUNT]} pega valores dentro do array pelo index