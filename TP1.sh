#!/bin/bash

input_dir="$1"
output_dir="$2"
counter=1

find "$input_dir" -type f | while read -r file; do
	dir_name=$(dirname "$file")
	base_name=$(basename "$file")
	new_name="${counter}${base_name}"
	cp "$file" "$output_dir/$new_name"
	counter=$((counter + 1))
done
