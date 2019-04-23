#!/bin/bash
for i in $(ls | egrep -i 'Y1819-CM[0-9]{4,6}-Lec[abAB]-week[0-9]{0,2}.mp4' ); do             
 echo  "Processing $i";
 mkdir "$i-TEMP"    
 #python3 jumpcutter.py --input_file $i --sounded_speed 1 --silent_speed 999999 --frame_margin 2
 sh sub-process.sh $i &     
done
tail -f log.txt
