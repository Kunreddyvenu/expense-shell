#!/bin/bash

# read file
#count reapeted words
# top 5 words print
#step 1 creatin a file
echo "creating a smaple file"
echo "hello world hello devops hello windows hello linux" > sample.txt
#step 2 assinging file name
file=sample.txt
#step 3 process
echo "top 5 words:"
tr '[:upper:]' '[:lower:]' < "$file" | \
tr -c '[:alnum:]' '\n' | \
grep -v "^$" | \
sort | uniq -c | sort -nr | head -5

#tr translate sorce to destination ex: upper to lower | output \next line
#tr -c (exclude) alnum alpa and numeric \n means new line
#grep -v ^$ means empty lines need to remove





