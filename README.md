# jumpcutter
This program lets you reduce the time of your lecture videos by 25% on average (depending on lecturer). It does this by speeding up the parts of the video where the audio decreases below a certain level, then pauses and silence which usually take up time are removed.
This was forked from carrykh/jumpcutter, I have made some slight modifications for the mass processing of lecture videos. This operation is very resource hungry and the original source code needs a lot of work done to it. I have come up with some slight bodges (for personal use) to make the process a little bit quicker.
I will look into optimising the original python script at a later date, so the process can be lightened for future application.

## My Additions:
I have added some handy sh scripts to automate the process.

## Processing multiple files at once:
  bash process.sh <regex.mp4>
The process.sh script will process all on different threads, so you may want to cut down your batch into seperate sections. See MasterProcess.sh for an example of how to do this.
