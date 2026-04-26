#!/bin/bash

for file in $HOME/*
do
    if [ -L "$file" ]; then
        echo "$file is a symbolic link."

    elif [ -f "$file" ]; then
        echo "$file is a regular file."

    elif [ -d "$file" ]; then
        echo "$file is a directory."
    fi

    size=$(stat -c%s "$file")
    owner=$(stat -c%U "$file")
    echo "Size: $size bytes"
    echo "Owner: $owner"
    echo "----------------------"
done

