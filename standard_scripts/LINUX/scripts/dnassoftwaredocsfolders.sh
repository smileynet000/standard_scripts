#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: dnassoftwaredocsfolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


echo Deleting Standard Directories for Software Docs...

echo GENERAL
rm -r -f GENERAL

echo SPECIFIC
rm -r -f SPECIFIC


echo Done!

 popd > /dev/null
fi
