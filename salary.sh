#!/bin/bash

read -p "Enter basic salary: " basic

dp=$(echo "$basic * 0.50" | bc)
temp=$(echo "$basic + $dp" | bc)

da=$(echo "$temp * 0.35" | bc)
hra=$(echo "$temp * 0.08" | bc)
ma=$(echo "$temp * 0.03" | bc)
pf=$(echo "$temp * 0.10" | bc)

salary=$(echo "$basic + $dp + $da + $hra + $ma - $pf" | bc)

echo "Salary: $salary"
