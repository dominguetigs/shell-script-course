#!/usr/bin/env bash

if [[ -z $1 ]]
then
    echo "It must have unless one parameter to create sequence!"
else
    min=1
    max=$1

    if [[ $2 ]]
    then
        min=$1
        max=$2
    fi

    for (( i = min; i <= max; i++ ))
    do
        echo $i
    done
fi
