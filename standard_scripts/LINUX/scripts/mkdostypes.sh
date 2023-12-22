#! /bin/bash


pushd .

echo Making Directories for Each Type of DOS...
mkdir ALL
mkdir FreeDOS
mkdir PC-DOS
mkdir MS-DOS

cd ALL
pushd .
. mknames.sh
popd
cd ..

cd FreeDOS
pushd .
. mknames.sh
popd
cd ..

cd PC-DOS
pushd .
. mknames.sh
popd
cd ..

cd MS-DOS
pushd .
. mknames.sh
popd
cd ..

popd
