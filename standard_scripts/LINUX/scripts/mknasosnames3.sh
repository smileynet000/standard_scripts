#! /bin/bash


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

 mkdir ALL

 if [ -d ${line2[0]} ]; then
  echo There\'s already a directory names ${line2[0]}
 else
  mkdir ${line2[0]}

  cd ${line2[0]}

  #echo ${line[0]}
  #echo ${line[1]}
  #echo ${line2[0]}
  #echo ${line2[1]}

  if [ ${line2[0]} == "(none)" ]; then
   pushd . > /dev/null
    . mknastypes2.sh
   popd > /dev/null
   cd ..
  else
   pushd . > /dev/null
   . mknastypes.sh ${line2[0]}
   popd > /dev/null

   cd ..
  fi
 fi
 done < ${line[1]}

 cd ..
done < /etc/settings/Operating_Systems/osnames.sdr
