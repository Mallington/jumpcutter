#!/bin/bash
x=1
pids=()
for i in $(ls | egrep -i "$1" ); do             
 echo  "Processing $i">>log.txt
 mkdir "$i-TEMP"    
 #python3 jumpcutter.py --input_file $i --sounded_speed 1 --silent_speed 999999 --frame_margin 2
 sh sub-process.sh $i &
 pids+=("$!")
 echo  "Spawned: $i">>log.txt     
 x="$(($x+1))" 
done
echo "Processes spawned for $1" >> log.txt
echo "Now Waiting..." >> log.txt

for pid in ${pids[*]}; do
    wait $pid
done

echo "FINSHED! : $1" >> log.txt


