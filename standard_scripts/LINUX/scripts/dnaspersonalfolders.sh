#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: dnaspersonalfolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


echo Deleting Personal Folders...
echo
echo

echo DRIVES
rm -r -f DRIVES

echo BSCRIPTS
rm -r -f BSCRIPTS

echo SCRIPTS
rm -r -f SCRIPTS

echo SETTINGS
rm -r -f SETTTINGS

echo UISETTINGS
rm -r -f UISETTINGS

echo NETWORKDOCS
rm -r -f NETWORKDOCS

echo DOCS
rm -r -f DOCS

echo SOFTWARE
rm -r -f SOFTWARE

echo MEDIA
rm -r -f MEDIA

echo SOFTWAREDOCS
rm -r -f SOFTWAREDOCS

echo BMEDIA
rm -r -f BMEDIA

popd > /dev/null
fi
