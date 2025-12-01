#!/bin/bash

# # Initialize a variable
# count=5

# # Loop while the count is less than or equal to 5
# while [ $count -gt 0 ]
# do
#   echo "Time left: $count"
#   sleep 1 # Pause for 1 second
#   count=$((count -1)) # Decrement the count
# done

# echo "Times up!"


# # Check if a filename is provided as an argument
# if [ -z "$1" ]; then
#   echo "Usage: $0 <filename>"
#   exit 1
# fi

# filename="$1"

# # Check if the file exists
# if [ ! -f "$filename" ]; then
#   echo "Error: File '$filename' not found."
#   exit 1
# fi

# Read the file line by line
while IFS= read -r line; do
  # Process each line here
  echo "Processing line: $line"
  # You can perform any operations on the "$line" variable
  # For example, you could parse it, perform calculations, or write to another file.
done < "$21-script-1.sh"

echo "Finished reading file."