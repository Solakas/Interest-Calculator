#!/bin/bash

# Simple Interest Calculator in Bash

echo "----------------------------------------"
echo "📈 Simple Interest Calculator"
echo "----------------------------------------"

# Read inputs
read -p "Enter the principal amount (P): " principal
read -p "Enter the annual interest rate (R %): " rate
read -p "Enter the time period in years (T): " time

# Input validation helper function
is_numeric() {
    [[ "$1" =~ ^[0-9]+(\.[0-9]+)?$ ]]
}

if ! is_numeric "$principal" || ! is_numeric "$rate" || ! is_numeric "$time"; then
    echo "❌ Error: All inputs must be valid positive numbers."
    exit 1
fi

# Check if bc is available for decimal math (standard on macOS/Linux)
if command -v bc >/dev/null 2>&1; then
    # Calculate simple interest and total amount using bc (scale=2 for cents/decimals)
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    total=$(echo "scale=2; $principal + $interest" | bc)
else
    # Fallback to integer arithmetic if bc is not installed
    # Note: Bash arithmetic does not support decimals
    # We convert float representation to integers just for simple display, or warn the user.
    principal_int=${principal%.*}
    rate_int=${rate%.*}
    time_int=${time%.*}
    
    interest=$(( (principal_int * rate_int * time_int) / 100 ))
    total=$(( principal_int + interest ))
fi

echo "----------------------------------------"
echo "📊 Results:"
echo "----------------------------------------"
echo "Principal Amount:  $principal"
echo "Interest Rate:     $rate%"
echo "Time Period:       $time years"
echo "----------------------------------------"
echo "Interest Accrued:  $interest"
echo "Total Amount (A):  $total"
echo "----------------------------------------"
