#!/bin/sh
writefile=$1
writestr=$2

if [ -z "$writefile" ]; then
  echo "No file specified"
  exit 1
fi

if [ -z "$writestr" ]; then
  echo "No string specified"
  exit 1
fi

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile"