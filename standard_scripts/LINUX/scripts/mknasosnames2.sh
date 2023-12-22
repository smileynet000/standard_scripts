#! /bin/sh


pushd . > /dev/null


echo Making directories for each operating system...
mkdir OS
cd OS


while read -a line
do
 echo Creating ${line[0]}...
 if [ -d ${line[0]} ]; then
  echo There\'s already a directory named ${line[0]}
 else
  mkdir ${line[0]}
 fi

 cd ${line[0]} 

 while read -a line2
 do
  echo Creating ${line2[0]}...
  if [ -d ${line2[0]} ]; then   
   echo There\'s already a directory named ${line2[0]}
  else
   mkdir ${line2[0]}

   cd ${line2[0]}

   if [ ${line2[1]} == "(none)" ]; then
    cd ..
    continue
   fi

   pushd . > /dev/null
   . mknastypes3.sh ${line2[1]}
   popd > /dev/null

   cd ..
  fi
 done < ${line[1]}

 cd ..
done < /etc/settings/Operating_Systems/osnames.sdr


popd > /dev/null
