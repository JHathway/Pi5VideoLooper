#!/bin/bash
# Script to be run on boot

# Copy video files from USB
bash /home/pi/Pi5VideoLooper/copyfiles.sh

# Start video looper
su -c "bash /home/pi/Pi5VideoLooper/playback.sh" - pi