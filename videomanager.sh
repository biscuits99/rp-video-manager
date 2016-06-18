
#!/bin/bash
clear
#  Set select construct prompts for each menu level.
typeset -r MAINPROMPT="Select a main option: "
typeset -r SHADERPROMPT="Please select a shader: "
typeset -r HIDEFPROMPT="Select 1080p option: "
typeset -r SDDEFPROMPT="Select 720p option: "
typeset -r CONFIGPROMPT="Config Menu: "

#  Loop main menu until user exits explicitly.
while :
do
  echo "Video Manager Main Menu"
  PS3=$MAINPROMPT  # PS3 is the prompt for the select construct.

  select option in "Config Menu" "Apply Shaders" "Overlays for 1080p" "Overlays for 720p" Quit
  do
    case $REPLY in   # REPLY is set by the select construct, and is the number of the selection.
    

    1) # Config Menu
         #  Loop sub menu until user exits explicitly.
         while :
         do
           echo "Configuration Menu"
           PS3=$CONFIGPROMPT
           select option1 in "Backup Settings" "Restore Backup" "Reset to Default" "Install Required Files" "Set MD to Picodrive" "Set MD to GenesisPlusGX" "Set NES to Nestopia" "Set NES to Fceumm" "Remove ALL Arcade Bezel configs" Quit
           do
             case $REPLY in
               1) # Backup Settings
                  echo ""
                  echo ""
                  
                   #Backup existing files and copy them into the new backup folders.
	#Backup existing videomodes.cfg file. This may not already exist though.
            cp /opt/retropie/configs/all/videomodes.cfg ~/rp-video-manager/backup/videomodes-backup.cfg
            
    #Backup existing retroarch-core-options.cfg
            cp /opt/retropie/configs/all/retroarch-core-options.cfg ~/rp-video-manager/backup/retroarch-core-options-backup.cfg
    
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
    
                  
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;
               2) # Restore Backup
                  echo ""
                  echo ""
                  
                   #Copies files that were backed up, back into live directories
    #Retore blank videomodes file.
            cp ~/rp-video-manager/backup/videomodes-backup.cfg /opt/retropie/configs/all/videomodes.cfg
            
            
    #Restore existing retroarch-core-options.cfg
    cp ~/rp-video-manager/backup/retroarch-core-options-backup.cfg /opt/retropie/configs/all/retroarch-core-options.cfg
    
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
            cp  ~/rp-video-manager/backup/doom/retroarch-backup.cfg /opt/retropie/configs/ports/doom/retroarch.cfg
    
    # Quake
            cp  ~/rp-video-manager/backup/quake/retroarch-backup.cfg /opt/retropie/configs/ports/quake/retroarch.cfg
    
            echo "Backup has been restored"
			echo "Restored Atari Lynx, FBA, GG, GB, GBA, GBC, MasterSystem, Megadrive, NeoGeo, NES, PC Engine, PSX, Sega 32x, Sega CD, SNES, Doom, Quake"
    
                  
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  
                  
                   3) # Reset to Default
                  echo ""
                  echo ""
                  
                   # Copy Videomodes.cfg back
    cp ~/rp-video-manager/all-videomodes/videomodes-original.cfg /opt/retropie/configs/all/videomodes.cfg
    
    #Write the original core options file
    cp ~/rp-video-manager/all-videomodes/retroarch-core-options-original.cfg /opt/retropie/configs/all/retroarch-core-options.cfg
    
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
    
    # MAME Libretro
    cp ~/rp-video-manager/system-retroarch/mame-libretro/retroarch-original.cfg /opt/retropie/configs/mame-libretro/retroarch.cfg
    
    # MAME Mame4all
    cp ~/rp-video-manager/system-retroarch/mame-mame4all/retroarch-original.cfg /opt/retropie/configs/mame-mame4all/retroarch.cfg
    
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
    cp ~/rp-video-manager/system-retroarch/doom/retroarch-original.cfg /opt/retropie/configs/ports/doom/retroarch.cfg
    
    # Quake
    cp ~/rp-video-manager/system-retroarch/quake/retroarch-original.cfg /opt/retropie/configs/ports/quake/retroarch.cfg
    
                echo "Settings are back to default"
				echo "Reset Atari Lynx, FBA, GG, GB, GBA, GBC, MasterSystem, Megadrive, NeoGeo, NES, PC Engine, PSX, Sega 32x, Sega CD, SNES, Doom, Quake"
				   
                  
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  
                  
                  
                        4) # Install Required Files
                   echo ""
                   echo "Please wait (Should take under 5 mins)"
    
    # Copy Shaders across
            cp ~/rp-video-manager/shaders/crt-hyllian-sharpness-hack.glsl /opt/retropie/emulators/retroarch/shader/crt-hyllian-sharpness-hack.glsl
            cp ~/rp-video-manager/shaders/Brighter-with_Contrast.glslp /opt/retropie/emulators/retroarch/shader/Brighter-with_Contrast.glslp
    
    # General overlays
            mkdir -p /opt/retropie/emulators/retroarch/overlays/1080p_4-3
            cp -r ~/rp-video-manager/1080p_4-3/* /opt/retropie/emulators/retroarch/overlays/1080p_4-3/
    
    # Thorig overlays
    cp -r ~/rp-video-manager/users/thorig/overlays/* /opt/retropie/emulators/retroarch/overlays/1080p_4-3/
    
    # davej Shaders
    cp -r ~/rp-video-manager/users/davej/shaders/crt-pi/* /opt/retropie/emulators/retroarch/shader/
    
    # Chito Overlays
    mkdir -p /opt/retropie/emulators/retroarch/overlays/chito
    cp -r ~/rp-video-manager/users/chito/overlays/* /opt/retropie/emulators/retroarch/overlays/chito/
    
    # Arcade Bezels
    mkdir -p /opt/retropie/emulators/retroarch/shader/arcade-bezel-shader
    cp -r ~/rp-video-manager/users/arcade-bezels/arcade-bezel-shader/* /opt/retropie/emulators/retroarch/shader/arcade-bezel-shader/
    
    mkdir -p /opt/retropie/emulators/retroarch/overlays/arcade-bezel-overlays
    cp -r ~/rp-video-manager/users/arcade-bezels/arcade-bezel-overlays/* /opt/retropie/emulators/retroarch/overlays/arcade-bezel-overlays/
        
    
    # Gameboy Palette
    mkdir -p /home/pi/RetroPie/BIOS/palettes
    cp ~/rp-video-manager/shaders/default.pal /home/pi/RetroPie/BIOS/palettes/
    
    # Copy Overlay for patrickm settings. From the shaders dir which isnt quite right but it doesnt matter.
    cp ~/rp-video-manager/shaders/patrickm-scanlines1920x1080-5x.cfg /opt/retropie/emulators/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080-5x.cfg
    cp ~/rp-video-manager/shaders/patrickm-scanlines1920x1080-5x.png /opt/retropie/emulators/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080-5x.png
    cp ~/rp-video-manager/shaders/patrickm-scanlines1920x1080.cfg /opt/retropie/emulators/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080.cfg
    cp ~/rp-video-manager/shaders/patrickm-scanlines1920x1080.png /opt/retropie/emulators/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080.png
    cp ~/rp-video-manager/shaders/patrickm-scanlines1280x720.cfg /opt/retropie/emulators/retroarch/overlays/effects/scanlines/patrickm-scanlines1280x720.cfg
    cp ~/rp-video-manager/shaders/patrickm-scanlines1280x720.png /opt/retropie/emulators/retroarch/overlays/effects/scanlines/patrickm-scanlines1280x720.png

    
    echo "Required files installed - you dont need to run this again"
    echo ""
    
                 
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  
                  
               5) # Set MD to Picodrive
                  echo ""
                  echo ""
                  
                  cp ~/rp-video-manager/system-retroarch/emulators/megadrive-picodrive-emulators.cfg /opt/retropie/configs/megadrive/emulators.cfg
                  
                  
                  
                  echo "Megadrive emulator set to use Picodrive"
                  echo "It is recommended to use Genesis Plus GX for the overlays to work as well as possible"
                  echo "You can change this here, or use the normal method of pressing x when starting a game"
                  
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  
                
                6) # Set MD to GenesisPlusGX
                  echo ""
                  echo ""
                  
                  cp ~/rp-video-manager/system-retroarch/emulators/megadrive-genesisplusgx-emulators.cfg /opt/retropie/configs/megadrive/emulators.cfg
                  
                  
                  echo "Megadrive emulator set to use Genesis Plus GX"
                  echo "It is recommended to use Genesis Plus GX for the overlays to work as well as possible"
                  echo "You can change this here, or use the normal method of pressing x when starting a game"
                  
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  
                  7) # Set NES to Nestopia
                  echo ""
                  echo ""
                  
                  cp ~/rp-video-manager/system-retroarch/emulators/nes-nestopia-emulators.cfg /opt/retropie/configs/nes/emulators.cfg
                  
                  echo "NES Emulator set to use Nestopia"
                  
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;                
                  
                  8) # Set NES to Fceumm
                  echo ""
                  echo ""
                  
                  cp ~/rp-video-manager/system-retroarch/emulators/nes-fceumm-emulators.cfg /opt/retropie/configs/nes/emulators.cfg
                  
                  echo "NES Emulator set to use Fceumm"
                  
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;                
                  
                  9) # Remove ALL Arcade Bezel configs
                  echo ""
                  echo ""
                  rm -f /home/pi/RetroPie/roms/mame-libretro/*.cfg

                  echo "ALL .cfg files have been removed from /home/pi/RetroPie/roms/mame-libretro"
                  
                  echo ""
                  echo ""
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;  
                  
               10) # Quit
                  break 2  # Breaks out 2 levels, the select loop plus the mango while loop, back to the main loop.
                  ;;
                  
               *) # always allow for the unexpected
                  echo "Unknown mango operation [${REPLY}]"
                  break
                  ;;
             esac
           done
         done
         break
         ;;

    
   
	
	  

	  
     

      2) # Apply Shaders
      
      
      while :
         do
           echo "Choose Shader type"
           PS3=$SHADERPROMPT
           select option1 in General-Shader CRT-Shader Quit
           do
             case $REPLY in
               1) # General-Shader      
      
      echo ""
      echo ""
      
      #Apply shaders to all systems. Possibly better for 720p output that the overlays.
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
                echo ""
     break
     ;;
     
     2) # CRT-Shader
     
     echo ""
     echo ""
     
     # Doom
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/doom/retroarch-shader-davej-doom.cfg /opt/retropie/configs/ports/doom/retroarch.cfg

     # FBA
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/fba/retroarch-shader-davej-fba.cfg /opt/retropie/configs/fba/retroarch.cfg
     
     # MAME Libretro
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/mame-libretro/retroarch-shader-davej-mamelibretro.cfg /opt/retropie/configs/mame-libretro/retroarch.cfg
     
     # MAME mame4all
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/mame-mame4all/retroarch-shader-davej-mamemame4all.cfg /opt/retropie/configs/mame-mame4all/retroarch.cfg
     
     # Mastersystem
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/mastersystem/retroarch-shader-davej-mastersystem.cfg /opt/retropie/configs/mastersystem/retroarch.cfg
     
     # Megadrive
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/megadrive/retroarch-shader-davej-megadrive.cfg /opt/retropie/configs/megadrive/retroarch.cfg
     
     # Neo Geo
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/neogeo/retroarch-shader-davej-neogeo.cfg /opt/retropie/configs/neogeo/retroarch.cfg
     
     # NES
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/nes/retroarch-shader-davej-nes.cfg /opt/retropie/configs/nes/retroarch.cfg
     
     # PC Engine
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/pcengine/retroarch-shader-davej-pcengine.cfg /opt/retropie/configs/pcengine/retroarch.cfg
     
     # PSX
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/psx/retroarch-shader-davej-psx.cfg /opt/retropie/configs/psx/retroarch.cfg
     
     # Quake
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/quake/retroarch-shader-davej-quake.cfg /opt/retropie/configs/ports/quake/retroarch.cfg
     
     # Sega32x
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/sega32x/retroarch-shader-davej-sega32x.cfg /opt/retropie/configs/sega32x/retroarch.cfg
     
     # Sega CD
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/segacd/retroarch-shader-davej-segacd.cfg /opt/retropie/configs/segacd/retroarch.cfg
     
     # SNES
     cp ~/rp-video-manager/users/davej/system-retroarch-cfg/snes/retroarch-shader-davej-snes.cfg /opt/retropie/configs/snes/retroarch.cfg
     
      echo "CRT Shader has now been applied"
                echo "Shaders have been applied to Doom, FBA, MAME-Libretro, MAME-Mame4all, Mastersystem, Megadrive, Neo Geo, NES, PC Engine, PSX, Quake, Sega32x, Sega CD, SNES"
                echo ""
     break
     ;;

     
     3) # Quit
                  break 2  # Breaks out 2 levels, the select loop plus the mango while loop, back to the main loop.
                  ;;
                  
     *) # always allow for the unexpected
                  echo "Unknown mango operation [${REPLY}]"
                  break
                  ;;
             esac
           done
         done
         break
         ;;
                  
                  
      

      3) # Overlays for 1080p
      
       while :
         do
           echo "Choose Overlay type for 1080p displays"
           PS3=$HIDEFPROMPT
           select option1 in overlays overlays-no-smooth overlays-no-tv consoles-1080p-5x consoles-1080p thorig-1080p chito-1080p Arcade-Bezels quit
           do
             case $REPLY in
               1) # overlays
                  echo ""
                  echo ""
                  
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
                  
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  
                  
                  
                  
               2) # overlays-no-smooth
                  echo ""
                  echo ""
                  
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
    
    
                echo "Overlays have now been applied - smooth effect is off"
                echo "Overlays have been applied to SNES, Atari Lynx, GameGear, GB, GBA, GBC, Mastersystem, Megadrive, Neo Geo, NES, PC Engine, PSX, Sega 32X, Sega CD"
                echo "This mode attempts to emulate a 4:3 CRT experience."
				echo "http://blog.petrockblock.com/forums/topic/scanlines-overlays-an-configs-for-softer-look/"
				echo ""

                  break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  
               3) # overlays-no-tv
               echo ""
               echo ""
               
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
				echo ""
   
   break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  
               4) # consoles-1080p-5x
               
               echo ""
               echo ""
               
                # Copy VideoModes
    cp ~/rp-video-manager/all-videomodes/videomodes-updated2.cfg /opt/retropie/configs/all/videomodes.cfg
    cp ~/rp-video-manager/all-videomodes/retroarch-core-options-updated.cfg /opt/retropie/configs/all/retroarch-core-options.cfg
    
    # SNES
    cp ~/rp-video-manager/system-retroarch/snes/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/snes/retroarch.cfg
    
    # Sega Mastersystem
    cp ~/rp-video-manager/system-retroarch/mastersystem/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/mastersystem/retroarch.cfg
    
    # Sega Megadrive
    cp ~/rp-video-manager/system-retroarch/megadrive/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/megadrive/retroarch.cfg
    
    # Sega CD
    cp ~/rp-video-manager/system-retroarch/segacd/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/segacd/retroarch.cfg
    
    # Sega 32X
    cp ~/rp-video-manager/system-retroarch/sega32x/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/sega32x/retroarch.cfg
    
    # NES
    cp ~/rp-video-manager/system-retroarch/nes/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/nes/retroarch.cfg
    
	# PC Engine
    cp ~/rp-video-manager/system-retroarch/pcengine/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/pcengine/retroarch.cfg
	
    # PSX
    cp ~/rp-video-manager/system-retroarch/psx/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # Doom
    cp ~/rp-video-manager/system-retroarch/doom/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/ports/doom/retroarch.cfg
    
    # Quake
    cp ~/rp-video-manager/system-retroarch/quake/retroarch-overlay-patrickm-5x-noshader.cfg /opt/retropie/configs/ports/quake/retroarch.cfg
    
    
                echo "Overlays 5x integer scale applied for SNES, Mastersystem, Megadrive, Sega CD, Sega 32x, NES, PC Engine, PSX, Doom, Quake"
				echo "There are no shaders applied with these settings"
                echo "Genesis-Plus-GX is best used for the Megadrive emulator with these settings"
				echo "http://blog.petrockblock.com/forums/topic/list-of-recommended-shaders-for-raspberry-piretropie-how-to-get-the-crt-look/"
				echo ""
                break
                ;;
   
                  
               5) # consoles-1080p
               
               echo ""
               echo ""
               
               # Copy VideoModes
    cp ~/rp-video-manager/all-videomodes/videomodes-updated2.cfg /opt/retropie/configs/all/videomodes.cfg
    cp ~/rp-video-manager/all-videomodes/retroarch-core-options-updated.cfg /opt/retropie/configs/all/retroarch-core-options.cfg
    
    # SNES
    cp ~/rp-video-manager/system-retroarch/snes/retroarch-overlay-patrickm.cfg /opt/retropie/configs/snes/retroarch.cfg
    
    # Sega Megadrive
    cp ~/rp-video-manager/system-retroarch/megadrive/retroarch-overlay-patrickm.cfg /opt/retropie/configs/megadrive/retroarch.cfg
    
    # Sega CD
    cp ~/rp-video-manager/system-retroarch/segacd/retroarch-overlay-patrickm.cfg /opt/retropie/configs/segacd/retroarch.cfg
    
    # NES
    cp ~/rp-video-manager/system-retroarch/nes/retroarch-overlay-patrickm.cfg /opt/retropie/configs/nes/retroarch.cfg
    
	# PC Engine
    cp ~/rp-video-manager/system-retroarch/pcengine/retroarch-overlay-patrickm.cfg /opt/retropie/configs/pcengine/retroarch.cfg
	
    # PSX
    cp ~/rp-video-manager/system-retroarch/psx/retroarch-overlay-patrickm.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # Doom
    cp ~/rp-video-manager/system-retroarch/doom/retroarch-overlay-patrickm.cfg /opt/retropie/configs/ports/doom/retroarch.cfg
    
    # Quake
    cp ~/rp-video-manager/system-retroarch/quake/retroarch-overlay-patrickm.cfg /opt/retropie/configs/ports/quake/retroarch.cfg
    
    
                echo "Overlays 4x integer scale applied for SNES, Megadrive, Sega CD, NES, PC Engine, PSX, Doom, Quake"
				echo "There are no shaders applied with these settings"
                echo "Genesis-Plus-GX is best used for the Megadrive emulator with these settings"
				echo "http://blog.petrockblock.com/forums/topic/list-of-recommended-shaders-for-raspberry-piretropie-how-to-get-the-crt-look/"
				echo ""
                break
                ;;
   
          
          
                  6) # thorig-1080p
               
               echo ""
               echo ""
               
               # Copy VideoModes
    cp ~/rp-video-manager/all-videomodes/videomodes-updated2.cfg /opt/retropie/configs/all/videomodes.cfg
    
    # SNES
    cp ~/rp-video-manager/users/thorig/system-retroarch-cfg/snes/retroarch-overlay-thorig-1080p-snes.cfg /opt/retropie/configs/snes/retroarch.cfg
    
    # Sega Mastersystem
    cp ~/rp-video-manager/users/thorig/system-retroarch-cfg/mastersystem/retroarch-overlay-thorig-1080p-mastersystem.cfg /opt/retropie/configs/mastersystem/retroarch.cfg
    
    # Sega Megadrive
    cp ~/rp-video-manager/users/thorig/system-retroarch-cfg/megadrive/retroarch-overlay-thorig-1080p-megadrive.cfg /opt/retropie/configs/megadrive/retroarch.cfg
    
    # Neo Geo
    cp ~/rp-video-manager/users/thorig/system-retroarch-cfg/neogeo/retroarch-overlay-thorig-1080p-neogeo.cfg /opt/retropie/configs/neogeo/retroarch.cfg
    
    # NES
    cp ~/rp-video-manager/users/thorig/system-retroarch-cfg/nes/retroarch-overlay-thorig-1080p-nes.cfg /opt/retropie/configs/nes/retroarch.cfg
	
    # PSX
    cp ~/rp-video-manager/users/thorig/system-retroarch-cfg/psx/retroarch-overlay-thorig-1080p-psx.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # PC Engine
    cp ~/rp-video-manager/users/thorig/system-retroarch-cfg/pcengine/retroarch-overlay-thorig-1080p-pcengine.cfg /opt/retropie/configs/pcengine/retroarch.cfg
    

    
    
                echo "Overlays have been applied for SNES, Megadrive, Mastersysten, Neo Geo, NES, PC Engine and PSX"
				echo "There are no shaders applied with these settings"
				echo "These settings are from user thorig: http://blog.petrockblock.com/community/members/thorig/"
				echo ""
                break
                ;;
          
          7) # chito-1080p
               
               echo ""
               echo ""
           
           
           # GameGear
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/gamegear/retroarch-overlay-chito-gamegear.cfg /opt/retropie/configs/gamegear/retroarch.cfg

           # GameBoy
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/gb/retroarch-overlay-chito-gb.cfg /opt/retropie/configs/gb/retroarch.cfg
           
           # GameBoy Advance
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/gba/retroarch-overlay-chito-gba.cfg /opt/retropie/configs/gba/retroarch.cfg
           
           # GameBoy Colour
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/gbc/retroarch-overlay-chito-gbc.cfg /opt/retropie/configs/gbc/retroarch.cfg
           
           # Mastersystem
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/mastersystem/retroarch-overlay-chito-mastersystem.cfg /opt/retropie/configs/mastersystem/retroarch.cfg
           
           # Megadrive
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/megadrive/retroarch-overlay-chito-megadrive.cfg /opt/retropie/configs/megadrive/retroarch.cfg
           
           # NES
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/nes/retroarch-overlay-chito-nes.cfg /opt/retropie/configs/nes/retroarch.cfg
           
           # Neo Geo Pocket
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/ngp/retroarch-overlay-chito-ngp.cfg /opt/retropie/configs/ngp/retroarch.cfg
           
           # SNES
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/snes/retroarch-overlay-chito-snes.cfg /opt/retropie/configs/snes/retroarch.cfg
           
           # Wonderswan
           cp ~/rp-video-manager/users/chito/system-retroarch-cfg/wonderswan/retroarch-overlay-chito-wonderswan.cfg /opt/retropie/configs/wonderswan/retroarch.cfg
           
           
           
           echo "Overlays have been applied for Game Gear, GameBoy, GameBoy Advance GameBoy Colour, Mastersystem, Megadrive, NES, Neo Geo Pocket, SNES and Wonderswan"
				echo "There are no shaders applied with these settings"
				echo "These settings are from https://github.com/israelperez/retro-gaming"
				echo ""
                break
                ;;


8) # Arcade-Bezels
               
               echo ""
               echo ""
           
           
           # Arcade Bezel configs with shader settings
           cp ~/rp-video-manager/users/arcade-bezels/arcade-bezel-retroarch-configs/Done/*.cfg /home/pi/RetroPie/roms/mame-libretro/
 
           
           echo "Arcade bezel configs have been copied to /home/pi/RetroPie/roms/mame-libretro - these will apply to matching roms with MAME 2003"
				echo "You can of course manually copy these configs (romname.zip.cfg) to any libretro mame/fba based rom folder you want"
				echo ""
				echo "Remember you can manually turn the curvature effect on and off (to reduce CPU use) by manually editing nano /opt/retropie/emulators/retroarch/shader/arcade-bezel-shader/shaders/crt-pi.glsl"
				echo "#define CURVATURE = on //#define CURVATURE = off"
				echo ""
                break
                ;;

                  
               9) # quit
                  break 2  # Breaks out 2 levels, the select loop plus the mango while loop, back to the main loop.
                  ;;
               *) # always allow for the unexpected
                  echo "Unknown mango operation [${REPLY}]"
                  break
                  ;;
             esac
           done
         done
         break
         ;;

      4) # Overlays for 720p
         #  Loop mango menu until user exits explicitly.
         while :
         do
           echo "Overlays for 720p displays"
           PS3=$SDDEFPROMPT
           select option1 in consoles-720p quit
           do
             case $REPLY in
               1) # consoles-720p
                  echo ""
                  echo ""
                  
                  # Copy VideoModes
    cp ~/rp-video-manager/all-videomodes/videomodes-updated2.cfg /opt/retropie/configs/all/videomodes.cfg
    cp ~/rp-video-manager/all-videomodes/retroarch-core-options-updated.cfg /opt/retropie/configs/all/retroarch-core-options.cfg
    
    # SNES
    cp ~/rp-video-manager/system-retroarch/snes/retroarch-overlay-patrickm-720p.cfg /opt/retropie/configs/snes/retroarch.cfg
    
    # Sega Megadrive
    cp ~/rp-video-manager/system-retroarch/megadrive/retroarch-overlay-patrickm-720p.cfg /opt/retropie/configs/megadrive/retroarch.cfg
    
    # NES
    cp ~/rp-video-manager/system-retroarch/nes/retroarch-overlay-patrickm-720p.cfg /opt/retropie/configs/nes/retroarch.cfg
    
    # PSX
    cp ~/rp-video-manager/system-retroarch/psx/retroarch-overlay-patrickm-720p.cfg /opt/retropie/configs/psx/retroarch.cfg
    
    # Doom
    cp ~/rp-video-manager/system-retroarch/doom/retroarch-overlay-patrickm-720p.cfg /opt/retropie/configs/ports/doom/retroarch.cfg
    
    # Quake
    cp ~/rp-video-manager/system-retroarch/quake/retroarch-overlay-patrickm-720p.cfg /opt/retropie/configs/ports/quake/retroarch.cfg
    
    
                echo "Overlays 3x integer scale (720p) applied for SNES, Megadrive, NES, PSX, Doom, Quake"
				echo "There are no shaders applied with these settings"
                echo "Genesis-Plus-GX is best used for the Megadrive emulator with these settings"
				echo "http://blog.petrockblock.com/forums/topic/list-of-recommended-shaders-for-raspberry-piretropie-how-to-get-the-crt-look/"
				echo ""
                                
                  break  #  Breaks out of the select, back to the mango loop.
                  ;;
            
               2) # quit
                  break 2  # Breaks out 2 levels, the select loop plus the mango while loop, back to the main loop.
                  ;;
               *) # always allow for the unexpected
                  echo "Unknown mango operation [${REPLY}]"
                  break
                  ;;
             esac
           done
         done
         break
         ;;


         5) # Quit
         break 2  #  Break out 2 levels, out of the select and the main loop.
         ;;
      *) # Always code for the unexpected.
         echo "Unknown option [${REPLY}]"
         break
         ;;
    esac
  done
done

exit 0
$
