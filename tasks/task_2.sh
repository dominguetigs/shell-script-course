#!/usr/bin/env bash

# 1
for i in $(seq 0 10); do
    if [[ $(($i % 2)) = 0 ]]; then
        echo "$i is divisible by 2"
    fi
done

# 2
for i in $(seq 0 10); do
    [ $(($i % 2)) -eq 0 ] && echo "Number $i is divisible by 2"
done

