#!/bin/bash
# Updates RetroArch emulator to use snes.glslp shader

echo "WARNING!! This WILL overwrite your system specific retroarch.cfg files, so if you have made changes to them, please backup first."
echo ""
echo "Only tested in RetroPie 3 beta 2"
echo ""
echo "Default will reset back to the defaults in RetroPie 3 beta 2"
echo ""
echo "Shaders tend to be better for 720p"
echo "Overlays set for 1080p - they *may* work on other TV resolution"

PS3='Choose your video output: '
options=("Backup-Settings" "Restore-Backup" "Default" "Shader" "Overlays" "Overlays-no-smooth" "Quit")
select opt in "${options[@]}"
do
    case $opt in



"Backup-Settings")
cp /opt/retropie/configs/all/videomodes.cfg ~/rp-video-manager/backup/videomodes-backup.cfg 

# SNES
cp /opt/retropie/configs/snes/retroarch.cfg ~/rp-video-manager/backup/snes/retroarch-backup.cfg 

# Atari Lynx
cp /opt/retropie/configs/atarilynx/retroarch.cfg ~/rp-video-manager/backup/atarilynx/retroarch-backup.cfg 

# FBA
cp /opt/retropie/configs/fba/retroarch.cfg ~/rp-video-manager/backup/fba/retroarch-backup.cfg 

# GameGear
cp /opt/retropie/configs/gamegear/retroarch.cfg ~/rp-video-manager/backup/gamegear/retroarch-backup.cfg 

# Game Boy
cp /opt/retropie/configs/gb/retroarch.cfg ~/rp-video-manager/backup/gb/retroarch-backup.cfg 

# Game Boy Advance
cp /opt/retropie/configs/gba/retroarch.cfg ~/rp-video-manager/backup/gba/retroarch-backup.cfg 

# Game Boy Colour
cp /opt/retropie/configs/gbc/retroarch.cfg ~/rp-video-manager/backup/gbc/retroarch-backup.cfg 

# Sega MasterSystem
cp /opt/retropie/configs/mastersystem/retroarch.cfg ~/rp-video-manager/backup/mastersystem/retroarch-backup.cfg 

# Sega Megadrive
cp /opt/retropie/configs/megadrive/retroarch.cfg ~/rp-video-manager/backup/megadrive/retroarch-backup.cfg 

# Neo Geo
cp /opt/retropie/configs/neogeo/retroarch.cfg ~/rp-video-manager/backup/neogeo/retroarch-backup.cfg 

# NES
cp /opt/retropie/configs/nes/retroarch.cfg ~/rp-video-manager/backup/nes/retroarch-backup.cfg 

# PSX
cp /opt/retropie/configs/psx/retroarch.cfg ~/rp-video-manager/backup/psx/retroarch-backup.cfg 

# Sega 32x
cp /opt/retropie/configs/sega32x/retroarch.cfg ~/rp-video-manager/backup/sega32x/retroarch-backup.cfg 

# Sega CD
cp  /opt/retropie/configs/segacd/retroarch.cfg ~/rp-video-manager/backup/segacd/retroarch-backup.cfg

echo "Backup complete"

break
            ;;
            
            
            
            
            "Restore-Backup")

cp ~/rp-video-manager/backup/videomodes-backup.cfg /opt/retropie/configs/all/videomodes.cfg 

# SNES
cp ~/rp-video-manager/backup/snes/retroarch-backup.cfg /opt/retropie/configs/snes/retroarch.cfg 

# Atari Lynx
cp ~/rp-video-manager/backup/atarilynx/retroarch-backup.cfg /opt/retropie/configs/atarilynx/retroarch.cfg 

# FBA
cp ~/rp-video-manager/backup/fba/retroarch-backup.cfg /opt/retropie/configs/fba/retroarch.cfg 

# GameGear
cp ~/rp-video-manager/backup/gamegear/retroarch-backup.cfg /opt/retropie/configs/gamegear/retroarch.cfg  

# Game Boy
cp ~/rp-video-manager/backup/gb/retroarch-backup.cfg /opt/retropie/configs/gb/retroarch.cfg  

# Game Boy Advance
cp ~/rp-video-manager/backup/gba/retroarch-backup.cfg /opt/retropie/configs/gba/retroarch.cfg  

# Game Boy Colour
cp ~/rp-video-manager/backup/gbc/retroarch-backup.cfg /opt/retropie/configs/gbc/retroarch.cfg  

# Sega MasterSystem
cp ~/rp-video-manager/backup/mastersystem/retroarch-backup.cfg /opt/retropie/configs/mastersystem/retroarch.cfg 

# Sega Megadrive
cp ~/rp-video-manager/backup/megadrive/retroarch-backup.cfg /opt/retropie/configs/megadrive/retroarch.cfg 

# Neo Geo
cp ~/rp-video-manager/backup/neogeo/retroarch-backup.cfg /opt/retropie/configs/neogeo/retroarch.cfg  

# NES
cp ~/rp-video-manager/backup/nes/retroarch-backup.cfg /opt/retropie/configs/nes/retroarch.cfg  

# PSX
cp ~/rp-video-manager/backup/psx/retroarch-backup.cfg /opt/retropie/configs/psx/retroarch.cfg  

# Sega 32x
cp ~/rp-video-manager/backup/sega32x/retroarch-backup.cfg /opt/retropie/configs/sega32x/retroarch.cfg  

# Sega CD
cp  ~/rp-video-manager/backup/segacd/retroarch-backup.cfg /opt/retropie/configs/segacd/retroarch.cfg 

echo "Backup has been restored"

break
            ;;
            
            
            


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
            
             "Overlays-no-smooth")
# Copy Shader
cp ~/rp-video-manager/shaders/Brighter-with_Contrast.glslp /opt/retropie/emulators/retroarch/shader/Brighter-with_Contrast.glslp

# Copy VideoModes
cp ~/rp-video-manager/all-videomodes/videomodes-updated.cfg /opt/retropie/configs/all/videomodes.cfg

# SNES
cp ~/rp-video-manager/system-retroarch/snes/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/snes/retroarch.cfg

# Atari Lynx
cp ~/rp-video-manager/system-retroarch/atarilynx/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/atarilynx/retroarch.cfg

# FBA
cp ~/rp-video-manager/system-retroarch/fba/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/fba/retroarch.cfg

# GameGear
cp ~/rp-video-manager/system-retroarch/gamegear/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/gamegear/retroarch.cfg

# Game Boy
cp ~/rp-video-manager/system-retroarch/gb/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/gb/retroarch.cfg

# Game Boy Advance
cp ~/rp-video-manager/system-retroarch/gba/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/gba/retroarch.cfg

# Game Boy Colour
cp ~/rp-video-manager/system-retroarch/gbc/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/gbc/retroarch.cfg

# Sega MasterSystem
cp ~/rp-video-manager/system-retroarch/mastersystem/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/mastersystem/retroarch.cfg

# Sega Megadrive
cp ~/rp-video-manager/system-retroarch/megadrive/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/megadrive/retroarch.cfg

# Neo Geo
cp ~/rp-video-manager/system-retroarch/neogeo/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/neogeo/retroarch.cfg

# NES
cp ~/rp-video-manager/system-retroarch/nes/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/nes/retroarch.cfg

# PSX
cp ~/rp-video-manager/system-retroarch/psx/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/psx/retroarch.cfg

# Sega 32x
cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/sega32x/retroarch.cfg

# Sega CD
cp ~/rp-video-manager/system-retroarch/segacd/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/segacd/retroarch.cfg

# General overlays
mkdir -p /opt/retropie/emulators/retroarch/overlays/16-9
cp -r ~/rp-video-manager/16-9/* /opt/retropie/emulators/retroarch/overlays/16-9/
            echo "Overlays have now been applied - smooth is off"
            break
            ;;

        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done



