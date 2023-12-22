#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: cnasbmediafolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo Making boot media folders...
 echo WALLPAPER
 mkdir WALLPAPER

 echo SOUNDS
 mkdir SOUNDS

 echo FONTS
 mkdir FONTS

 echo TEMPLATES
 mkdir TEMPLATES

 echo THEMES
 mkdir THEMES

 popd > /dev/null
fi
