#!/bin/bash

DATA_FILE="../data/studentdata.csv"

echo "=== HPC Workshop Data Analysis ==="
echo "File: $DATA_FILE"
echo

# Count total rows (excluding header)
rows=$(tail -n +2 "$DATA_FILE" | wc -l)
echo "Number of students: $rows"

# Calculate average grade using awk
avg=$(tail -n +2 "$DATA_FILE" | awk -F, '{sum+=$4} END {print sum/NR}')
echo "Average grade: $avg"

# Show first 5 students from Toronto
echo "First 5 Students from Toronto:"
grep "Toronto" "$DATA_FILE" | head -n 5

