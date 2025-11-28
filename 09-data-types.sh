#!/bin/bash

#everyting in shell is consider as string
NUMBER1=100
NUMBER2=200
NAME=DevOps

SUM=$((NUMBER1+NUMBER2+$NAME))

echo "SUM is : ${SUM}"

LEADERS=("Modi" "Putin" "Trudo" "Trump")

echo "All leaders: ${LEADERS[@]}"
echo "First leader: ${LEADERS[0]}"
echo "Second leader: ${LEADERS[1]}"
echo "Third leader: ${LEADERS[2]}"
echo "Fourth leader: ${LEADERS[3]}"
