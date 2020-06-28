#!/bin/sh 
# Basic script that installs packages based on a file passed as an argument
declare -a deps;
while IFS= read -r line; do
    deps+=($line)
done < "$1"

echo "Dependencies..."

sudo dnf install "${deps[@]}"
