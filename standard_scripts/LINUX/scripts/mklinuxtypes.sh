#! /bin/bash


pushd .

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
. mknames.sh
popd
cd ..

cd Mandrake
cd 10.1
pushd .
. mknames.sh
popd
cd ..
cd ..

cd Mandriva
cd 2008.0
pushd .
. mknames.sh
popd
cd ..
cd ..

popd
