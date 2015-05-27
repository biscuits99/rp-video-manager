#!/bin/bash
# Updates RetroArch emulator to use snes.glslp shader


PS3='Choose your video output: '
options=("Default" "Shader" "Overlays" "Quit")
select opt in "${options[@]}"
do
    case $opt in

        "Default")
cp ~/video-manager/system-retroarch/retroarch-standard.cfg /opt/retropie/configs/snes/retroarch.cfg
cp ~/video-manager/all-videomodes/videomodes-original.cfg /opt/retropie/configs/all/videomodes.cfg
            echo "Settings are back to default"
break
            ;;

        "Shader")
echo "Updating files to use snes.glslp shader"
cp ~/video-manager/system-retroarch/retroarch-shader.cfg /opt/retropie/configs/snes/retroarch.cfg
cp ~/video-manager/all-videomodes/videomodes-original.cfg /opt/retropie/configs/all/videomodes.cfg
            echo "Shader has now been applied"
            break
            ;;

        "Overlays")
cp ~/video-manager/system-retroarch/retroarch-overlay.cfg /opt/retropie/configs/snes/retroarch.cfg
cp ~/video-manager/all-videomodes/videomodes-updated.cfg /opt/retropie/configs/all/videomodes.cfg
mkdir -p /opt/retropie/emulators/retroarch/overlays/16-9
cp -r ~/video-manager/16-9/* /opt/retropie/emulators/retroarch/overlays/16-9/
            echo "Overlays have now been applied"
            break
            ;;

        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done



