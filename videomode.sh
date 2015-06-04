#!/bin/bash
# Updates RetroArch emulator to use user specified resolution
clear
echo ""
echo "WARNING!! This WILL overwrite your system specific retroarch.cfg files"
echo "So use the backup option if you haev made changes to them"
echo ""
echo "Only tested in RetroPie 3 beta 2"
echo ""
echo "Overlays set for 1080p - they *may* work on other TV resolution"
echo "!!Remember to choose the Install option!!"
echo "https://github.com/biscuits99/rp-video-manager"

PS3='Choose your video output: '
    options=("Backup-Settings" "Restore-Backup" "Default" "Install Required Files" "Shader" "Overlays" "Overlays-no-smooth" "Overlays-No-TV"  "Overlays-patrickm-5x" "Quit")
            select opt in "${options[@]}"
            do
                case $opt in
    
    
    #Backup existing files and copy them into the new backup folders.
	
                        "Backup-Settings")
	#Backup existing videomodes.cfg file. This may not already exist though.
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
    
    # PC Engine
            cp /opt/retropie/configs/pcengine/retroarch.cfg ~/rp-video-manager/backup/pcengine/retroarch-backup.cfg
    
    # PSX
            cp /opt/retropie/configs/psx/retroarch.cfg ~/rp-video-manager/backup/psx/retroarch-backup.cfg
    
    # Sega 32x
            cp /opt/retropie/configs/sega32x/retroarch.cfg ~/rp-video-manager/backup/sega32x/retroarch-backup.cfg
    
    # Sega CD
            cp  /opt/retropie/configs/segacd/retroarch.cfg ~/rp-video-manager/backup/segacd/retroarch-backup.cfg
    
    # Doom
            cp  /opt/retropie/configs/doom/retroarch.cfg ~/rp-video-manager/backup/doom/retroarch-backup.cfg
    
    # Quake
            cp  /opt/retropie/configs/quake/retroarch.cfg ~/rp-video-manager/backup/quake/retroarch-backup.cfg
    
            echo "Backup complete"
			echo "Backed up Atari Lynx, FBA, GG, GB, GBA, GBC, MasterSystem, Megadrive, NeoGeo, NES, PC Engine, PSX, Sega 32x, Sega CD, SNES, Doom, Quake"
    
            break
            ;;
    
    #Copies files that were backed up, back into live directories
    
    
            "Restore-Backup")
    #Retore blank videomodes file.
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
    
    # PC Engine
            cp ~/rp-video-manager/backup/pcengine/retroarch-backup.cfg /opt/retropie/configs/pcengine/retroarch.cfg
    
    # Sega 32x
            cp ~/rp-video-manager/backup/sega32x/retroarch-backup.cfg /opt/retropie/configs/sega32x/retroarch.cfg
    
    # Sega CD
            cp  ~/rp-video-manager/backup/segacd/retroarch-backup.cfg /opt/retropie/configs/segacd/retroarch.cfg
    
    # Doom
            cp  ~/rp-video-manager/backup/doom/retroarch-backup.cfg /opt/retropie/configs/doom/retroarch.cfg
    
    # Quake
            cp  ~/rp-video-manager/backup/quake/retroarch-backup.cfg /opt/retropie/configs/quake/retroarch.cfg
    
            echo "Backup has been restored"
			echo "Restored Atari Lynx, FBA, GG, GB, GBA, GBC, MasterSystem, Megadrive, NeoGeo, NES, PC Engine, PSX, Sega 32x, Sega CD, SNES, Doom, Quake"
    
            break
            ;;
    
    
    
            "Install Required Files")
    
            echo "Please wait"
    
    # Copy Shaders across
            cp ~/rp-video-manager/shaders/crt-hyllian-sharpness-hack.glsl /opt/retropie/emulators/retroarch/shader/crt-hyllian-sharpness-hack.glsl
            cp ~/rp-video-manager/shaders/Brighter-with_Contrast.glslp /opt/retropie/emulators/retroarch/shader/Brighter-with_Contrast.glslp
    
    # General overlays
            mkdir -p /opt/retropie/emulators/retroarch/overlays/1080p_4-3
            cp -r ~/rp-video-manager/1080p_4-3/* /opt/retropie/emulators/retroarch/overlays/1080p_4-3/
    
    # Gameboy Palette
    mkdir -p /home/pi/RetroPie/BIOS/palettes
    cp ~/rp-video-manager/shaders/default.pal /home/pi/RetroPie/BIOS/palettes/
    
    # Copy Overlay for patrickm settings. From the shaders dir which isnt quite right but it doesnt matter.
    cp ~/rp-video-manager/shaders/patrickm-scanlines1920x1080-5x.cfg /opt/retropie/emulators/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080-5x.cfg
    cp ~/rp-video-manager/shaders/patrickm-scanlines1920x1080-5x.png /opt/retropie/emulators/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080-5x.png
    
    echo "Required files installed - you dont need to run this again"
    
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
    
	# PC Engine
    cp ~/rp-video-manager/system-retroarch/pcengine/retroarch-original.cfg /opt/retropie/configs/pcengine/retroarch.cfg
	
    # PSX
    cp ~/rp-video-manager/system-retroarch/psx/retroarch-original.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # Sega 32x
    cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-original.cfg /opt/retropie/configs/sega32x/retroarch.cfg
    
    # Sega CD
    cp ~/rp-video-manager/system-retroarch/segacd/retroarch-original.cfg /opt/retropie/configs/segacd/retroarch.cfg
    
    # Doom
    cp ~/rp-video-manager/system-retroarch/doom/retroarch-original.cfg /opt/retropie/configs/doom/retroarch.cfg
    
    # Quake
    cp ~/rp-video-manager/system-retroarch/quake/retroarch-original.cfg /opt/retropie/configs/quake/retroarch.cfg
    
                echo "Settings are back to default"
				echo "Reset Atari Lynx, FBA, GG, GB, GBA, GBC, MasterSystem, Megadrive, NeoGeo, NES, PC Engine, PSX, Sega 32x, Sega CD, SNES, Doom, Quake"
				
    break
                ;;
    
    
    
    #Apply shaders to all systems. Possibly better for 720p output that the overlays.
   
            "Shader")
    
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
    
	# PC Engine
    cp ~/rp-video-manager/system-retroarch/pcengine/retroarch-shader.cfg /opt/retropie/configs/pcengine/retroarch.cfg
	
    # PSX
    cp ~/rp-video-manager/system-retroarch/psx/retroarch-shader.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # Sega 32x
    cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-shader.cfg /opt/retropie/configs/sega32x/retroarch.cfg
    
    # Sega CD
    cp ~/rp-video-manager/system-retroarch/segacd/retroarch-shader.cfg /opt/retropie/configs/segacd/retroarch.cfg
    
                echo "Shader has now been applied"
                echo "Shaders have been applied to SNES, Atari Lynx, FBA, GameGear, GB, GBA, GBC, Mastersystem, Megadrive, Neo Geo, NES, PC Engine, PSX, Sega 32X, Sega CD"
                 break
                ;;
    
    
    
    
    
            "Overlays")
    
    #Apply overlays with the TV border. Designed to emulate a 4:3 approach.
	
    # Copy VideoModes
    cp ~/rp-video-manager/all-videomodes/videomodes-updated.cfg /opt/retropie/configs/all/videomodes.cfg
    
    # SNES
    cp ~/rp-video-manager/system-retroarch/snes/retroarch-overlay.cfg /opt/retropie/configs/snes/retroarch.cfg
    
    # Atari Lynx
    cp ~/rp-video-manager/system-retroarch/atarilynx/retroarch-overlay.cfg /opt/retropie/configs/atarilynx/retroarch.cfg
    
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
    
	# PC Engine
    cp ~/rp-video-manager/system-retroarch/pcengine/retroarch-overlay.cfg /opt/retropie/configs/pcengine/retroarch.cfg
	
    # PSX
    cp ~/rp-video-manager/system-retroarch/psx/retroarch-overlay.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # Sega 32x
    cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-overlay.cfg /opt/retropie/configs/sega32x/retroarch.cfg
    
    # Sega CD
    cp ~/rp-video-manager/system-retroarch/segacd/retroarch-overlay.cfg /opt/retropie/configs/segacd/retroarch.cfg
    
    
    
    
                echo "Overlays have now been applied"
                echo "Overlays have been applied to SNES, Atari Lynx, GameGear, GB, GBA, GBC, Mastersystem, Megadrive, Neo Geo, NES, PC Engine, PSX, Sega 32X, Sega CD"
                echo "This mode attempts to emulate a 4:3 CRT experience."
				echo "http://blog.petrockblock.com/forums/topic/scanlines-overlays-an-configs-for-softer-look/"
                break
                ;;
    
                 "Overlays-no-smooth")
    
	#Same as overlays above, but smooth option turned off.
	
    # Copy VideoModes
    cp ~/rp-video-manager/all-videomodes/videomodes-updated.cfg /opt/retropie/configs/all/videomodes.cfg
    
    # SNES
    cp ~/rp-video-manager/system-retroarch/snes/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/snes/retroarch.cfg
    
    # Atari Lynx
    cp ~/rp-video-manager/system-retroarch/atarilynx/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/atarilynx/retroarch.cfg
    
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
    
	# PC Engine
    cp ~/rp-video-manager/system-retroarch/pcengine/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/pcengine/retroarch.cfg
	
    # PSX
    cp ~/rp-video-manager/system-retroarch/psx/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # Sega 32x
    cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/sega32x/retroarch.cfg
    
    # Sega CD
    cp ~/rp-video-manager/system-retroarch/segacd/retroarch-overlay-smooth-off.cfg /opt/retropie/configs/segacd/retroarch.cfg
    
    
                echo "Overlays have now been applied - smooth is off"
                echo "Overlays have been applied to SNES, Atari Lynx, GameGear, GB, GBA, GBC, Mastersystem, Megadrive, Neo Geo, NES, PC Engine, PSX, Sega 32X, Sega CD"
                echo "This mode attempts to emulate a 4:3 CRT experience."
				echo "http://blog.petrockblock.com/forums/topic/scanlines-overlays-an-configs-for-softer-look/"
                break
                ;;
    
    
    
     "Overlays-No-TV")
     # Copy VideoModes
    cp ~/rp-video-manager/all-videomodes/videomodes-updated.cfg /opt/retropie/configs/all/videomodes.cfg
    
    # SNES
    cp ~/rp-video-manager/system-retroarch/snes/retroarch-overlay-no-tv.cfg /opt/retropie/configs/snes/retroarch.cfg
    
    # Sega MasterSystem
    cp ~/rp-video-manager/system-retroarch/mastersystem/retroarch-overlay-no-tv.cfg /opt/retropie/configs/mastersystem/retroarch.cfg
    
    # Sega Megadrive
    cp ~/rp-video-manager/system-retroarch/megadrive/retroarch-overlay-no-tv.cfg /opt/retropie/configs/megadrive/retroarch.cfg
    
    # Neo Geo
    cp ~/rp-video-manager/system-retroarch/neogeo/retroarch-overlay-no-tv.cfg /opt/retropie/configs/neogeo/retroarch.cfg
    
    # NES
    cp ~/rp-video-manager/system-retroarch/nes/retroarch-overlay-no-tv.cfg /opt/retropie/configs/nes/retroarch.cfg
    
	# PC Engine
    cp ~/rp-video-manager/system-retroarch/pcengine/retroarch-overlay-no-tv.cfg /opt/retropie/configs/pcengine/retroarch.cfg
	
    # PSX
    cp ~/rp-video-manager/system-retroarch/psx/retroarch-overlay-no-tv.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # Sega 32x
    cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-overlay-no-tv.cfg /opt/retropie/configs/sega32x/retroarch.cfg
    
    # Sega CD
    cp ~/rp-video-manager/system-retroarch/segacd/retroarch-overlay-no-tv.cfg /opt/retropie/configs/segacd/retroarch.cfg
    
     echo "Overlays have now been applied - No TV Border"
                echo "Overlays have been applied to SNES, Mastersystem, Megadrive, Neo Geo, NES, PC Engine, PSX, Sega 32X, Sega CD"
                echo "This mode attempts to emulate a 4:3 CRT experience."
				echo "http://blog.petrockblock.com/forums/topic/scanlines-overlays-an-configs-for-softer-look/"
    
       break
                ;;
    
    
    
    
   
    
    
     "Overlays-patrickm-5x")
    
    # Copy VideoModes
    cp ~/rp-video-manager/all-videomodes/videomodes-updated2.cfg /opt/retropie/configs/all/videomodes.cfg
    
    # SNES
    cp ~/rp-video-manager/system-retroarch/snes/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/snes/retroarch.cfg
    
    # Sega Megadrive
    cp ~/rp-video-manager/system-retroarch/megadrive/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/megadrive/retroarch.cfg
    
    # NES
    cp ~/rp-video-manager/system-retroarch/nes/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/nes/retroarch.cfg
    
	# PC Engine
    cp ~/rp-video-manager/system-retroarch/pcengine/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/pcengine/retroarch.cfg
	
    # PSX
    cp ~/rp-video-manager/system-retroarch/psx/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # Doom
    cp ~/rp-video-manager/system-retroarch/doom/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/doom/retroarch.cfg
    
    # Quake
    cp ~/rp-video-manager/system-retroarch/quake/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/quake/retroarch.cfg
    
    
                echo "Overlays 5x integer scale applied for SNES, Megadrive, NES, PC Engine, PSX, Doom, Quake"
				echo "There are no shaders applied with these settings"
                echo "Genesis-Plus-GX is best used for the Megadrive emulator with these settings"
				echo "http://blog.petrockblock.com/forums/topic/list-of-recommended-shaders-for-raspberry-piretropie-how-to-get-the-crt-look/"
                break
                ;;
    
    
    
    
    
    
    
    
            "Quit")
                break
                ;;
            *) echo invalid option;;
        esac
done



