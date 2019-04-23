#!/bin/bash
for i in $(ls | egrep -i "$1" ); do             
 echo  "Processing $i";
 mkdir "$i-TEMP"    
 #python3 jumpcutter.py --input_file $i --sounded_speed 1 --silent_speed 999999 --frame_margin 2
 sh sub-process.sh $i &     
done
echo "Processes spawned for $1" >> log.txt
