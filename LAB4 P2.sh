#!/bin/bash

# Convert the argument to lowercase for case-insensitive comparison

# Case statement to handle different days
case $1 in
    "Monday" | "MONDAY" | "monday" | "MON" | "Mon" | "mon")
        dir="Monday"
        content="Goodmorning Monday"
        ;;
    "Tuesday" | "TUESDAY" | "tuesday" | "TUE" | "Tue" | "tue")
        dir="Tuesday"
        content="Goodmorning Tuesday"
        ;;
    "Wednesday" | "WEDNESDAY" | "wednesday" | "WED" | "Wed" | "wed")
        dir="Wednesday"
        content="Goodmorning Wednesday"
        ;;
    "Thursday" | "THURSDAY" | "thursday" | "THURS" | "Thurs" | "thurs")
        dir="Thursday"
        content="Goodmorning Thursday"
        ;;
    "Friday" | "FRIDAY" | "friday" | "FRI" | "Fri" | "fri")
        dir="Friday"
        content="Goodmorning Friday"
        ;;
    "Saturday" | "SATURDAY" | "saturday" | "SAT" | "Sat" | "sat")
        dir="Saturday"
        content="Goodmorning Saturday"
        ;;
    "Sunday" | "SUNDAY" | "sunday" | "SUN" | "Sun" | "sun")
        dir="Sunday"
        content="Goodmorning Sunday"
        ;;
    *)
        echo "Invalid day."
        exit 1
        ;;
esac

# Create directory if it doesn't exist
if [ ! -d "$dir" ]; then
    mkdir "$dir"
fi