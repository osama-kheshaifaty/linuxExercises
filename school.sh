#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d "," -f 7 | { sum=0; cnt=0; while read n; do sum=$(($sum + $n)); cnt=$(($cnt + 1)); done; avg=$(($sum / $cnt)); echo "sum of the column is $sum and average is $avg"; }
