#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: cnasdatafolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo current_project
 mkdir current_project
 echo Projects
 mkdir Projects
 echo TEMP
 mkdir TEMP

 cd Projects
 echo Projects/NAMED
 mkdir NAMED
 echo Projects/UNNAMED
 mkdir UNNAMED
 cd ..

 popd > /dev/null
fi
