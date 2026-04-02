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
tr '[:upper:] [:lower:]' < "$file" | \  #| means commnad output \ go to next line 
tr -c '[:alnum:]' '\n' | \ # alnum menas alpha and numaric slash n means new line 
grep -v "^$" | \  # search -v meand exclude ^$ means exclde lines
sort | uniq -c | sort -nr | head -5 #sort it uniq means duplicate remove -nr menas numeric reverse



