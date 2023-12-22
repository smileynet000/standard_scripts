#! /bin/bash


echo Making Directories for Each Type of Linux...
mkdir ALL
mkdir Mandrake
mkdir Mandriva


cd Mandrake
mkdir 10.1
cd ..

cd Mandriva
mkdir 2008.0
cd ..


cd ALL
pushd .
. mknastypes2.sh
popd
cd ..

cd Mandrake
cd 10.1
pushd .
. mknastypes2
popd
cd ..
cd ..

ccd Mandriva
cd 2008.0
pushd .
. mknastypes2
popd
cd ..
cd ..
