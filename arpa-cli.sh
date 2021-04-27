#!/bin/bash
#AUTHOR: androrama, fenixlinux.com
#License GPLV3

clear
 


#Add software function.

addapps () {

clear

while :
  do
echo "
╔═╗╔═╗╔═╗╔═╗
╠═╣╠═╝╠═╝╚═╗
╩ ╩╩  ╩  ╚═╝
============
"
echo "1)  Simplescreenrecorder. "
echo "2)  Xscreensaver."
echo "3)  Samba/CIFS (Windows Network)."
echo "4)  Anbox (Android Emulator)."
echo "5)  XDMAN (Xtreme Download Manager)."
echo "6)  Nomachine (Remote Desktop)."
echo "7)  Qjoypad (Gamepad... mapping)."
echo "8)  Multimc5 (Minecraft Launcher)."
echo "9)  Argon Case Fan Control."
echo "10) Antimicro (Gamepad... mapping)."
echo "11) Ksnip (Screenshot tool)."
echo "12) Residual VM (LucasArts Games EMU)."
echo "13) Tor-Browser (Surf the Internet anonymously)."
echo ""
echo "n) Next."
echo "q) Return to the main menu."
echo ""
echo -n "[Type an option and then press INTRO]=> "


read opcion
case $opcion in


1)
simplescreenrecorder;;
2)
xscreensaver;;
3)
smb;;
4)
anbox;;
5)
xdman;;
6)
nomachine;;
7)
qjoypad;;
8)
multimc5;;
9)
argonone;;
10)
antimicrox;;
11)
ksnip;;
12)
residualvm;;
13)
tor;;

n)
addapps2;;

q) 
clear;
menu;;

*)

echo "$opc invalid option ";
echo "Press a key to continue.";
read foo;;

 esac
done

}

addapps2 () {

clear

while :
  do
echo "
╔═╗╔═╗╔═╗╔═╗
╠═╣╠═╝╠═╝╚═╗ 2
╩ ╩╩  ╩  ╚═╝
==============
"
echo "1)  Gbrainy (mind trainer). "
echo "2)  Gnome Nibbles (worm around a maze game)."
echo "3)  Hatari (Atari Emulator)."
echo "4)  Stella (Atari 2600 VCS emulator)."
echo "5)  Deja-Dup (Simple backup tool)."
echo "6)  Dsmume (NDS Emulator)."
echo "7)  Gnome-passwordsafe (Password Manager)."
echo "8)  Scummvm (Adventure Games Emulator)."
echo "9)  Higan (Multi Emulator)."
echo "10) Mame (Mame Emulator)."
echo "11) Qmc2 (Multiple Arcade Machine Emulator)."
echo "12) Duckstation (PS1 Emulator)."
echo "13) Aircrack-ng (Network security)."
echo ""
echo "p) Previous |  n) Next."
echo "q) Return to the main menu."
echo ""
echo -n "[Type an option and then press INTRO]=> "


read opcion
case $opcion in


1)
gbrainy;;
2)
nibbles;;
3)
hatari;;
4)
stella;;
5)
dejadup;;
6)
desmume;;
7)
gnomepasswordsafe;;
8)
scummvm;;
9)
higan;;
10)
mame;;
11)
qmc2;;
12)
duckstation;;
13)
aircrackng2;;

p)
addapps;;

n)
addapps3;;

q) 
clear;
menu;;

*)

echo "$opc invalid option ";
echo "Press a key to continue.";
read foo;;

 esac
done

}

addapps3 () {

clear

while :
  do
echo "
╔═╗╔═╗╔═╗╔═╗
╠═╣╠═╝╠═╝╚═╗ 3
╩ ╩╩  ╩  ╚═╝
==============
"
echo "1)  Wireshark (Network Security Tool). "
echo "2)  Moonlight (Stream your games)."
echo "3)  Audacious (Audio Player)."
echo "4)  Arduino IDE."
echo "5)  Cura (3D Software)."
echo "6)  Prusa-Slicer (G-code generator for 3D printers)."
echo "7)  KeePassXC (Password Manager)."
echo "8)  Libre Office (Office Suite)."
echo "9)  LibreCAD (A proffesional CAD system)."
echo "10) Gimp (Create/edit photographs)."
echo "11) OpenShot (Video Editor)."
echo "12) Audacity (Record and edit audio files)."
echo "13) VScodium (Source code editor)."
echo ""
echo "p) Previous."
echo "q) Return to the main menu."
echo ""
echo -n "[Type an option and then press INTRO]=> "


read opcion
case $opcion in


1)
wireshark;;
2)
moonlight;;
3)
audacious;;
4)
arduinoide;;
5)
cura;;
6)
prusa;;
7)
keepassxc;;
8)
libreoffice;;
9)
librecad;;
10)
gimp;;
11)
openshot;;
12)
audacity;;
13)
vscodium;;

p)
addapps2;;

q) 
clear;
menu;;

*)

echo "$opc invalid option ";
echo "Press a key to continue.";
read foo;;

 esac
done

}

#apps installers/uninstallers

wireshark () {

echo

if [ -f /usr/bin/wireshark ]; then
  read -p "Uninstall Wireshark? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R wireshark-qt
   fi
else
  echo "Install wireshark?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S wireshark-qt || echo "Error installing wireshark."
   fi
fi

}

duckstation () {

echo

if [ -f /usr/bin/duckstation-qt ]; then
  read -p "Uninstall Duckstation? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R duckstation-git
   fi
else
   echo "Install Duckstation?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/duckstation-git-preview.r4181.e9aab649-1-aarch64.pkg.tar.zst
     sudo pacman -U duckstation-git-preview.r4181.e9aab649-1-aarch64.pkg.tar.zst || echo "Error installing Duckstation."
   fi
fi


}

moonlight () {

echo

if [ -f /usr/bin/moonlight ]; then
  read -p "Uninstall Moonlight? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R moonlight-qt
   fi
else
   echo "Install Moonlight?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/moonlight-qt-3.1.0-1-aarch64.pkg.tar.zst
     sudo pacman -U moonlight-qt-3.1.0-1-aarch64.pkg.tar.zst || echo "Error installing Moonlight."
   fi
fi


}

vscodium () {

echo

if [ -f /usr/bin/vscodium ]; then
  read -p "Uninstall Vscodium? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R vscodium-bin
   fi
else
   echo "Install VScodium?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/vscodium-bin-1.54.3-1-aarch64.pkg.tar.zst
     sudo pacman -U vscodium-bin-1.54.3-1-aarch64.pkg.tar.zst || echo "Error installing vscodium."
   fi
fi


}

audacious () {

echo

if [ -f /usr/bin/audacious ]; then
  read -p "Uninstall audacious? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R audacious
   fi
else
   echo "Install audacious?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S audacious || echo "Error installing audacious."
   fi
fi


}

arduinoide () {

echo

if [ -f /usr/bin/arduino ]; then
  read -p "Uninstall arduinoide? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R arduino
   fi
else
   echo "Install arduinoide?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S arduino || echo "Error installing arduinoide."
   fi
fi


}

cura () {

echo

if [ -f /usr/bin/cura ]; then
  read -p "Uninstall cura? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R cura
   fi
else
   echo "Install cura?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S cura || echo "Error installing cura."
   fi
fi


}

prusa () {

echo

if [ -f /usr/bin/prusa-slicer ]; then
  read -p "Uninstall prusa-slicer? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R prusa-slicer

   fi
else
   echo "Install prusa?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S prusa-slicer || echo "Error installing prusa-slicer."
   fi
fi


}

keepassxc () {

echo

if [ -f /usr/bin/keepassxc ]; then
  read -p "Uninstall keepassxc? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R keepassxc
   fi
else
   echo "Install keepassxc?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S keepassxc || echo "Error installing keepassxc."
   fi
fi


}

libreoffice () {

echo

if [ -f /usr/bin/libreoffice ]; then
  read -p "Uninstall libreoffice? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R libreoffice-fresh
   fi
else
   echo "Install libreoffice?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S libreoffice || echo "Error installing libreoffice."
   fi
fi


}

librecad () {

echo

if [ -f /usr/bin/librecad ]; then
  read -p "Uninstall librecad? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R librecad
   fi
else
   echo "Install librecad?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S librecad || echo "Error installing librecad."
   fi
fi


}

gimp () {

echo

if [ -f /usr/bin/gimp ]; then
  read -p "Uninstall gimp? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R gimp
   fi
else
   echo "Install gimp?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S gimp || echo "Error installing gimp."
   fi
fi


}

openshot () {

echo

if [ -f /usr/bin/openshot-qt ]; then
  read -p "Uninstall openshot? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R openshot
   fi
else
   echo "Install openshot?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S openshot || echo "Error installing openshot."
   fi
fi


}

audacity () {

echo

if [ -f /usr/bin/audacity ]; then
  read -p "Uninstall audacity? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R audacity
   fi
else
   echo "Install audacity?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S audacity || echo "Error installing audacity."
   fi
fi


}


simplescreenrecorder () {

echo

if [ -f /usr/bin/simplescreenrecorder ]; then
  read -p "Uninstall simplescreenrecorder? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R simplescreenrecorder
   fi
else
  echo "Install simplescreenrecorder?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S simplescreenrecorder || echo "Error installing simplescreenrecorder."
   fi
fi

}


xscreensaver () {

echo

if [ -f /usr/bin/xscreensaver ]; then
  read -p "Uninstall xscreensaver? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R xscreensaver
   fi
else
   echo "Install xscreensaver?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S xscreensaver || echo "Error installing xscreensaver."
   fi
fi


}

smb () {

echo

if [ -f /usr/bin/smbd ]; then
  read -p "Uninstall samba? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R manjaro-settings-samba
     sudo pacman -R samba 
   fi
else
  echo "Install samba?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S samba  || echo "Error installing samba."
     sudo pacman -S manjaro-settings-samba || echo "Error installing manjaro-settings-samba."
   fi
fi

}

xdman () {

echo

if [ -f /usr/bin/xdman ]; then
  read -p "Uninstall xdman? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R xdman
   fi
else
  echo "Install xdman?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/xdman-2020.7.2.11-2-aarch64.pkg.tar.zst
     sudo pacman -U xdman-2020.7.2.11-2-aarch64.pkg.tar.zst
   fi
fi

}

nomachine () {

echo

if [ -f /var/lib/flatpak/exports/share/applications/NoMachine-base.desktop ]; then
  read -p "Uninstall nomachine? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R nomachine
   fi
else
  echo "Install nomachine?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/nomachine-7.1.3-2-aarch64.pkg.tar.zst
     sudo pacman -U nomachine-7.1.3-2-aarch64.pkg.tar.zst
   fi
fi

}

qjoypad () {

echo

if [ -f  /usr/bin/qjoypad  ]; then
  read -p "Uninstall qjoypad? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R qjoypad
   fi
else
  echo "Install qjoypad?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/qjoypad-4.3.1-1-aarch64.pkg.tar.zst
     sudo pacman -U qjoypad-4.3.1-1-aarch64.pkg.tar.zst
   fi
fi

}

multimc5 () {

echo

if [ -f  /usr/bin/multimc  ]; then
  read -p "Uninstall multimc5? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R multimc5
   fi
else
  echo "Install multimc5?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/multimc5-0.6.11-2-aarch64.pkg.tar.zst
     sudo pacman -U multimc5-0.6.11-2-aarch64.pkg.tar.zst
   fi
fi

}


argonone () {

echo

if [ -f  /usr/bin/argonone-cli   ]; then
  read -p "Uninstall argonone? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R argonone-c-git
   fi
else
  echo "Install argonone?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/argonone-c-git-r37.b30b87d-2-aarch64.pkg.tar.zst
     sudo pacman -U argonone-c-git-r37.b30b87d-2-aarch64.pkg.tar.zst
     xdg-open https://gitlab.com/DarkElvenAngel/argononed >> /dev/null

   fi
fi

}

antimicrox () {

echo

if [ -f  /usr/bin/antimicrox   ]; then
  read -p "Uninstall antimicrox ? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R antimicrox
   fi
else
  echo "Install antimicrox?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/antimicrox-3.1.4-1-aarch64.pkg.tar.zst
     sudo pacman -U antimicrox-3.1.4-1-aarch64.pkg.tar.zst
   fi
fi


}

ksnip () {

echo

if [ -f  /usr/bin/ksnip  ]; then
  read -p "Uninstall ksnip ? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R ksnip
   fi
else
  echo "Install ksnip?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/ksnip-1.8.1-2-aarch64.pkg.tar.zst
     sudo pacman -U ksnip-1.8.1-2-aarch64.pkg.tar.zst
   fi
fi


}


residualvm () {

echo

if [ -f  /usr/bin/residualvm  ]; then
  read -p "Uninstall ksnip ? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R residualvm
   fi
else
  echo "Install residualvm?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     wget --continue https://sourceforge.net/projects/fenixlinux/files/repo/archlinux/pi/residualvm-0.3.1-4-aarch64.pkg.tar.zst
     sudo pacman -U residualvm-0.3.1-4-aarch64.pkg.tar.zst
   fi
fi


}

anbox () {

echo

if [ -f /usr/bin/anbox ]; then
  read -p "Uninstall anbox? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R anbox-image-aarch64
     sudo pacman -R anbox
   fi
else
   echo "Install anbox (Android In a Box)?"
   echo -e "Anbox may reduce system performance. \nYou can uninstall it by running this wizard again.\n"
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S anbox-image-aarch64 || echo "Error installing anbox."
   fi
fi

}


gbrainy () {

echo

if [ -f /usr/bin/gbrainy ]; then
  read -p "Uninstall gbrainy? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R gbrainy
   fi
else
  echo "Install gbrainy?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S gbrainy || echo "Error installing gbrainy."
   fi
fi

}


nibbles () {

echo

if [ -f /usr/bin/gnome-nibbles ]; then
  read -p "Uninstall nibbles? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R gnome-nibbles
   fi
else
   echo "Install nibbles?"
   echo "You can uninstall it by running this wizard again."
   read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S gnome-nibbles || echo "Error installing nibbles."
   fi
fi


}

hatari () {

echo

if [ -f /usr/bin/hatari ]; then
  read -p "Uninstall hatari? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R hatari
   fi
else
  echo "Install hatari?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S hatari  || echo "Error installing hatari."
   fi
fi

}

stella () {

echo

if [ -f /usr/bin/stella ]; then
  read -p "Uninstall stella? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R stella
   fi
else
  echo "Install stella?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S stella  || echo "Error installing stella."
   fi
fi

}


dejadup () {

echo

if [ -f /usr/bin/deja-dup ]; then
  read -p "Uninstall deja-dup? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R deja-dup
   fi
else
  echo "Install deja-dup?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S deja-dup  || echo "Error installing deja-dup."
   fi
fi

}


desmume () {

echo

if [ -f /usr/share/applications/desmume.desktop ]; then
  read -p "Uninstall desmume? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R desmume
   fi
else
  echo "Install desmume?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S desmume  || echo "Error installing desmume."
   fi
fi

}

gnomepasswordsafe () {

echo

if [ -f /usr/bin/gnome-passwordsafe ]; then
  read -p "Uninstall gnome-passwordsafe? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R gnome-passwordsafe
   fi
else
  echo "Install gnome-passwordsafe?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S gnome-passwordsafe  || echo "Error installing gnome-passwordsafe."
   fi
fi

}


scummvm () {

echo

if [ -f /usr/bin/scummvm ]; then
  read -p "Uninstall scummvm? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R scummvm
   fi
else
  echo "Install scummvm?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S scummvm  || echo "Error installing scummvm."
   fi
fi

}


higan () {

echo

if [ -f /usr/bin/higan ]; then
  read -p "Uninstall higan? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R higan
   fi
else
  echo "Install higan?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S higan  || echo "Error installing higan."
   fi
fi

}


mame () {

echo

if [ -f /usr/bin/mame ]; then
  read -p "Uninstall mame? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R mame
   fi
else
  echo "Install mame?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S mame  || echo "Error installing mame."
   fi
fi

}


qmc2 () {

echo

if [ -f /usr/bin/qmc2 ]; then
  read -p "Uninstall qmc2? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R qmc2
   fi
else
  echo "Install qmc2?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S qmc2  || echo "Error installing qmc2."
   fi
fi

}


aircrackng2 () {

echo

if [ -f /usr/bin/aircrack-ng ]; then
  read -p "Uninstall aircrackng2? (y/n)]=> " answer 
    if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -R aircrack-ng
   fi
else
  echo "Install aircrackng2?"
  echo "You can uninstall it by running this wizard again."
  read -p "Continue? (y/n)]=> " answer 
   if [ $answer = y ] || [ $answer = Y ]; then
     sudo pacman -S aircrack-ng  || echo "Error installing aircrackng2."
     xdg-open https://www.aircrack-ng.org/doku.php?id=newbie_guide >> /dev/null
   fi
fi

}

 #Install Tor-Browser function / Thanks to botspot.

 tor () {

 cd
 DIRECTORY="$(dirname "$(dirname "$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )")")"

 rm -r ~/tor-browser_en-US 
 rm ~/tor.tar.xz
 rm ~/.local/share/applications/tor.desktop

 wget https://sourceforge.net/projects/tor-browser-ports/files/10.0.14-arm64-alsa/tor-browser-linux-arm64-10.0.14_en-US.tar.xz || error "Failed to download!"

 tar -xf ~/tor-browser-linux-arm64-10.0.14_en-US.tar.xz || error "Failed to extract!"

 echo "[Desktop Entry]
 Type=Application
 Name=Tor Browser
 GenericName=Web Browser
 Comment=Tor Browser is +1 for privacy and −1 for mass surveillance
 Categories=Network;WebBrowser;Security;
 Exec=$HOME/tor-browser_en-US/Browser/start-tor-browser
 X-TorBrowser-ExecShell=./Browser/start-tor-browser --detach
 Icon=/usr/share/icons/tor.png
 StartupWMClass=Tor Browser" > ~/.local/share/applications/tor.desktop

 rm $HOME/.local/share/applications/torinstall.desktop
 xdg-open https://sourceforge.net/projects/tor-browser-ports/files/ >> /dev/null
 echo Done
 sleep 10

}

#Download wine apps and games function.

wineapps () {

if [ -d "./wineapps" ] 
then
    cd wineapps
    git pull
else
    git clone https://github.com/winuxwinfree/wineapps
    
fi
echo "Open it from wine explorer. Wine explorer path: My Documents/wineapps."
sleep 10
}



addapps
