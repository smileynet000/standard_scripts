#! /bin/bash


pushd . > /dev/null


cd ~
if [ -d ./Documents ]; then
 cd Documents
else
 mkdir Documents
 cd Documents
fi


echo DOCUMENTS
mkdir DOCUMENTS

echo SYSTEM
mkdir SYSTEM

echo current_project
mkdir current_project

echo Projects
mkdir Projects

cd Projects
echo Projects/NAMED
mkdir NAMED

echo Projects/UNAMED
mkdir UNNAMED
cd ..

popd > /dev/null
