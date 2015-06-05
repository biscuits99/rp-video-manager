

# rp-video-manager

Video Manager tool by Floob
www.smartretro.co.uk/forums

Tool to quickly update video modes in RetroPie. This will swap between default, shaders and overlays. Designed to emulate a CRT experience on a hi-def TV.
Currently only supports RetroPie 3 beta 2. And it WILL overwrite any custom edits you may have made to system specific retroarch.cfg files.

Installation
============

This should be run from the home directory "/home/pi"

```
wget https://github.com/biscuits99/rp-video-manager/releases/download/{release-number}/rp-video-manager.zip
unzip rp-video-manager.zip
rm rp-video-manager.zip
cd /home/pi/rp-video-manager
chmod 755 videomode.sh
./videomode.sh
```

Uninstall
==========
Make sure your video settings are as you want them, then delete this directory:
/home/pi/rp-video-manager

You can use the "rm -rf rp-video-manager" command
