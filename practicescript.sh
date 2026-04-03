#!/bin/bash
#step 1 check argument
if [ $# -ne 1 ]; then 
echo "Usage: $0 log_file"
exit 1
fi
# Step 2: Assign file
log_file=$1
#Step 3: Check file exists
if [ ! -f "$log_file" ];then
echo "file does not exist"
exit 1
fi

echo "....Log Analyzer..."
#step 4: total lines count
echo "total lines"
wc -l < "$log_file"

#step 5: find word hello 
echo "hello word count"
grep -c "hello" "$log_file"

echo "windows word count"
grep -c "windows" "$log_file"

echo "Top 5 words:"
tr '[:upper:]' '[:lower:]' < "$log_file" | \
tr -c '[:alnum:]' '\n' | \
grep -v "^$" | \
sort | uniq -c | sort -nr | head -5 
# tr-c \n # tr -c will replace non-alphanumeric characters with newline 
#grep -v means emplty lines remove chestundi
#sort | uniq -c ante repeated words ni sort cheyadam nr menas nueric reverse order