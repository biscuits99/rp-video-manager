#!/bin/bash
# Updates RetroArch emulator to use snes.glslp shader

echo "WARNING!! This WILL overwrite your system specific retroarch.cfg files, so if you have made changes to them, please backup first."
"Only tested in RetroPie 3 beta 2"
echo "Default will reset back to the defaults in RetroPie 3 beta 2"
"Shaders tend to be better for 720p"
"Overlays set for 1080p - they *may* work on other TV resolution"

PS3='Choose your video output: '
options=("Default" "Shader" "Overlays" "Quit")
select opt in "${options[@]}"
do
    case $opt in






        "Default")
# Copy Videomodes.cfg back
cp ~/rp-video-manager/all-videomodes/videomodes-original.cfg /opt/retropie/configs/all/videomodes.cfg

# SNES
cp ~/rp-video-manager/system-retroarch/snes/retroarch-original.cfg /opt/retropie/configs/snes/retroarch.cfg

# Atari Lynx
cp ~/rp-video-manager/system-retroarch/atarilynx/retroarch-original.cfg /opt/retropie/configs/atarilynx/retroarch.cfg

# FBA
cp ~/rp-video-manager/system-retroarch/fba/retroarch-original.cfg /opt/retropie/configs/fba/retroarch.cfg

# GameGear
cp ~/rp-video-manager/system-retroarch/gamegear/retroarch-original.cfg /opt/retropie/configs/gamegear/retroarch.cfg

# Game Boy
cp ~/rp-video-manager/system-retroarch/gb/retroarch-original.cfg /opt/retropie/configs/gb/retroarch.cfg

# Game Boy Advance
cp ~/rp-video-manager/system-retroarch/gba/retroarch-original.cfg /opt/retropie/configs/gba/retroarch.cfg

# Game Boy Colour
cp ~/rp-video-manager/system-retroarch/gbc/retroarch-original.cfg /opt/retropie/configs/gbc/retroarch.cfg

# Sega MasterSystem
cp ~/rp-video-manager/system-retroarch/mastersystem/retroarch-original.cfg /opt/retropie/configs/mastersystem/retroarch.cfg

# Sega Megadrive
cp ~/rp-video-manager/system-retroarch/megadrive/retroarch-original.cfg /opt/retropie/configs/megadrive/retroarch.cfg

# Neo Geo
cp ~/rp-video-manager/system-retroarch/neogeo/retroarch-original.cfg /opt/retropie/configs/neogeo/retroarch.cfg

# NES
cp ~/rp-video-manager/system-retroarch/nes/retroarch-original.cfg /opt/retropie/configs/nes/retroarch.cfg

# PSX
cp ~/rp-video-manager/system-retroarch/psx/retroarch-original.cfg /opt/retropie/configs/psx/retroarch.cfg

# Sega 32x
cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-original.cfg /opt/retropie/configs/sega32x/retroarch.cfg

# Sega CD
cp ~/rp-video-manager/system-retroarch/segacd/retroarch-original.cfg /opt/retropie/configs/segacd/retroarch.cfg




            echo "Settings are back to default"
break
            ;;






        "Shader")

# Copy Shader across
cp ~/rp-video-manager/shaders/crt-hyllian-sharpness-hack.glsl /opt/retropie/emulators/retroarch/shader/crt-hyllian-sharpness-hack.glsl

# Set Video Modes Back
cp ~/rp-video-manager/all-videomodes/videomodes-original.cfg /opt/retropie/configs/all/videomodes.cfg

# SNES
cp ~/rp-video-manager/system-retroarch/snes/retroarch-shader.cfg /opt/retropie/configs/snes/retroarch.cfg

# Atari Lynx
cp ~/rp-video-manager/system-retroarch/atarilynx/retroarch-shader.cfg /opt/retropie/configs/atarilynx/retroarch.cfg

# FBA
cp ~/rp-video-manager/system-retroarch/fba/retroarch-shader.cfg /opt/retropie/configs/fba/retroarch.cfg

# GameGear
cp ~/rp-video-manager/system-retroarch/gamegear/retroarch-shader.cfg /opt/retropie/configs/gamegear/retroarch.cfg

# Game Boy
cp ~/rp-video-manager/system-retroarch/gb/retroarch-shader.cfg /opt/retropie/configs/gb/retroarch.cfg

# Game Boy Advance
cp ~/rp-video-manager/system-retroarch/gba/retroarch-shader.cfg /opt/retropie/configs/gba/retroarch.cfg

# Game Boy Colour
cp ~/rp-video-manager/system-retroarch/gbc/retroarch-shader.cfg /opt/retropie/configs/gbc/retroarch.cfg

# Sega MasterSystem
cp ~/rp-video-manager/system-retroarch/mastersystem/retroarch-shader.cfg /opt/retropie/configs/mastersystem/retroarch.cfg

# Sega Megadrive
cp ~/rp-video-manager/system-retroarch/megadrive/retroarch-shader.cfg /opt/retropie/configs/megadrive/retroarch.cfg

# Neo Geo
cp ~/rp-video-manager/system-retroarch/neogeo/retroarch-shader.cfg /opt/retropie/configs/neogeo/retroarch.cfg

# NES
cp ~/rp-video-manager/system-retroarch/nes/retroarch-shader.cfg /opt/retropie/configs/nes/retroarch.cfg

# PSX
cp ~/rp-video-manager/system-retroarch/psx/retroarch-shader.cfg /opt/retropie/configs/psx/retroarch.cfg

# Sega 32x
cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-shader.cfg /opt/retropie/configs/sega32x/retroarch.cfg

# Sega CD
cp ~/rp-video-manager/system-retroarch/segacd/retroarch-shader.cfg /opt/retropie/configs/segacd/retroarch.cfg

            echo "Shader has now been applied"
            break
            ;;





        "Overlays")
# Copy Shader
cp ~/rp-video-manager/shaders/Brighter-with_Contrast.glslp /opt/retropie/emulators/retroarch/shader/Brighter-with_Contrast.glslp

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



