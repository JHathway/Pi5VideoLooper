#!/bin/bash
# Playback Script

################################################################
# Countdown
echo "Starting Video Looper in..."

for ((i=3; i>0; i--)); do
    echo "$i"
    sleep 1
done

# Define directory
target_dir="/home/$USER/Videos"

################################################################
#  Start playlist
echo "Starting Playlist..."

# --no-osd                  - no onscreen display
# --video-on-top            - place video on top of all windows
# --disable-screensaver     - disable screen saver
# --mouse-hide-timeout=10   - hide mouse after 10 milliseconds
# --autoscale               - scale video to fit screen
# --no-video-title-show     - hide video title
# --no-interact             - ignore user inputs
# --fullscreen              - start in fullscreen mode
# --intf http               - enable HTTP interface
# --http-password 123456    - set HTTP interface password (123456)
# --loop                    - loop the playlist when finished
# --playlist-enqueue        - add new videos to the playlist
# --no-media-library        - do not use media library
# --playlist-tree           - use tree-like playlist structure
# --recursive expand        - expand directories recursively
#
# expand "$target_dir"      - define video folder
cvlc --no-osd --video-on-top --disable-screensaver --mouse-hide-timeout=10 --autoscale --no-video-title-show --no-interact --fullscreen --intf http --http-password 123456 --loop --playlist-enqueue --no-media-library --playlist-tree --recursive expand "$target_dir"
echo Error: playlist exit