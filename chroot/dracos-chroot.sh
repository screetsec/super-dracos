#! /bin/bash
#####################################################################################################################
#                                                 Dracos Simple Chroot
# 
#                                      For Info Contact : eLCrush Dracos-linux.org
# 
#                                           Thanks For Development Team 
#                                         Special Thanks Myuga & Purnomo Hadi
#####################################################################################################################

if [ "$(id -u)" != "0" ]; then
    echo [✔]::[Check User]:$USER;
    sleep 1
    echo [X]::[not root] kamu harus menggunakan user [root] untuk menjalankan ini script;
    sleep 1
    sudo -s
    exit
else
    echo [✔] Your User :$USER;
clear
fi

# untuk warna 
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'


# untuk pilihan
again='y'
while  [ $again == 'y' ] || [ $again == 'Y' ];
	do


clear
echo -e $white" =============================================================================="
echo -e $cyan"     AUTHOR : Blackbutterfly [Purnomo Hadi] | eLCrush [Rifqi Hidayatulloh]"
echo -e $white" =============================================================================="
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
echo -e $white" ==============================================================================="
echo -e $cyan"                    Drac0s Linux Chroot Simple Script $red v1.0"
echo -e $white" ==============================================================================="
echo ""
echo
echo -e $white	"$okegreen	1) $white Chroot Versi 1  $red By Blackbutterfly"
echo -e $white	"$okegreen 	2) $white Chroot Versi 2 $red  By eLCrush"
echo -e $white  "$okegreen       3) $white exit"
echo ""
echo -n -e $cyan"root"$white"@"$red"chroot $white:  ";tput sgr0 
read pilihan
if test $pilihan == '1'
	  then
	  echo -ne $cyan "Create directory of chroot ( /mnt/dir )? "
	  read sdx
	  export LFS=/mnt/lfs
	  mount /dev/$sdx $LFS
    mount -v -o bind /dev ${LFS}/dev
    mount -vt devpts -o gid=5,mode=620 devpts ${LFS}/dev/pts
    mount -vt proc proc ${LFS}/proc
    mount -vt tmpfs tmpfs ${LFS}/run
    mount -vt sysfs sysfs ${LFS}/sys
    [ -h ${LFS}/dev/shm ] && mkdir -pv ${LFS}/$(readlink ${LFS}/dev/shm)
    chroot "$LFS" /bin/bash --login +h

elif test $pilihan == '2'
	then
	echo -ne $cyan "Create directory of chroot ( /mnt/dir )? "
	read kiki
	export DRACOS=/mnt/dracroot
	export bin=/bin/bash
	mount /dev/$kiki $DRACOS
	chroot /mnt/$kiki $bin

elif test $pilihan == '3'
	then
	exit

fi

echo
echo -e -n "Back to Menu? (y/n) :";
read again;

    while  [ $again != 'y' ] && [ $again != 'Y' ] && [ $again != 'n' ] && [ $again != 'N' ];
    do
       echo -n "Back to menu (y/n) :";
       read again;
    done
done

