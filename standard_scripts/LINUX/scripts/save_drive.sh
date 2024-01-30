#! /bin/bash


if [ $# == 3 ]; then
 echo "Saving drive if=$1, of=$2 <blocksize=$3>..."
 
 dd if=$1 conv=sync,noerror | gzip -c | split -a 3 -b $3 - $2

 echo
else
 echo "Usage: $0 <input> <output> <splitsize>"
 echo
 echo "input     - The input file."
 echo "output    - The output file."
 echo "splitsize - The size in megabytes, to split the file into for ouput."
 echo
fi
