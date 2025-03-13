#!/bin/bash
# Installation script

################################################################
# Make sure script is run as root
if [ "$(id -u)" != "0" ]; then
    echo "Error: must be run as root. Try: sudo install.h"
    exit 1
fi

################################################################
# Install vlc player
echo "Installing vlc player..."
apt-get update
apt install vlc

echo "Done."

################################################################
# Create directory for storing video files
if [ -d "/home/$SUDO_USER/Videos" ]; then
    echo "Requirement satisfied... /home/$SUDO_USER/Videos already exists."
else
    echo "Creating directory: /home/$SUDO_USER/Videos..."
    mkdir /home/$SUDO_USER/Videos
fi

echo "Done."

################################################################
# Add lines to .bashrc to execute copyfiles.sh and playback.sh
echo "Modifying .bashrc script..."
echo "sudo bash /home/$SUDO_USER/Pi5VideoLooper/copyfiles.sh" >> /home/$SUDO_USER/.bashrc 
echo "bash /home/$SUDO_USER/Pi5VideoLooper/playback.sh" >> /home/$SUDO_USER/.bashrc

echo "Done."

################################################################
# Reboot pi
echo "Rebooting in..."

for ((i=3; i>0; i--)); do
    echo "$i"
    sleep 1
done

reboot