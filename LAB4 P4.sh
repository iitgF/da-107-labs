#!/bin/bash

# Parse command-line arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <day> <time>"
    exit 1
fi

# Extract day and time from command-line arguments
day=$1
time=$2

# Define file name based on the provided table
filename=""

# Check if time is between 09:00 and 12:00 for Monday to Friday
if [ "$time" \> "09:00" ] && [ "$time" \< "12:00" ]; then
    case "$day" in
        "Monday") filename="ML1.txt" ;;
        "Tuesday") filename="ML2.txt" ;;
        "Wednesday") filename="ML3.txt" ;;
        "Thursday") filename="ML4.txt" ;;
        "Friday") filename="ML5.txt" ;;
        *) echo "Invalid day: $day"; exit 1 ;;
    esac
fi

# Check if time is between 14:00 and 17:00 for Monday to Friday
if [ "$time" \> "14:00" ] && [ "$time" \< "17:00" ]; then
    case "$day" in
        "Monday") filename="AL1.txt" ;;
        "Tuesday") filename="AL2.txt" ;;
        "Wednesday") filename="AL3.txt" ;;
        "Thursday") filename="AL4.txt" ;;
        "Friday") filename="AL5.txt" ;;
        *) echo "Invalid day: $day"; exit 1 ;;
    esac
fi

# Check if a file name has been determined
if [ -n "$filename" ]; then
    touch "$filename"
    echo "Created $filename"
else
    echo "No file to create for $day $time"
fi