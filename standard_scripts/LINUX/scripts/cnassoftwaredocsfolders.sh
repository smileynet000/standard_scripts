#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: cnassoftwaredocsfolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo Making Standard Directories for Software Docs...

 echo GENERAL
 mkdir GENERAL

 cd GENERAL
 . mknasosnames2.sh
 cd ..

 echo
 echo

 echo SPECIFIC
 mkdir SPECIFIC

 . cnassoftwarefolders.sh $1/SPECIFIC
 echo
 echo

 echo Done!

 popd > /dev/null
fi
