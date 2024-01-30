#! /bin/bash


pushd . > /dev/null


echo Making directories for each operating system...

while read -a line
do
 echo Creating ${line[0]}...
 if [ -d ${line[0]} ]; then
  echo There\'s already a directory named ${line[0]}
 else
  mkdir ${line[0]}
 fi

 cd ${line[0]}


 
 if [ ${line[1]} == "(none)" ]; then
  pushd . > /dev/null
   . mknames2.sh
  popd > /dev/null
  cd ..
 else
  pushd . > /dev/null
  . mktypes.sh ${line[1]}
  popd > /dev/null

  cd ..
 fi
done < $1


popd > /dev/null
