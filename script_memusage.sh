#!/bin/bash/

read -p "enter a number : " NUM

for i in {1..10}; do
    echo "$NUM*$i = $((NUM*i))"
done

