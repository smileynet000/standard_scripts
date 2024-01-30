#! /bin/bash


pushd . > /dev/null


mkdir ALL

while read line
do
 echo Creating $line...
 if [ -d $line ]; then
  echo There\'s already a directory named $line!
 fi
 mkdir $line
done < $1


popd > /dev/null
