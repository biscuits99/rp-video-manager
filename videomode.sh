#!/bin/bash
# Updates RetroArch emulator to use snes.glslp shader


PS3='Choose your video output: '
options=("Default" "Shader" "Overlays" "Quit")
select opt in "${options[@]}"
do
    case $opt in

        "Default")
# SNES
cp ~/rp-video-manager/system-retroarch/snes/retroarch-original.cfg /opt/retropie/configs/snes/retroarch.cfg
cp ~/rp-video-manager/all-videomodes/videomodes-original.cfg /opt/retropie/configs/all/videomodes.cfg
            echo "Settings are back to default"
break
            ;;

        "Shader")
echo "Updating files to use snes.glslp shader"
cp ~/rp-video-manager/system-retroarch/retroarch-shader.cfg /opt/retropie/configs/snes/retroarch.cfg
cp ~/rp-video-manager/all-videomodes/videomodes-original.cfg /opt/retropie/configs/all/videomodes.cfg
            echo "Shader has now been applied"
            break
            ;;

        "Overlays")
# Copy Shader
cp ~/rp-video-manager/system-retroarch/shaders/Brighter-with_Contrast.glslp /opt/retropie/emulators/retroarch/shader/

# Copy VideoModes
cp ~/rp-video-manager/all-videomodes/videomodes-updated.cfg /opt/retropie/configs/all/videomodes.cfg

# SNES
cp ~/rp-video-manager/system-retroarch/snes/retroarch-overlay.cfg /opt/retropie/configs/snes/retroarch.cfg

# Atari Lynx
cp ~/rp-video-manager/system-retroarch/atarilynx/retroarch-overlay.cfg /opt/retropie/configs/atarilynx/retroarch.cfg

# FBA
cp ~/rp-video-manager/system-retroarch/fba/retroarch-overlay.cfg /opt/retropie/configs/fba/retroarch.cfg

# GameGear
cp ~/rp-video-manager/system-retroarch/gamegear/retroarch-overlay.cfg /opt/retropie/configs/gamegear/retroarch.cfg

# Game Boy
cp ~/rp-video-manager/system-retroarch/gb/retroarch-overlay.cfg /opt/retropie/configs/gb/retroarch.cfg

# Game Boy Advance
cp ~/rp-video-manager/system-retroarch/gba/retroarch-overlay.cfg /opt/retropie/configs/gba/retroarch.cfg

# Game Boy Colour
cp ~/rp-video-manager/system-retroarch/gbc/retroarch-overlay.cfg /opt/retropie/configs/gbc/retroarch.cfg

# Sega MasterSystem
cp ~/rp-video-manager/system-retroarch/mastersystem/retroarch-overlay.cfg /opt/retropie/configs/mastersystem/retroarch.cfg

# Sega Megadrive
cp ~/rp-video-manager/system-retroarch/megadrive/retroarch-overlay.cfg /opt/retropie/configs/megadrive/retroarch.cfg

# Neo Geo
cp ~/rp-video-manager/system-retroarch/neogeo/retroarch-overlay.cfg /opt/retropie/configs/neogeo/retroarch.cfg

# NES
cp ~/rp-video-manager/system-retroarch/nes/retroarch-overlay.cfg /opt/retropie/configs/nes/retroarch.cfg

# PSX
cp ~/rp-video-manager/system-retroarch/psx/retroarch-overlay.cfg /opt/retropie/configs/psx/retroarch.cfg

# Sega 32x
cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-overlay.cfg /opt/retropie/configs/sega32x/retroarch.cfg

# Sega CD
cp ~/rp-video-manager/system-retroarch/segacd/retroarch-overlay.cfg /opt/retropie/configs/segacd/retroarch.cfg

# General overlays
mkdir -p /opt/retropie/emulators/retroarch/overlays/16-9
cp -r ~/rp-video-manager/16-9/* /opt/retropie/emulators/retroarch/overlays/16-9/
            echo "Overlays have now been applied"
            break
            ;;

        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done



