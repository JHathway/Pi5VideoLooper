#!/bash/bash
# Installation Script

# Create Videos directory
mkdir /home/pi/Videos

# Replace rc.local
echo "Replacing /etc/rc.local..."
rm -rf /etc/rc.local
cp /home/pi/Pi5VideoLooper/assets/rc.local /etc/

# Make file executable
chmod +x /etc/rc.local
echo "Done."

# Reboot Pi
echo "Rebooting Pi..."
sleep 3
sudo reboot