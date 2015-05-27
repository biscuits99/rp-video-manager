Video output tool by Floob
v0.1 27-05-2015
Overlays made by "patl"
www.smartretro.co.uk/forums

This script will automatically update config files to quickly flip between the standard settings, shaders and overlays.
It is designed for RetroPie 3 beta 2, and ideally 1080p TVs.
It doesnt alter your output resolution, it just applied effects such as shaders or overlays.



Installation
============

Step 1
!!BACKUP!! Please make sure you have made a backup. This tool will overwrite any custom settings you may have made here:
/opt/retropie/configs/(retroarch.cfg files within these system specific folders)
/opt/retropie/configs/all/videomodes.cfg
/opt/retropie/emulators/retroarch/overlays/

Step 2
Remember custom tweaking you may have made will be overwritten, unless you backup.

Step 3
Copy the directory video-manager to
/home/pi/

Step 4
Connect to your pi via SSH and run these commands when logged in
cd video-manager
chmod 755 snes-videomode.sh
./snes-videomode.sh


Uninstall
==========
Make sure your video settings are as you want them, then delete this directory:
/home/pi/video-manager
