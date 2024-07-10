# Raspberry Pi 5 Video Looper

## Contents
- [Introduction](#introduction)
- [Setup](#setup)
    - [Download](#download)
    - [Dependencies](#dependencies)
    - [Installation](#installation)
- [Usage](#usage)

## Introduction
This is a (very simple) video looper designed to run on the Raspberry Pi 5. Existing Video loopers are not currently supported on Pi 5, and so these scripts were created to work on Pi5 hardware.

Accepted video formats are:
- .mp4
- .avi
- .mov
- .mkv
- .flv
- .wmv
- .webm

## Setup
### Download
Clone this repo to <code>/home/pi</code> directory:

```
cd /home/pi
git clone https://github.com/JHathway/Pi5VideoLooper.git
```

### Dependencies
You will need to ensure that vlc is installed on your Pi.

``` bash
vlc --version
```

You can install it by running the following command:

``` bash
sudo apt-get install vlc
```

### Installation
To install the video looper, run the [install.sh](/install.sh) script:

``` bash
cd /home/pi/VideoLooper
sudo bash ./install.sh
```

After installing the video looper, the Pi will reboot.

## Usage
Using the video looper is as simple as:

1. Load a USB drive with any videos you want to play.
2. Insert the USB drive into the Pi and reboot.

When booted, the Pi will copy all video files on the USB drive (see [introduction](#introduction) for accepted file types) to a playlist on the Pi. The playlist will then automatically start looping.