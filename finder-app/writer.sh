#!/bin/sh
writefile=$1
writestr=$2

if [ $writefile == "" ]
then
    echo "No file provided"
    exit 1
fi

if [ $writestr == "" ]
then
    echo "No string provided"
    exit 1
fi


echo $writestr > $writefile