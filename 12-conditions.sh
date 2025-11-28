#!/bin/bash

# Basic script to check if a number is prime
echo "Enter a positive number: "
read num

# Check if input is a positive integer
if ! [[ "$num" =~ ^[0-9]+$ ]] || [[ $num -le 1 ]]; then
    echo "Please enter a number greater than 1"
    exit 1
fi

# Check divisibility from 2 to sqrt(num)
is_prime=true
for ((i=2; i*i<=num; i++)); do
    if [[ $((num % i)) -eq 0 ]]; then
        is_prime=false
        break
    fi
done

if [[ $is_prime == true ]]; then
    echo "$num is PRIME"
else
    echo "$num is NOT PRIME"
fi