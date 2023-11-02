#!/bin/bash

# Function to calculate MD5 and save to the output file
calculate_md5() {
    input_file="$1"
    output_file="$2"

    # Check if the input file exists
    if [ ! -f "$input_file" ]; then
        echo "Error: Input file '$input_file' not found."
        exit 1
    fi

    # Calculate MD5 and save to the output file
    md5sum "$input_file" > "$output_file"
    echo "MD5 of '$input_file' saved to '$output_file'."
}

# Check for correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_file> <output_file>"
    exit 1
fi

# Assign input and output files to variables
input_file="$1"
output_file="$2"

# Call the calculate_md5 function
calculate_md5 "$input_file" "$output_file"
