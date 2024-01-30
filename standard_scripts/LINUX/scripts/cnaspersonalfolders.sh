#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: cnaspersonalfolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo Making Personal Folders...
 echo
 echo

 echo DRIVES
 mkdir DRIVES

 echo BSCRIPTS
 mkdir BSCRIPTS

 echo SCRIPTS
 mkdir SCRIPTS

 echo SETTINGS
 mkdir SETTTINGS

 echo UISETTINGS
 mkdir UISETTINGS

 echo NETWORKDOCS
 mkdir NETWORKDOCS

 echo DOCS
 mkdir DOCS

 echo SOFTWARE
 mkdir SOFTWARE
 pushd . > /dev/null
 . cnassoftwarefolders.sh SOFTWARE
 popd > /dev/null

 echo MEDIA
 mkdir MEDIA

 echo SOFTWAREDOCS
 mkdir SOFTWAREDOCS
 cd SOFTWAREDOCS
 pushd . > /dev/null
 . cnassoftwaredocsfolders.sh SOFTWAREDOCS
 popd > /dev/null
 cd ..

 echo BMEDIA
 mkdir BMEDIA
 pushd . > /dev/null
 . cnasbmediafolders.sh BMEDIA
 popd > /dev/null

 popd > /dev/null
fi
