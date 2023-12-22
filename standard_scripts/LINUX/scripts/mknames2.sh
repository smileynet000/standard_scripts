#! /bin/bash



echo Making directories for Each Person in the House...

echo Making Directories for Types of Software for All...
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


cat /etc/settings/names.sdr | while read line
do
 echo Creating $line...
 if [ -d $line ]; then   
  echo There\'s already a directory named $line 
 else
  mkdir $line

  cd $line
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
 fi
done
