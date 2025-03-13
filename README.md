# Raspberry Pi 5 Video Looper

## Contents
- [Introduction](#introduction)
- [Setup](#setup)
- [Usage](#usage)

## Introduction
This is a (very simple) video looper designed to run on the Raspberry Pi 5. Existing Video loopers are not currently supported on Pi 5, and so this repo was created to work on Pi5 hardware.

On boot, the [copyfiles.sh](/copyfiles.sh) script will copy any video files on a connected USB drive to a local videos directory. The [playback.sh](/playback.sh) script then uses VLC player to loop the playlist of videos stored on the pi.

Should work on Raspberry Pi OS and Raspberry Pi OS Lite builds.

Accepted video formats:
- .mp4
- .avi
- .mov
- .mkv
- .flv
- .wmv
- .webm

## Setup
### Configure Auto Login

1. <code>sudo raspi-config</code>
2. Select <code>1 System Options</code>
3. Select <code>Boot / Auto Login</code>
4. Select <code>Console Autologin</code>
5. Select <code>Finish</code>

### Clone Repo - with Git
``` bash
# Install git
sudo apt install git

# Clone repo to home directory
# (requires internet connection)
cd ~
git clone https://github.com/JHathway/Pi5VideoLooper.git
```

### Clone Repo - without Git
1. Download this repo as a .zip file.
2. Extract files from .zip file.
3. Copy the following files to a USB drive:
    - <code>copyfiles.sh</code>
    - <code>install.sh</code>
    - <code>playback.sh</code>
4. Connect USB drive to your pi.
5. Run the following commands:

``` bash
# Mount USB drive
sudo mount /dev/sda1 /mnt

# Create project folder in home directory
cd ~
sudo mkdir Pi5VideoLooper

# Copy repo files to project folder
sudo cp /mnt/copyfiles.sh Pi5VideoLooper/
sudo cp /mnt/install.sh Pi5VideoLooper/
sudo cp /mnt/playback.sh Pi5VideoLooper/
```

### Run Install Script

``` bash
cd ~/Pi5VideoLooper
sudo bash install.sh
```

The pi will reboot after installation and should be ready to go.

## Usage
1. Load a USB drive with any videos you want to play.
2. Insert the USB drive into the pi.
3. Power up/reboot the pi.