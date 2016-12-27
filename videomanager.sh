#!/usr/bin/env bash
clear

# Set variables for directories
# main retropie install location
rootdir="/opt/retropie"

user="$SUDO_USER"
[[ -z "$user" ]] && user="$(id -un)"

home="$(eval echo ~$user)"
datadir="$home/RetroPie"
biosdir="$datadir/BIOS"
romdir="$datadir/roms"
emudir="$rootdir/emulators"
configdir="$rootdir/configs"

scriptdir="$(dirname "$0")"
scriptdir="$(cd "$scriptdir" && pwd)"

backupdir="$scriptdir/backup"
shadersdir="$scriptdir/shaders"
sysrarch="$scriptdir/system-retroarch"

# Set select construct prompts for each menu level.
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
          # Loop sub menu until user exits explicitly.
          while :
            do
              echo "Configuration Menu"
              PS3=$CONFIGPROMPT
              select option1 in "Backup Settings" "Restore Backup" "Reset to Default" "Install Required Files" "Remove ALL Arcade Bezel configs" Quit
              do
                case $REPLY in
                  1) # Backup Settings
                    echo ""
                    echo ""
                    # Backup existing files and copy them into the new backup folders. 
                    # Backup existing videomodes.cfg file. This may not already exist though.
                    cp "$configdir/all/videomodes.cfg" "$backupdir/videomodes-backup.cfg"
                    # Backup existing retroarch-core-options.cfg
                    cp "$configdir/all/retroarch-core-options.cfg" "$backupdir/retroarch-core-options-backup.cfg"
                    cp "$configdir/snes/retroarch.cfg" "$backupdir/snes/retroarch-backup.cfg" # SNES
                    cp "$configdir/atarilynx/retroarch.cfg" "$backupdir/atarilynx/retroarch-backup.cfg" # Atari Lynx
                    cp "$configdir/fba/retroarch.cfg" "$backupdir/fba/retroarch-backup.cfg" # FBA
                    cp "$configdir/gamegear/retroarch.cfg" "$backupdir/gamegear/retroarch-backup.cfg" # GameGear
                    cp "$configdir/gb/retroarch.cfg" "$backupdir/gb/retroarch-backup.cfg" # Game Boy
                    cp "$configdir/gba/retroarch.cfg" "$backupdir/gba/retroarch-backup.cfg" # Game Boy Advance
                    cp "$configdir/gbc/retroarch.cfg" "$backupdir/gbc/retroarch-backup.cfg" # Game Boy Colour
                    cp "$configdir/mastersystem/retroarch.cfg" "$backupdir/mastersystem/retroarch-backup.cfg" # Sega MasterSystem
                    cp "$configdir/megadrive/retroarch.cfg" "$backupdir/megadrive/retroarch-backup.cfg" # Sega Megadrive
                    cp "$configdir/neogeo/retroarch.cfg" "$backupdir/neogeo/retroarch-backup.cfg" # Neo Geo
                    cp "$configdir/nes/retroarch.cfg" "$backupdir/nes/retroarch-backup.cfg" # NES
                    cp "$configdir/pcengine/retroarch.cfg" "$backupdir/pcengine/retroarch-backup.cfg" # PC Engine
                    cp "$configdir/psx/retroarch.cfg" "$backupdir/psx/retroarch-backup.cfg" # PSX
                    cp "$configdir/sega32x/retroarch.cfg" "$backupdir/sega32x/retroarch-backup.cfg" # Sega 32x
                    cp "$configdir/segacd/retroarch.cfg" "$backupdir/segacd/retroarch-backup.cfg" # Sega CD
                    echo "Backup complete"
                    echo "Backed up Atari Lynx, FBA, GG, GB, GBA, GBC, MasterSystem, Megadrive, NeoGeo, NES, PC Engine, PSX, Sega 32x, Sega CD, SNES"   
                    break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  2) # Restore Backup
                    echo ""
                    echo ""
                    # Copies files that were backed up, back into live directories. Retore blank videomodes file.
                    cp "$backupdir/videomodes-backup.cfg" "$configdir/all/videomodes.cfg"
                    #Restore existing retroarch-core-options.cfg
                    cp "$backupdir/retroarch-core-options-backup.cfg" "$configdir/all/retroarch-core-options.cfg"
                    cp "$backupdir/snes/retroarch-backup.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$backupdir/atarilynx/retroarch-backup.cfg" "$configdir/atarilynx/retroarch.cfg" # Atari Lynx
                    cp "$backupdir/fba/retroarch-backup.cfg" "$configdir/fba/retroarch.cfg" # FBA
                    cp "$backupdir/gamegear/retroarch-backup.cfg" "$configdir/gamegear/retroarch.cfg" # GameGear
                    cp "$backupdir/gb/retroarch-backup.cfg" "$configdir/gb/retroarch.cfg" # Game Boy
                    cp "$backupdir/gba/retroarch-backup.cfg" "$configdir/gba/retroarch.cfg" # Game Boy Advance
                    cp "$backupdir/gbc/retroarch-backup.cfg" "$configdir/gbc/retroarch.cfg" # Game Boy Colour
                    cp "$backupdir/mastersystem/retroarch-backup.cfg" "$configdir/mastersystem/retroarch.cfg" # Sega MasterSystem
                    cp "$backupdir/megadrive/retroarch-backup.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$backupdir/neogeo/retroarch-backup.cfg" "$configdir/neogeo/retroarch.cfg" # Neo Geo
                    cp "$backupdir/nes/retroarch-backup.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$backupdir/psx/retroarch-backup.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    cp "$backupdir/pcengine/retroarch-backup.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    cp "$backupdir/sega32x/retroarch-backup.cfg" "$configdir/sega32x/retroarch.cfg" # Sega 32x
                    cp "$backupdir/segacd/retroarch-backup.cfg" "$configdir/segacd/retroarch.cfg" # Sega CD
                    echo "Backup has been restored"
                    echo "Restored Atari Lynx, FBA, GG, GB, GBA, GBC, MasterSystem, Megadrive, NeoGeo, NES, PC Engine, PSX, Sega 32x, Sega CD, SNES"
                    break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  3) # Reset to Default
                    echo ""
                    echo ""
                    # Copy Videomodes.cfg back
                    cp "$scriptdir/all-videomodes/videomodes-original.cfg" "$configdir/all/videomodes.cfg"
                    #Write the original core options file
                    cp "$scriptdir/all-videomodes/retroarch-core-options-original.cfg" "$configdir/all/retroarch-core-options.cfg"
                    cp "$sysrarch/snes/retroarch-original.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$sysrarch/atarilynx/retroarch-original.cfg" "$configdir/atarilynx/retroarch.cfg" # Atari Lynx
                    cp "$sysrarch/fba/retroarch-original.cfg" "$configdir/fba/retroarch.cfg" # FBA
                    cp "$sysrarch/gamegear/retroarch-original.cfg" "$configdir/gamegear/retroarch.cfg" # GameGear
                    cp "$sysrarch/gb/retroarch-original.cfg" "$configdir/gb/retroarch.cfg" # Game Boy
                    cp "$sysrarch/gba/retroarch-original.cfg" "$configdir/gba/retroarch.cfg" # Game Boy Advance
                    cp "$sysrarch/gbc/retroarch-original.cfg" "$configdir/gbc/retroarch.cfg" # Game Boy Colour
                    cp "$sysrarch/mastersystem/retroarch-original.cfg" "$configdir/mastersystem/retroarch.cfg" # Sega MasterSystem
                    cp "$sysrarch/megadrive/retroarch-original.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$sysrarch/mame-libretro/retroarch-original.cfg" "$configdir/mame-libretro/retroarch.cfg" # MAME Libretro
                    cp "$sysrarch/mame-mame4all/retroarch-original.cfg" "$configdir/mame-mame4all/retroarch.cfg" # MAME Mame4all
                    cp "$sysrarch/neogeo/retroarch-original.cfg" "$configdir/neogeo/retroarch.cfg" # Neo Geo
                    cp "$sysrarch/nes/retroarch-original.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$sysrarch/pcengine/retroarch-original.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    cp "$sysrarch/psx/retroarch-original.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    cp "$sysrarch/sega32x/retroarch-original.cfg" "$configdir/sega32x/retroarch.cfg" # Sega 32x
                    cp "$sysrarch/segacd/retroarch-original.cfg" "$configdir/segacd/retroarch.cfg" # Sega CD
                    echo "Settings are back to default"
                    echo "Reset Atari Lynx, FBA, GG, GB, GBA, GBC, MasterSystem, Megadrive, NeoGeo, NES, PC Engine, PSX, Sega 32x, Sega CD, SNES"
                    break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  4) # Install Required Files
                    echo ""
                    echo "Please wait (Should take under 5 mins)"
                    # Copy Shaders across
                    sudo cp -u "$scriptdir/shaders/crt-hyllian-sharpness-hack.glsl" "$emudir/retroarch/shader/crt-hyllian-sharpness-hack.glsl"
                    sudo cp -u "$scriptdir/shaders/Brighter-with_Contrast.glslp" "$emudir/retroarch/shader/Brighter-with_Contrast.glslp"
                    # General overlays
                    sudo mkdir -p "$emudir/retroarch/overlays/1080p_4-3"
                    sudo cp -r "$scriptdir/1080p_4-3/"* "$emudir/retroarch/overlays/1080p_4-3/"
                    # Thorig overlays
                    sudo cp -r "$scriptdir/users/thorig/overlays/"* "$emudir/retroarch/overlays/1080p_4-3/"
                    # davej Shaders
                    sudo cp -r "$scriptdir/users/davej/shaders/crt-pi/"* "$emudir/retroarch/shader/"
                    # Chito Overlays
                    sudo mkdir -p "$emudir/retroarch/overlays/chito"
                    sudo cp -r "$scriptdir/users/chito/overlays/"* "$emudir/retroarch/overlays/chito/"
                    # Arcade Bezels
                    sudo mkdir -p "$emudir/retroarch/shader/arcade-bezel-shader"
                    sudo cp -r "$scriptdir/users/arcade-bezels/arcade-bezel-shader/"* "$emudir/retroarch/shader/arcade-bezel-shader/"
                    sudo mkdir -p "$emudir/retroarch/overlays/arcade-bezel-overlays"
                    sudo cp -r "$scriptdir/users/arcade-bezels/arcade-bezel-overlays/"* "$emudir/retroarch/overlays/arcade-bezel-overlays/"
                    # Gameboy Palette
                    sudo mkdir -p "$biosdir/palettes"
                    sudo cp "$scriptdir/shaders/default.pal" "$biosdir/palettes/"
                    # Copy Overlay for patrickm settings. From the shaders dir which isnt quite right but it doesnt matter.
                    sudo mkdir -p "$emudir/retroarch/overlays/effects/scanlines"
                    sudo cp "$scriptdir/shaders/patrickm-scanlines1920x1080-5x.cfg" "$emudir/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080-5x.cfg"
                    sudo cp "$scriptdir/shaders/patrickm-scanlines1920x1080-5x.png" "$emudir/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080-5x.png"
                    sudo cp "$scriptdir/shaders/patrickm-scanlines1920x1080.cfg" "$emudir/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080.cfg"
                    sudo cp "$scriptdir/shaders/patrickm-scanlines1920x1080.png" "$emudir/retroarch/overlays/effects/scanlines/patrickm-scanlines1920x1080.png"
                    sudo cp "$scriptdir/shaders/patrickm-scanlines1280x720.cfg" "$emudir/retroarch/overlays/effects/scanlines/patrickm-scanlines1280x720.cfg"
                    sudo cp "$scriptdir/shaders/patrickm-scanlines1280x720.png" "$emudir/retroarch/overlays/effects/scanlines/patrickm-scanlines1280x720.png"
                    echo "Required files installed - you dont need to run this again"
                    echo ""
                    break  #  Breaks out of the select, back to the mango loop.
                  ;;
                  5) # Remove ALL Arcade Bezel configs
                    echo ""
                    echo ""
                    rm -f "$romdir/mame-libretro/"*.cfg
                    echo "ALL .cfg files have been removed from $romdir/mame-libretro"
                    echo ""
                    echo ""
                    break  #  Breaks out of the select, back to the mango loop.
                  ;;  
                  6) # Quit
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
                    # Apply shaders to all systems. Possibly better for 720p output that the overlays. Set Video Modes Back
                    cp "$scriptdir/all-videomodes/videomodes-original.cfg" "$configdir/all/videomodes.cfg"
                    cp "$sysrarch/snes/retroarch-shader.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$sysrarch/atarilynx/retroarch-shader.cfg" "$configdir/atarilynx/retroarch.cfg" # Atari Lynx
                    cp "$sysrarch/fba/retroarch-shader.cfg" "$configdir/fba/retroarch.cfg" # FBA
                    cp "$sysrarch/gamegear/retroarch-shader.cfg" "$configdir/gamegear/retroarch.cfg" # GameGear
                    cp "$sysrarch/gb/retroarch-shader.cfg" "$configdir/gb/retroarch.cfg" # Game Boy
                    cp "$sysrarch/gba/retroarch-shader.cfg" "$configdir/gba/retroarch.cfg" # Game Boy Advance
                    cp "$sysrarch/gbc/retroarch-shader.cfg" "$configdir/gbc/retroarch.cfg" # Game Boy Colour
                    cp "$sysrarch/mastersystem/retroarch-shader.cfg" "$configdir/mastersystem/retroarch.cfg" # Sega MasterSystem
                    cp "$sysrarch/megadrive/retroarch-shader.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$sysrarch/neogeo/retroarch-shader.cfg" "$configdir/neogeo/retroarch.cfg" # Neo Geo
                    cp "$sysrarch/nes/retroarch-shader.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$sysrarch/pcengine/retroarch-shader.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    cp "$sysrarch/psx/retroarch-shader.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    cp "$sysrarch/sega32x/retroarch-shader.cfg" "$configdir/sega32x/retroarch.cfg" # Sega 32x
                    cp "$sysrarch/segacd/retroarch-shader.cfg" "$configdir/segacd/retroarch.cfg" # Sega CD
                    echo "Shader has now been applied"
                    echo "Shaders have been applied to SNES, Atari Lynx, FBA, GameGear, GB, GBA, GBC, Mastersystem, Megadrive, Neo Geo, NES, PC Engine, PSX, Sega 32X, Sega CD"
                    echo ""
                    break
                  ;;
                  2) # CRT-Shader
                    echo ""
                    echo ""
                    cp "$scriptdir/users/davej/system-retroarch-cfg/fba/retroarch-shader-davej-fba.cfg" "$configdir/fba/retroarch.cfg" # FBA
                    cp "$scriptdir/users/davej/system-retroarch-cfg/mame-libretro/retroarch-shader-davej-mamelibretro.cfg" "$configdir/mame-libretro/retroarch.cfg" # MAME Libretro
                    cp "$scriptdir/users/davej/system-retroarch-cfg/mame-mame4all/retroarch-shader-davej-mamemame4all.cfg" "$configdir/mame-mame4all/retroarch.cfg" # MAME mame4all
                    cp "$scriptdir/users/davej/system-retroarch-cfg/mastersystem/retroarch-shader-davej-mastersystem.cfg" "$configdir/mastersystem/retroarch.cfg" # Mastersystem
                    cp "$scriptdir/users/davej/system-retroarch-cfg/megadrive/retroarch-shader-davej-megadrive.cfg" "$configdir/megadrive/retroarch.cfg" # Megadrive
                    cp "$scriptdir/users/davej/system-retroarch-cfg/neogeo/retroarch-shader-davej-neogeo.cfg" "$configdir/neogeo/retroarch.cfg" # Neo Geo
                    cp "$scriptdir/users/davej/system-retroarch-cfg/nes/retroarch-shader-davej-nes.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$scriptdir/users/davej/system-retroarch-cfg/pcengine/retroarch-shader-davej-pcengine.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    cp "$scriptdir/users/davej/system-retroarch-cfg/psx/retroarch-shader-davej-psx.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    cp "$scriptdir/users/davej/system-retroarch-cfg/sega32x/retroarch-shader-davej-sega32x.cfg" "$configdir/sega32x/retroarch.cfg" # Sega32x
                    cp "$scriptdir/users/davej/system-retroarch-cfg/segacd/retroarch-shader-davej-segacd.cfg" "$configdir/segacd/retroarch.cfg" # Sega CD
                    cp "$scriptdir/users/davej/system-retroarch-cfg/snes/retroarch-shader-davej-snes.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    echo "CRT Shader has now been applied"
                    echo "Shaders have been applied to FBA, MAME-Libretro, MAME-Mame4all, Mastersystem, Megadrive, Neo Geo, NES, PC Engine, PSX, Sega32x, Sega CD, SNES"
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
                    #Apply overlays with the TV border. Designed to emulate a 4:3 approach. Copy VideoModes
                    cp "$scriptdir/all-videomodes/videomodes-updated.cfg" "$configdir/all/videomodes.cfg"
                    cp "$sysrarch/snes/retroarch-overlay.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$sysrarch/atarilynx/retroarch-overlay.cfg" "$configdir/atarilynx/retroarch.cfg" # Atari Lynx
                    cp "$sysrarch/gamegear/retroarch-overlay.cfg" "$configdir/gamegear/retroarch.cfg" # GameGear
                    cp "$sysrarch/gb/retroarch-overlay.cfg" "$configdir/gb/retroarch.cfg" # Game Boy
                    cp "$sysrarch/gba/retroarch-overlay.cfg" "$configdir/gba/retroarch.cfg" # Game Boy Advance
                    cp "$sysrarch/gbc/retroarch-overlay.cfg" "$configdir/gbc/retroarch.cfg" # Game Boy Colour
                    cp "$sysrarch/mastersystem/retroarch-overlay.cfg" "$configdir/mastersystem/retroarch.cfg" # Sega MasterSystem
                    cp "$sysrarch/megadrive/retroarch-overlay.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$sysrarch/neogeo/retroarch-overlay.cfg" "$configdir/neogeo/retroarch.cfg" # Neo Geo
                    cp "$sysrarch/nes/retroarch-overlay.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$sysrarch/pcengine/retroarch-overlay.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    cp "$sysrarch/psx/retroarch-overlay.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    cp "$sysrarch/sega32x/retroarch-overlay.cfg" "$configdir/sega32x/retroarch.cfg" # Sega 32x
                    cp "$sysrarch/segacd/retroarch-overlay.cfg" "$configdir/segacd/retroarch.cfg" # Sega CD
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
                    cp "$scriptdir/all-videomodes/videomodes-updated.cfg" "$configdir/all/videomodes.cfg"
                    cp "$sysrarch/snes/retroarch-overlay-smooth-off.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$sysrarch/atarilynx/retroarch-overlay-smooth-off.cfg" "$configdir/atarilynx/retroarch.cfg" # Atari Lynx
                    cp "$sysrarch/gamegear/retroarch-overlay-smooth-off.cfg" "$configdir/gamegear/retroarch.cfg" # GameGear
                    cp "$sysrarch/gb/retroarch-overlay-smooth-off.cfg" "$configdir/gb/retroarch.cfg" # Game Boy
                    cp "$sysrarch/gba/retroarch-overlay-smooth-off.cfg" "$configdir/gba/retroarch.cfg" # Game Boy Advance
                    cp "$sysrarch/gbc/retroarch-overlay-smooth-off.cfg" "$configdir/gbc/retroarch.cfg" # Game Boy Colour
                    cp "$sysrarch/mastersystem/retroarch-overlay-smooth-off.cfg" "$configdir/mastersystem/retroarch.cfg" # Sega MasterSystem
                    cp "$sysrarch/megadrive/retroarch-overlay-smooth-off.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$sysrarch/neogeo/retroarch-overlay-smooth-off.cfg" "$configdir/neogeo/retroarch.cfg" # Neo Geo
                    cp "$sysrarch/nes/retroarch-overlay-smooth-off.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$sysrarch/pcengine/retroarch-overlay-smooth-off.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    cp "$sysrarch/psx/retroarch-overlay-smooth-off.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    cp "$sysrarch/sega32x/retroarch-overlay-smooth-off.cfg" "$configdir/sega32x/retroarch.cfg" # Sega 32x
                    cp "$sysrarch/segacd/retroarch-overlay-smooth-off.cfg" "$configdir/segacd/retroarch.cfg" # Sega CD
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
                    cp "$scriptdir/all-videomodes/videomodes-updated.cfg" "$configdir/all/videomodes.cfg"
                    cp "$sysrarch/snes/retroarch-overlay-no-tv.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$sysrarch/mastersystem/retroarch-overlay-no-tv.cfg" "$configdir/mastersystem/retroarch.cfg" # Sega MasterSystem
                    cp "$sysrarch/megadrive/retroarch-overlay-no-tv.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$sysrarch/neogeo/retroarch-overlay-no-tv.cfg" "$configdir/neogeo/retroarch.cfg" # Neo Geo
                    cp "$sysrarch/nes/retroarch-overlay-no-tv.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$sysrarch/pcengine/retroarch-overlay-no-tv.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    cp "$sysrarch/psx/retroarch-overlay-no-tv.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    cp "$sysrarch/sega32x/retroarch-overlay-no-tv.cfg" "$configdir/sega32x/retroarch.cfg" # Sega 32x
                    cp "$sysrarch/segacd/retroarch-overlay-no-tv.cfg" "$configdir/segacd/retroarch.cfg" # Sega CD
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
                    cp "$scriptdir/all-videomodes/videomodes-updated2.cfg" "$configdir/all/videomodes.cfg"
                    cp "$scriptdir/all-videomodes/retroarch-core-options-updated.cfg" "$configdir/all/retroarch-core-options.cfg"
                    cp "$sysrarch/snes/retroarch-overlay-patrickm-5x-noshader.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$sysrarch/mastersystem/retroarch-overlay-patrickm-5x-noshader.cfg" "$configdir/mastersystem/retroarch.cfg" # Sega Mastersystem
                    cp "$sysrarch/megadrive/retroarch-overlay-patrickm-5x-noshader.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$sysrarch/segacd/retroarch-overlay-patrickm-5x-noshader.cfg" "$configdir/segacd/retroarch.cfg" # Sega CD
                    cp "$sysrarch/sega32x/retroarch-overlay-patrickm-5x-noshader.cfg" "$configdir/sega32x/retroarch.cfg" # Sega 32X
                    cp "$sysrarch/nes/retroarch-overlay-patrickm-5x-noshader.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$sysrarch/pcengine/retroarch-overlay-patrickm-5x-noshader.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    cp "$sysrarch/psx/retroarch-overlay-patrickm-5x-noshader.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    echo "Overlays 5x integer scale applied for SNES, Mastersystem, Megadrive, Sega CD, Sega 32x, NES, PC Engine, PSX"
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
                    cp "$scriptdir/all-videomodes/videomodes-updated2.cfg" "$configdir/all/videomodes.cfg"
                    cp "$scriptdir/all-videomodes/retroarch-core-options-updated.cfg" "$configdir/all/retroarch-core-options.cfg"
                    cp "$sysrarch/snes/retroarch-overlay-patrickm.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$sysrarch/megadrive/retroarch-overlay-patrickm.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$sysrarch/segacd/retroarch-overlay-patrickm.cfg" "$configdir/segacd/retroarch.cfg" # Sega CD
                    cp "$sysrarch/nes/retroarch-overlay-patrickm.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$sysrarch/pcengine/retroarch-overlay-patrickm.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    cp "$sysrarch/psx/retroarch-overlay-patrickm.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    echo "Overlays 4x integer scale applied for SNES, Megadrive, Sega CD, NES, PC Engine, PSX"
                    echo "There are no shaders applied with these settings"
                    echo "Genesis-Plus-GX is best used for the Megadrive emulator with these settings"
                    echo "http://blog.petrockblock.com/forums/topic/list-of-recommended-shaders-for-raspberry-piretropie-how-to-get-the-crt-look/"
                    echo ""
                    break
                  ;;
                  6) # thorig-1080p
                    echo ""
                    echo ""
                    cp "$scriptdir/all-videomodes/videomodes-updated2.cfg" "$configdir/all/videomodes.cfg" # Copy VideoModes
                    cp "$scriptdir/users/thorig/system-retroarch-cfg/snes/retroarch-overlay-thorig-1080p-snes.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$scriptdir/users/thorig/system-retroarch-cfg/mastersystem/retroarch-overlay-thorig-1080p-mastersystem.cfg" "$configdir/mastersystem/retroarch.cfg" # Sega Mastersystem
                    cp "$scriptdir/users/thorig/system-retroarch-cfg/megadrive/retroarch-overlay-thorig-1080p-megadrive.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$scriptdir/users/thorig/system-retroarch-cfg/neogeo/retroarch-overlay-thorig-1080p-neogeo.cfg" "$configdir/neogeo/retroarch.cfg" # Neo Geo
                    cp "$scriptdir/users/thorig/system-retroarch-cfg/nes/retroarch-overlay-thorig-1080p-nes.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$scriptdir/users/thorig/system-retroarch-cfg/psx/retroarch-overlay-thorig-1080p-psx.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    cp "$scriptdir/users/thorig/system-retroarch-cfg/pcengine/retroarch-overlay-thorig-1080p-pcengine.cfg" "$configdir/pcengine/retroarch.cfg" # PC Engine
                    echo "Overlays have been applied for SNES, Megadrive, Mastersysten, Neo Geo, NES, PC Engine and PSX"
                    echo "There are no shaders applied with these settings"
                    echo "These settings are from user thorig: http://blog.petrockblock.com/community/members/thorig/"
                    echo ""
                    break
                  ;;
                  7) # chito-1080p
                    echo ""
                    echo ""
                    cp "$scriptdir/users/chito/system-retroarch-cfg/gamegear/retroarch-overlay-chito-gamegear.cfg" "$configdir/gamegear/retroarch.cfg" # GameGear
                    cp "$scriptdir/users/chito/system-retroarch-cfg/gb/retroarch-overlay-chito-gb.cfg" "$configdir/gb/retroarch.cfg" # GameBoy
                    cp "$scriptdir/users/chito/system-retroarch-cfg/gba/retroarch-overlay-chito-gba.cfg" "$configdir/gba/retroarch.cfg" # GameBoy Advance
                    cp "$scriptdir/users/chito/system-retroarch-cfg/gbc/retroarch-overlay-chito-gbc.cfg" "$configdir/gbc/retroarch.cfg" # GameBoy Colour
                    cp "$scriptdir/users/chito/system-retroarch-cfg/mastersystem/retroarch-overlay-chito-mastersystem.cfg" "$configdir/mastersystem/retroarch.cfg" # Mastersystem
                    cp "$scriptdir/users/chito/system-retroarch-cfg/megadrive/retroarch-overlay-chito-megadrive.cfg" "$configdir/megadrive/retroarch.cfg" # Megadrive
                    cp "$scriptdir/users/chito/system-retroarch-cfg/nes/retroarch-overlay-chito-nes.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$scriptdir/users/chito/system-retroarch-cfg/ngp/retroarch-overlay-chito-ngp.cfg" "$configdir/ngp/retroarch.cfg" # Neo Geo Pocket
                    cp "$scriptdir/users/chito/system-retroarch-cfg/snes/retroarch-overlay-chito-snes.cfg" "$configdir/snes/retroarch.cfg" # SNES
                    cp "$scriptdir/users/chito/system-retroarch-cfg/wonderswan/retroarch-overlay-chito-wonderswan.cfg" "$configdir/wonderswan/retroarch.cfg" # Wonderswan
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
                    cp "$scriptdir/users/arcade-bezels/arcade-bezel-retroarch-configs/Done/*.cfg" "$romdir/mame-libretro/"
                    echo "Arcade bezel configs have been copied to $romdir/mame-libretro - these will apply to matching roms with MAME 2003"
                    echo "You can of course manually copy these configs (romname.zip.cfg) to any libretro mame/fba based rom folder you want"
                    echo ""
                    echo "Remember you can manually turn the curvature effect on and off (to reduce CPU use) by manually editing nano $emudir/retroarch/shader/arcade-bezel-shader/shaders/crt-pi.glsl"
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
                    cp "$scriptdir/all-videomodes/videomodes-updated2.cfg" "$configdir/all/videomodes.cfg"
                    cp "$scriptdir/all-videomodes/retroarch-core-options-updated.cfg" "$configdir/all/retroarch-core-options.cfg"
                    cp "$sysrarch/snes/retroarch-overlay-patrickm-720p.cfg" "$configdir/snes/retroarch.cfg" #SNES
                    cp "$sysrarch/megadrive/retroarch-overlay-patrickm-720p.cfg" "$configdir/megadrive/retroarch.cfg" # Sega Megadrive
                    cp "$sysrarch/nes/retroarch-overlay-patrickm-720p.cfg" "$configdir/nes/retroarch.cfg" # NES
                    cp "$sysrarch/psx/retroarch-overlay-patrickm-720p.cfg" "$configdir/psx/retroarch.cfg" # PSX
                    echo "Overlays 3x integer scale (720p) applied for SNES, Megadrive, NES, PSX"
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