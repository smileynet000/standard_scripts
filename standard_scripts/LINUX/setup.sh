#! /bin/bash


echo Installing standard scripts...
echo 
sudo chmod +x scripts/*
sudo cp scripts/* /bin
sh scripts/list_commands.sh > commands.txt

pushd . > /dev/null
sudo mkdir -p /usr/share/standard_scripts
sudo cp commands.txt /usr/share/standard_scripts
popd > /dev/null
