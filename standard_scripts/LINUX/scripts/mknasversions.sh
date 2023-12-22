#! /bin/bash


pushd . > /dev/null


mkdir ALL
cd ALL
mkdir STANDARD
mkdir OPTIONAL
cd STANDARD
mkdir NORMAL
mkdir SHAREWARE
cd ..
cd OPTIONAL
mkdir NORMAL
mkdir SHAREWARE
cd ..
cd ..

while read line
do
 echo Creating $line...
 if [ -d $line ]; then
  echo There\'s already a directory named $line!
 else
  mkdir $line

  cd $line
  pushd . > /dev/null
  . mknastypes2.sh
  popd > /dev/null
  cd ..
 fi
done < $1


popd > /dev/null
