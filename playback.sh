#!/bin/bash
# Playback Script

# Short delay to allow time to transfer files
echo "Starting Video Looper in..."

for ((i="$delay"; i>=1; i--)); do
    echo "$i"
    sleep 1
done

# Define directory
target_dir="/home/pi/Videos"

#  Start playlist
echo "Starting Playlist..."
cvlc --no-osd --video-on-top --disable-screensaver --mouse-hide-timeout=10 --autoscale --no-video-title-show --no-interact --fullscreen --intf http --http-password 123456 --loop --playlist-enqueue --no-media-library --playlist-tree --recursive expand "$target_dir"
echo Error: playlist exit