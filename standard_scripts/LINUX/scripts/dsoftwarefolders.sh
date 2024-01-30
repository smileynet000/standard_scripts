#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: dsoftwarefolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


echo Deleting Standard Directories for Software...

echo SOFTWARE
rm -r -f SOFTWARE


echo Done!

 popd > /dev/null
fi
