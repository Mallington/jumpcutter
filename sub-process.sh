#!/bin/bash
echo "Processing file: $1" >> log.txt
workingDirectory="$1-TEMP"
echo "Making temporary directory $workingDirectory" >> log.txt
mkdir "$workingDirectory"

cp default.nix $workingDirectory
cp jumpcutter.py $workingDirectory
cp LICENSE $workingDirectory
cp $1 $workingDirectory 


cd $workingDirectory
echo "Copied:" >> ../log.txt
ls
echo "Starting processing on $1" >> ../log.txt
python3 jumpcutter.py --input_file $1 --sounded_speed 1 --silent_speed 999999 --frame_margin 2 
 
echo "$1 Finished Processing" >> ../log.txt


cd ..
mv $workingDirectory/*_ALTERED.mp4 ./output


echo "Removing $workingDirectory" >> log.txt
sudo rm -r $workingDirectory
