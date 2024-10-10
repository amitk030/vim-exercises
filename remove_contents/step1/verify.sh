#!/bin/bash

origin_file_content=$(<original_article.txt)

original_last_sentence=$(echo "$origin_file_content" | awk -v RS='[.!?]' 'NF{last=$0} END{print last}')

original_second_word=$(echo "$original_last_sentence" | awk '{print $2}')

file_content=$(<article.txt)

last_sentence=$(echo "$file_content" | awk -v RS='[.!?]' 'NF{last=$0} END{print last}')

second_word=$(echo "$last_sentence" | awk '{print $2}')

if [ "$original_second_word" != "$second_word" ]; then
    echo "The second word of the last sentence is not the same as the original one."
    exit 0
else
    echo "The second word of the last sentence is the same as the original one."
    exit 1
fi