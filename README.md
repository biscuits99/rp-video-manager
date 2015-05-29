

# rp-video-manager

Video output tool by Floob

v0.1 27-05-2015

Initial release, SNES only.

v0.2 29-05-2015

Added more systems and shader options

Overlays made by "patl"

Shader tweak by "patrickm"

www.smartretro.co.uk/forums

Tool to quickly update video modes in RetroPie. This will swap between default, shaders and overlays.
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
