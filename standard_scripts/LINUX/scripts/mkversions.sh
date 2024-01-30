#! /bin/bash


pushd . > /dev/null


#mkdir ALL
. mknames.sh

while read line
do
 if [ -d $line ]; then
  echo There\'s already a directory named $line!
 else
  cd $line
  . mknames.sh
  cd ..
 fi
done < $1


popd > /dev/null
