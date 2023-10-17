#!/bin/bash

if [ -z "$1" ]; then
  echo "usage: ./mean.sh <column> [file.csv]" >&2
  exit 1
fi

if [ -n "$2" ]; then
  file="$2"
else
  file="/dev/stdin"
fi

cut -d "," -f "$1" "$file" | tail -n +2 | {
  sum=0
  count=0
  while read value; do
    sum=$(echo "$sum + $value" | bc)
    count=$((count + 1))
  done
  mean=$(echo "scale=2; $sum / $count" | bc)
  echo "The mean of column $1 is $mean"
}
