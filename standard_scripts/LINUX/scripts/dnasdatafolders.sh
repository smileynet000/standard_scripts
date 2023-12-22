#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: dnasdatafolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


echo current_project
rm -r -f current_project
echo Projects
rm -r -f Projects
echo TEMP
rm -r -f TEMP


 popd > /dev/null
fi
