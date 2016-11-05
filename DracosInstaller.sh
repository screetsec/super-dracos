#!/usr/bin/env bash

#===============================================================================================#
#                                 Dracos Linux Installer										#
#																								#
#                      Script write By Edo Maland & Muhammad Yuga								#
#               OS Penetration From Indonesia : https://dracos-linux.org/						#
#===============================================================================================#

#This colour
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'

####################################################
# OPTIONS
####################################################

again='y'
while  [ $again == 'y' ] || [ $again == 'Y' ];
	do

####################################################
# BANNER
####################################################
clear
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
echo -e $cyan "     ######  ######     #     #####  ####### ######  ";
echo "      #     # #     #   # #   #     # #       #     # ";
echo "      #     # #     #  #   #  #       #       #     # ";
echo "      #     # ######  #     # #       #####   ######  ";
echo "      #     # #   #   ####### #       #       #   #   ";
echo "      #     # #    #  #     # #     # #       #    #  ";
echo "      ######  #     # #     #  #####  ####### #     # ";
echo ""
echo -e $okegreen"      ==============================================="
echo -e $red"                      DracOS Installer"
echo ""
echo -e $cyan"      Script by     $white:$red ScreetSec - BlackCat"
echo -e $cyan"      Dracos Linux  $white:$red dracos-linux.org"
echo ""
echo -e $okegreen"      ==============================================="
echo ""
echo -e $white"      [$okegreen"01"$white]$cyan  CREATE PARTITION WITH GPARTED  "
echo -e $white"      [$okegreen"02"$white]$cyan  CREATE PARTITION WITH FDISK  "
echo -e $white"      [$okegreen"03"$white]$cyan  START INSTALL DRACOS  "
echo -e $white"      [$okegreen"04"$white]$cyan  EXIT  "
echo ""
echo -n -e $red'      \033[4mDracosLeak:\033[0m>> '; tput sgr0 #insert your choice
read Dracosinstall
echo -e $okegreen"  --------------------------------------------------------------   ";

		if test $Dracosinstall == '1'
				then
					echo 
					echo -ne $cyan"  Running Gparted for partition"
					echo
					echo -ne " Wait ... "
					echo
					gparted
					echo -ne " Now press optional 3 for next step "
		elif test $Dracosinstall == '2'
	 			then
					echo
				  echo -ne $cyan"  Checking partition Table ... "
					echo
				  fdisk -l
				  read disk
					echo
					echo -ne " Partition Table for use ( /dev/sdx ): "
					read $sda
					fdisk /dev/$sda
					echo ""
					echo -ne " Checking again ... "
					echo ""
					echo -ne " The Name of the New Partition ( dev/sdx ) : "
					read $np
					mkfs -t -e ext4 /dev/$np
			elif test $Dracosinstall == '3'
				then
					echo -ne " Lets Install Dracos , press any key : "
					read press
					echo
					mkdir -p /mnt/{iso-dracos,dracos,squash}
					sleep 1
					echo 
					echo -ne " The Name of the New Partition ( /dev/sdx ) : "
					read dev
					mount -t ext4 $dev /mnt/dracos
					cd /mnt/dracos
					mkdir -p mnt, proc, dev,proc,tmp, run
					iso=`zenity  --title="Select a file dracOS iso" --file-selection`
					mount $iso /mnt/iso-dracos/
					echo " Your architecture (32 or 64 bit)?"
					read arch
					if [ $arch == 32 ]; then
						mount -t squashfs /mnt/iso-dracos/boot/x86/root.sfs /mnt/squash/
					elif [ $arch == 64 ]; then
						mount -t squashfs /mnt/iso-dracos/dracos/root.sfs /mnt/squash/
					fi
					echo
					echo -ne " Now rsync dracos , Please wait "
					rsync -av /mnt/squash/* /mnt/dracos/
					update-grub && update-grub2 > /dev/null 2>&1
					echo -ne " Complete the installation thankyou for using installer "
				elif test $Dracosinstall == '4'
		      then
		        clear
		        exit
				fi
						echo
						echo -n -e "Back to Menu? (y/n) :";
						read again;

						    while  [ $again != 'y' ] && [ $again != 'Y' ] && [ $again != 'n' ] && [ $again != 'N' ];
						    do
						       echo -n "Back to menu (y/n) :";
						       read again;
						    done
					done
