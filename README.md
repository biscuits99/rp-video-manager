

# rp-video-manager

Video Manager tool by Floob

www.smartretro.co.uk/forums

Tool to quickly update video modes in RetroPie. This will swap between default, shaders and overlays. Designed to emulate a CRT experience on a hi-def TV.

Currently only supports RetroPie 3 versions (not 2.6.0). And it WILL overwrite any custom edits you may have made to system specific retroarch.cfg files.

Example of the changes this makes here:
https://www.youtube.com/watch?v=wf7M0iOLcrk

Installation
============

This should be run from the home directory "/home/pi"

You can find the release numbers here:
https://github.com/biscuits99/rp-video-manager/releases

```
wget https://github.com/biscuits99/rp-video-manager/releases/download/{release-number}/rp-video-manager.zip
unzip -o rp-video-manager.zip
rm rp-video-manager.zip
cd /home/pi/rp-video-manager
chmod 755 videomanager.sh
./videomanager.sh
```

Uninstall
==========
Make sure your video settings are as you want them, then delete this directory:
/home/pi/rp-video-manager

You can use the "rm -rf rp-video-manager" command
