#!/bin/bash

if [ ! -f article.txt ] || [ ! -f original_article.txt ]; then
  echo "One or both files not found!"
  exit 1
fi

third_paragraph_article=$(awk 'BEGIN { RS=""; FS="\n" } NR==3 { print $0 }' article.txt)

third_paragraph_original=$(awk 'BEGIN { RS=""; FS="\n" } NR==3 { print $0 }' original_article.txt)

if [ "$third_paragraph_article" == "$third_paragraph_original" ]; then
  exit 1
else
  exit 0
fi