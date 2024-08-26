#!/bin/sh

filesdir=$1
string=$2


if [ filesdir == "" ]
then
    echo "No directory provided"
    exit 1
fi

if [ string == "" ]
then
    echo "No string provided"
    exit 1
fi

if [ ! -d $filesdir ]
then
    echo "Directory does not exist"
    exit 1
fi

file_count=0
matching_lines=0

for file in $(find "$filesdir" -type f); do
    file_count=$((file_count+1))
    matching_lines=$((matching_lines+$(grep -c "$string" "$file")))
done


echo "The number of files are $file_count and the number of matching lines are $matching_lines"