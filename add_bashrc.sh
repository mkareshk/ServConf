#!/bin/bash

# check if the filename is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# cssign the filename to a variable
filename=$1

# check if the file exists and is not empty
if [ ! -e "$filename" ]; then
    echo "Error: The file '$filename' does not exist."
    exit 1
elif [ ! -s "$filename" ]; then
    echo "Error: The file '$filename' is empty."
    exit 1
fi

# append the content of the file to .bashrc
cat "$filename" >> ~/.bashrc

# print a success message
echo "Commands from '$filename' have been added to .bashrc."
