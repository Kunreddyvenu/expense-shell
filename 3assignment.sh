#!/bin/bash

# Step 1: Check argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

# Step 2: Assign file
log_file=$1

# Step 3: Check file exists
if [ ! -f "$log_file" ]; then
    echo "File does not exist!"
    exit 1
fi

echo "===== Log Analysis ====="

# Step 4: Total lines
echo "Total lines:"
wc -l < "$log_file"

# Step 5: ERROR count
echo "ERROR count:"
grep -c "ERROR" "$log_file"

# Step 6: WARNING count
echo "WARNING count:"
grep -c "WARNING" "$log_file"

# Step 7: Top 5 words
echo "Top 5 words:"
tr '[:upper:]' '[:lower:]' < "$log_file" | \
tr -c '[:alnum:]' '\n' | \
grep -v "^$" | \
sort | uniq -c | sort -nr | head -5