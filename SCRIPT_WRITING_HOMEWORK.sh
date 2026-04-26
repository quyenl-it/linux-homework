#!/bin/bash

# Script: check file types in home directory
# Author: Quyen
# Date: 2026

for file in $HOME/*
do
    name=$(basename "$file")

    # =========================
    # SYMBOLIC LINK
    # =========================
    if [ -L "$file" ]; then
        echo "$name is a symbolic link."

        original=$(readlink "$file")
        echo "The original file for $name is : $original"

        size=$(stat -c %s "$file")
        owner=$(stat -c %U "$file")

        echo "The size of $original is : $size bytes."
        echo "The $original is owned by: $owner"

    # =========================
    # REGULAR FILE
    # =========================
    elif [ -f "$file" ]; then
        echo "$name is a regular file."

        size=$(stat -c %s "$file")
        owner=$(stat -c %U "$file")

        echo "The size of $name is : $size bytes."
        echo "The $name is owned by: $owner"

    # =========================
    # DIRECTORY
    # =========================
    elif [ -d "$file" ]; then
        echo "$name is a directory."

        size=$(stat -c %s "$file")
        owner=$(stat -c %U "$file")

        echo "The size of $name is : $size bytes."
        echo "The $name is owned by: $owner"
    fi

    echo "----------------------"

done








