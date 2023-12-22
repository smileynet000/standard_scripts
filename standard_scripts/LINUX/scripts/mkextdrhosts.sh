#! /bin/bash



echo Making directories to match known external drive host names...


cat /etc/settings/hosts/External_Drives.sdr | while read line
do
 echo Creating $line...
 if [ -f $line ]; then   
  echo There\'s already a directory named $line 
 else
  mkdir $line
 fi
done
