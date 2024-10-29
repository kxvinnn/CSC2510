#!/bin/bash

if ["$#" -ne 1]; then
	echo "Usage: $0 filename.csv"
	exit 1
fi 

filename="$1"

if [ ! -f "$filename" ]; then 
	echo "File not found"
	exit 1
fi

while IFS="," read -r numberX numberY; do
	sum=$((numberX + numberY))
	echo "$numberX + $numberY = $sum"
done < "$1"
