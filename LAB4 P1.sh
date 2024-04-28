#!/bin/bash

# Determine the permission based on the remainder when divided by 3
remainder=$(( $1 % 3 ))
if [ $remainder -eq 0 ]; then
    permission="444"  # r-- r-- r--
elif [ $remainder -eq 1 ]; then
    permission="222"  # -w- -w- -w-
elif [ $remainder -eq 2 ]; then
    permission="111"  # --x --x --x
fi

# Create the file with the calculated permission
filename="file01.txt"
touch $filename
chmod $permission $filename

echo "File '$filename' created with permission $permission."

