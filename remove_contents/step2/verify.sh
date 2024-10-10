#!/bin/bash

get_5th_sentence() {
    local file=$1
    local content=$(<"$file")
    echo "$content" | awk -v RS='[.!?]' 'NR==5 {print; exit}'
}

sentence1=$(get_5th_sentence "article.txt")
sentence2=$(get_5th_sentence "original_article.txt")

echo "sentence1: $sentence1"
echo "sentence2: $sentence2"

if [ "$sentence1" == "$sentence2" ]; then
    exit 1
else
    exit 0
fi