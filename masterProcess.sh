#!/bin/bash
echo "Processing lecture videos" >> log.txt
sudo sh process.sh 'Y1819-CM[0-9]{4,6}-Lec[aA]-week[0-9][13579].mp4'
echo "Part 1 Complete" >> log.txt
sudo sh process.sh 'Y1819-CM[0-9]{4,6}-Lec[aA]-week[0-9][02468].mp4'
echo "Part 2 Complete">> log.txt
sudo sh process.sh 'Y1819-CM[0-9]{4,6}-Lec[bB]-week[0-9][13579].mp4'
echo "Part 3 Complete" >> log.txt
sudo sh process.sh 'Y1819-CM[0-9]{4,6}-Lec[bB]-week[0-9][02468].mp4'
echo "Part 4 Complete" >> log.txt
