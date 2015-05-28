

# rp-video-manager

Video output tool by Floob
v0.1 27-05-2015
Overlays made by "patl"
www.smartretro.co.uk/forums

Tool to quickly update video modes in RetroPie. This will swap between default, shaders and overlays.
Currently only supports RetroPie 3 beta 2. And it WILL overwrite any custom edits you may have made to system specific retroarch.cfg files.

This currently only alters the settings for the SNES.

Installation
============

This should be run from the home directory "/home/pi"

```
wget https://github.com/biscuits99/rp-video-manager/releases/download/v0.1/video-manager.zip
unzip video-manager.zip
rm video-manager.zip
cd /home/pi/video-manager
chmod 755 snes-videomode.sh
./snes-videomode.sh
```

Uninstall
==========
Make sure your video settings are as you want them, then delete this directory:
/home/pi/video-manager
