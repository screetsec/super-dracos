#!/bin/bash
#########################
#Firefox installer dracos
#script by apsyadira 
#github https://github.com/apsya
#########################

#COLOR

#This colour
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
[[ `id -u` -eq 0 ]] || { echo -e "\e[31mMust be root to run script"; exit 1; }
resize -s 31 79 > /dev/null
menu () {
echo ""
echo ""
echo -e $red ""
echo "               80G08        "
echo "                  8G#G@8  "
echo "                    8##0  "
echo "                     0##G8    "
echo "                       ####08 "
echo "                        8#####8   "
echo "                          G#####8   "
echo "                           8G#####8   "
echo "        #8#########0         #######8   "
echo "            8#######0          0#88#####    "
echo "              8G####8         8 8#8@@8###   "
echo "                 8###        G8   8@G######   "
echo "                  8##88       8     8######8    "
echo "                    G##088          80G##G080   "
echo "                      88000000008880#      000    "
echo "                            9               0 "
echo ""
echo -e $white" ==========================================="
echo -e $cyan"  Drac0S Linux Application Tools"
echo -e $cyan"  Author: Apsyadira"
echo -e $cyan"  Thanks to : All dev Dracos Linux"
echo -e $cyan"  Visit: Dracos-linux.org"
echo -e $white" ==========================================="
echo ""
echo -e $white"	[$red"01"$white] FIREFOX 64 BIT"
echo -e $white"	[$red"02"$white] FIREFOX 32 BIT"
echo -e $white"	[$red"03"$white] INSTALL GTK3 (recomended)"
echo -e $white"	[$red"04"$white] EXIT"
echo ""
echo -n -e $cyan      "Insert yout choise!"
read shindy
	if test $shindy == '1'
			then
			wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/49.0/linux-x86_64/en-US/firefox-49.0.tar.bz2
 			tar -xvf firefox*.tar.bz2
 			mv firefox /opt
 			sudo ln -s /opt/firefox/firefox /usr/bin/firefox

	elif test $shindy == '2'
 			then
 			wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/49.0/linux-i686/en-US/firefox-49.0.tar.bz2
 			tar -xvf firefox*.tar.bz2
 			mv firefox /opt
 			sudo ln -s /opt/firefox/firefox /usr/bin/firefox
 	
 	elif test $shindy == '3'
 			then
 			wget -c ftp://ftp.gnome.org/pub/gnome/sources/gtk+/3.18/gtk+-3.18.7.tar.xz
 			tar -xf gtk+-3.18.7.tar.xz
 			cd gtk+-3.18.7
 			./configure
 			make
 			make install
 	
 	elif test $shindy == '4'
 			then
 			echo ""
 			echo "Thanks for using this script"
 			sleep 2
 			exit
 			
 	else
  			echo -e "  Incorrect Number"
  			fi
  			echo -n -e "  Do you want exit? ( Yes / No ) :"
  			read back
  			if [ $back != 'n' ] && [ $back != 'N' ]
  					then
  					clear
  					exit
  			elif [ $back != 'y' ] && [ $back != 'Y' ]
  					then
  					menu
 	fi
}
echo ""
echo ""
echo -e $red ""
echo "               80G08        "
echo "                  8G#G@8  "
echo "                    8##0  "
echo "                     0##G8    "
echo "                       ####08 "
echo "                        8#####8   "
echo "                          G#####8   "
echo "                           8G#####8   "
echo "        #8#########0         #######8   "
echo "            8#######0          0#88#####    "
echo "              8G####8         8 8#8@@8###   "
echo "                 8###        G8   8@G######   "
echo "                  8##88       8     8######8    "
echo "                    G##088          80G##G080   "
echo "                      88000000008880#      000    "
echo "                            9               0 "
echo ""
echo -e $white" ==========================================="
echo -e $cyan"  Drac0S Linux Super Tools"
echo -e $cyan"  Author: Apsyadira"
echo -e $cyan"  Thanks to : All dev Dracos Linux"
echo -e $cyan"  Visit: Dracos-linux.org"
echo -e $white" ==========================================="
echo ""
echo -e $white"	[$red"01"$white] FIREFOX 64 BIT"
echo -e $white"	[$red"02"$white] FIREFOX 32 BIT"
echo -e $white"	[$red"03"$white] INSTALL GTK3 (recomended)"
echo -e $white"	[$red"04"$white] EXIT"
echo ""
echo -n -e $cyan      "Pilih yang anda suka ?"
read shindy
	if test $shindy == '1'
			then
			wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/49.0/linux-x86_64/en-US/firefox-49.0.tar.bz2
 			tar -xvf firefox*.tar.bz2
 			mv firefox /opt
 			sudo ln -s /opt/firefox/firefox /usr/bin/firefox

	elif test $shindy == '2'
 			then
 			wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/49.0/linux-i686/en-US/firefox-49.0.tar.bz2
 			tar -xvf firefox*.tar.bz2
 			mv firefox /opt
 			sudo ln -s /opt/firefox/firefox /usr/bin/firefox
 	
 	elif test $shindy == '3'
 			then
 			wget -c ftp://ftp.gnome.org/pub/gnome/sources/gtk+/3.18/gtk+-3.18.7.tar.xz
 			tar -xf gtk+-3.18.7.tar.xz
 			cd gtk+-3.18.7
 			./configure
 			make
 			make install
 	
 	elif test $shindy == '4'
 			then
 			echo ""
 			echo "Thanks for using this script"
 			sleep 2
 			exit
 			
 	else
  			echo -e "  Incorrect Number"
  			fi
  			echo -n -e "  Do you want exit? ( Yes / No ) :"
  			read back
  			if [ $back != 'n' ] && [ $back != 'N' ]
  					then
  					clear
  					exit
  			elif [ $back != 'y' ] && [ $back != 'Y' ]
  					then
  					menu
fi
