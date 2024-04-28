#!/bin/bash

# Check if correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <date> <month> <year>"
    exit 1
fi

# Extract date, month, and year from command-line arguments
date=$1
month=$2
year=$3
tes=0

# Check if date is between 1 and 31
if ! [[ "$date" =~ ^[1-9]$|^1[0-9]$|^2[0-9]$|^3[01]$ ]]; then
    echo "Invalid date: $date"
    tes=1
fi

# Check if month is valid
case "$month" in
    "Jan" | "Feb" | "Mar" | "Apr" | "May" | "Jun" | "Jul" | "Aug" | "Sep" | "Oct" | "Nov" | "Dec")
        ;;
    *)
        echo "Invalid month: $month"
        tes=1
        ;;
esac

# Check if year is in the set {2020, 2021, 2022, 2023, 2024}
case "$year" in
    2020 | 2021 | 2022 | 2023 | 2024)
        ;;
    *)
        echo "Invalid year: $year"
        tes=1
        ;;
esac

# Create directory name in dd-Mmm-YYYY format

if [ $tes -eq 0 ]; then
    # If checks result in false, create a directory with name temp-dir
dirname="${date}-${month}-${year}"
# Check if directory already exists
mkdir "$dirname"
echo "Created directory: $dirname"

elif [ $tes -eq 1 ]; then
    # If checks result in false, create a directory with name temp-dir
mkdir temp-dir
echo "Created directory: temp-dir"

# Copy this script file into the directory temp-dir with name da107-solution.sh
cp "$0" temp-dir/da107-solution.sh
echo "Copied script file to temp-dir as da107-solution.sh"

fi

exit 0

