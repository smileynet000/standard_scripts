#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: dnasbmediafolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo Deleting boot media folders...
 echo WALLPAPER
 rmdir WALLPAPER

 echo SOUNDS
 rmdir SOUNDS

 echo FONTS
 rmdir FONTS

 echo TEMPLATES
 rmdir TEMPLATES

 echo THEMES
 rmdir THEMES

 popd > /dev/null
fi
