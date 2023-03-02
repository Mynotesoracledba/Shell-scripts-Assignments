#!/bin/bash
  
echo "Enter the file name details"
read filename


# Use grep, sort, and uniq to count the frequency of each word
wordcount=$(grep -oE '\w+' $filename | sort | uniq -c | sort -nr)

# Loop through each line of the wordcount variable and print the word and its frequency
echo "Most common words in $filename:"
echo "-----------------------------"
while read -r line; do
    # Extract the frequency and word from the line
    frequency=$(echo $line | awk '{print $1}')
    word=$(echo $line | awk '{print $2}')

    # Print the word and its frequency
    echo "$word: $frequency"
done <<< "$wordcount"