#!/bin/bash
# File Copy Script

usb_name="sda1"

# Define the directories
usb_dir="/dev/sda1"
source_dir="/mnt/usb"
target_dir="/home/pi/Videos"

# Check if USB is already mounted
if mountpoint -q "$usb_dir"; then
    sudo umount -l "$usb_dir"
fi

# Find USB
echo "Searching for USB drive..."
if ! lsblk -o NAME | grep -q  "$usb_name"; then
    echo "No USB found."
    sleep 3
    exit 1
fi

echo "USB device found :$usb_dir."

# Mount USB
echo "Moutning USB..."
sudo mount "$usb_dir" "$source_dir"

# Check if mounted successfully
if [ $? -eq 0 ]; then
    echo "Device $usb_dir mounted at $source_dir."
else
    echo "Failed to mount device $usb_dir."
    sleep 3
    exit 1
fi

# List of video file extensions to consider
video_extensions="mp4|avi|mov|mkv|flv|wmv|webm"

# Remove all files in the target directory
echo "Removing all files in $target_dir..."
sudo rm -rf "$target_dir"/*

# Find and copy all video files from source directories to the target directory
echo "Copying video files from $source_dir to $target_dir..."

find "$source_dir" -type f | grep -E "\.(${video_extensions})$" | while read -r file; do
    cp "$file" "$target_dir"
    if [ $? -eq  0 ]; then
        echo "File copied: $file"
    else
        echo "Failed to copy file: $file"
    fi
done

sudo umount "$source_dir"
echo "Device $usb_dir unmounted."

# Finish
echo "Operation completed."