#!/usr/bin/env bash

echo "make"
sed -i 's/:/ /g' $1

awk '{print $2}' $1 >> found.txt
