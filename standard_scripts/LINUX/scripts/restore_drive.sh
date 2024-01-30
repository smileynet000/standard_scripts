#! /bin/bash


if [ $# == 2 ]; then
 echo "Restoring drive if=$1, of=$2..."
 
 cat $1* | gunzip -c | dd of=$2

 echo
else
 echo "Usage: $0 <input> <output> <splitsize>"
 echo
 echo "input     - The input file."
 echo "output    - The output file."
 echo
fi
