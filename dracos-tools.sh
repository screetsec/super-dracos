#!/usr/bin/env 

################################################################
#             DracOS Super Tolls                               #
#     Coded By eLCrush [-Rifqi Hidayatulloh-]                  #
#       Contact: elcrush@dracos-linux.org                      #
#           Thanks For Development Team                        #
################################################################


# Color
c0="$(tput setaf 0)"    # black
c1="$(tput setaf 1)"    # red
c2="$(tput setaf 2)"    # green
c3="$(tput setaf 3)"    # yellow
c4="$(tput setaf 4)"    # blue
c5="$(tput setaf 5)"    # magenta
c6="$(tput setaf 6)"    # cyan
c7="$(tput setaf 7)"    # white
rc="$(tput sgr0)"       # reset

#untuk warna
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'

#cek user root
if [[ $EUID -ne 0 ]]; then
    echo "Warning!!! run this script with root user!"
    exit 1
fi

resize -s 50 84 > /dev/null

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
echo -e $white" ==========================================="
echo -e $cyan"  Drac0S Linux Super Tools"
echo -e $cyan"  Author: eLCrush [-Rifqi Hidayatulloh-]"
echo -e $cyan"  Visit: Dracos-linux.org"
echo -e $white" ==========================================="
if [ $(id -u) != "0" ]; then

      echo [!]::[Check Dependencies] ;
      sleep 2
      echo [✔]::[Check User]: $USER ;
      sleep 1
      echo [x]::[not root]: you need to be [root] to run this script.;
      echo ""
      sleep 1
      exit


else

   echo [!]::[Check Dependencies]: ;
   sleep 1
   echo [✔]::[Check User]: $USER ;

fi
####################
#  OUTPUT lazext   #
####################
function lazext() {
clear
echo
echo -e $white"   A_A"
echo -e $white"  (-.-)    "
echo -e $white"   |-| $okegreen        __     __    ____  ____  _  _  ____ "
echo -e $white"  /   \ $okegreen      (  )   /__\  (_   )( ___)( \/ )(_  _)"
echo -e $white" |     | $okegreen __   )(_  /(__)\  / /_  )__)  )  (   )(  "
echo -e $white" |  || | $okegreen|  \(____)(__)(__)(____)(____)(_/\_) (__) "
echo -e $white" \ _||_/_$okegreen/            "
echo -e $white"                                      LAZY EXTRACTOR ";
echo -e $okegreen"======================================================="
echo -e $white"Example Usage :"
echo
echo -e $white  "$okegreen  1) $white Extract File Name $okegreen .tar.bz2"
echo -e $white  "$okegreen  2) $white Extract File Name $okegreen .tar.gz"
echo -e $white  "$okegreen  3) $white Extract File Name $okegreen .tar.xz"
echo -e $white  "$okegreen  4) $white Extract File Name $okegreen .lzma"
echo -e $white  "$okegreen  5) $white Extract File Name $okegreen .bz2"
echo -e $white  "$okegreen  6) $white Extract File Name $okegreen .rar"
echo -e $white  "$okegreen  7) $white Extract File Name $okegreen .gz"
echo -e $white  "$okegreen  8) $white Extract File Name $okegreen .tar"
echo -e $white  "$okegreen  9) $white Extract File Name $okegreen .tbz2"
echo -e $white  "$okegreen  10)$white Extract File Name $okegreen .tgz"
echo -e $white  "$okegreen  11)$white Extract File Name $okegreen .zip"
echo -e $white  "$okegreen  12)$white Extract File Name $okegreen .Z"
echo -e $white  "$okegreen  13)$white Extract File Name $okegreen .7z"
echo -e $white  "$okegreen  14)$white Extract File Name $okegreen .xz"
echo -e $white  "$okegreen  15)$white Extract File Name $okegreen .exe"
echo -e $white  "$okegreen  16)$white Must Visit $okegreen ;)  "
echo -e $white  "$okegreen  17)$white Exit"
echo "               AUTHOR: SCREETSEC [EDO -M-] "
echo -e $okegreen"========================================================"
echo""
echo -n -e $white"root@Lazext:$okegreen ";  #insert your choice
read choose
if test $choose == '1'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 tar xvjf $screetsec

elif test $choose == '2'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 tar xvzf $screetsec

elif test $choose == '3'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 tar xvJf $screetsec    

elif test $choose == '4'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 unlzma $screetsec  

elif test $choose == '5'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 bunzip2 $screetsec 

elif test $choose == '6'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 unrar x -ad $screetsec
    
elif test $choose == '7'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 gunzip $screetsec
    
elif test $choose == '8'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 tar xvf $screetsec

elif test $choose == '9'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 tar xvjf $screetsec
    
elif test $choose == '10'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 tar xvzf $screetsec
 
elif test $choose == '11'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 unzip $screetsec

elif test $choose == '12'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 uncompress $screetsec

elif test $choose == '13'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 7z x $screetsec

elif test $choose == '14'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read screetsec
 cd "Output"
 unxz $screetsec

elif test $choose == '15'
 then
 echo -n -e "insert your local file $white( <path/file_name> ) :$okegreen ";
 read bebe
 cd "Output"
 cabextract $bebe
 
elif test $choose == '16'
 then
    firefox https://www.linuxsec.org
    firefox https://www.dutalinux.org
    firefox http://www.indonesianbacktrack.or.id/

elif test $choose == '17'
 then
    zenity --info --text "Thanks For Use Lazext : Screetsec [Edo -m- ]" 
     clear
      exit
fi
                  echo ""
                  echo ""
                  echo -n -e $red " Back to Last Menu? ( Yes / No ) :"
                read back
                if [ $back != 'n' ] && [ $back != 'N' ] && [ $back != 'no' ] && [ $back != 'No' ]
                    then
                    clear
                    bash super-dracOS.sh
                elif [ $back != 'y' ] && [ $back != 'Y' ] && [ $back != 'yes' ] && [ $back != 'Yes' ]
                    then
                    lazext
                fi
 }

 ##################################
 #         Output Dracer          #
 ##################################
function dracer() {
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
                  echo ""
                  echo ""
                  echo -n -e $red " Back to Last Menu? ( Yes / No ) :"
                  read back
                  if [ $back != 'n' ] && [ $back != 'N' ] && [ $back != 'no' ] && [ $back != 'No' ]
                    then
                    clear
                    bash super-dracOS.sh
                  elif [ $back != 'y' ] && [ $back != 'Y' ] && [ $back != 'yes' ] && [ $back != 'Yes' ]
                    then
                    dracer
                 fi
 }

####################################
#           Input                  #
####################################
again='y'
while  [ $again == 'y' ] || [ $again == 'Y' ];
    do

###################################
#           Banner                #
###################################
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
echo -e $white" ==========================================="
echo -e $cyan"  Drac0s Linux Super Tools"
echo -e $cyan"  Author: eLCrush [-Rifqi Hidayatulloh-]"
echo -e $cyan"  Contact: elcrush@dracos-linux.org"
echo -e $cyan"  Visit: Dracos-linux.org"
echo -e $cyan"  Thanks: Blackcat , Screetsec"
echo -e $white" ==========================================="
echo -e $red"   Main Menu : "
echo
echo -e $white  "$okegreen  1) $red Firefox $white Portable $cyan 64bit"
echo -e $white  "$okegreen  2) $red Firefox $white Portable $cyan 32bit"
echo -e $white  "$okegreen  3) $red Libgtk-3.so.0 $white Fix"
echo -e $white  "$okegreen  4) $red Xterm $white Installer"
echo -e $white  "$okegreen  5) $red CONNECT TO WIFI WPA2-PSK $white (CREATE NEW CONF)"
echo -e $white  "$okegreen  6) $red CONNECT TO WIFI WPA2-PSK $white (LOAD OLD CONF)"
echo -e $white  "$okegreen  7) $red CONNECT TO WIFI WPA"
echo -e $white  "$okegreen  8) $red Firefox $white Installer"
echo -e $white  "$okegreen  9) $red Lazext $white Extracktor"
echo -e $white  "$okegreen 10) $red Dracer $white (DracosInstaller)"
echo -e $white  "$okegreen 11) $red PHP $white installation"
echo -e $white  "$okegreen 12) $red Install $white Figlet"
echo -e $white  "$okegreen 13) $red Install $white Lolcat"
echo -e $white  "$okegreen 14) $red Exit "
echo ""
echo -n -e $cyan"root"$white"@"$red"Dracos $white:  ";tput sgr0 
read pilihan
if test $pilihan == '1'
    then
    wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/49.0/linux-x86_64/en-US/firefox-49.0.tar.bz2
    tar -xvf firefox*.tar.bz2
    cd firefox && ./firefox
    mv firefox /opt
    sudo ln -s /opt/firefox/firefox /usr/bin/firefox
    firefox
    echo "Firefox Portable 64bit Done ✔ "

elif test $pilihan == '2'
    then
    wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/49.0/linux-i686/en-US/firefox-49.0.tar.bz2
    tar -xvf firefox*.tar.bz2
    cd firefox && ./firefox
    mv firefox /opt
    sudo ln -s /opt/firefox/firefox /usr/bin/firefox
    firefox
    echo "Firefox Portable 32bit Done ✔ "

elif test $pilihan == '3'
    then
    wget -c ftp://ftp.gnome.org/pub/gnome/sources/gtk+/3.18/gtk+-3.18.7.tar.xz
    tar -xf gtk+-3.18.7.tar.xz
    cd gtk+-3.18.7
    ./configure --prefix=/usr --sysconfdir=/etc --enable-broadway-backend --enable-x11-backend --disable-wayland-backend && make && make install
    echo "Fix Libgtk-3 Done ✔ "
elif test $pilihan == '4'
    then
    wget ftp://invisible-island.net/xterm/xterm-327.tgz
    sed -i '/v0/{n;s/new:/new:kb=^?:/}' termcap &&
    printf '\tkbs=\\177,\n' >> terminfo &&

    TERMINFO=/usr/share/terminfo \
    ./configure $XORG_CONFIG     \
    --with-app-defaults=/etc/X11/app-defaults &&

    make
    make install &&
    make install-ti
    echo "Success Install Xterm ✔ "

elif test $pilihan == '5'
    then
    echo "Create new directory for save configuration"
    read $name
    mkdir /etc/$name 
    iwconfig
    echo
    echo $c4"What your wireless interface?"$rc
    read interface
    echo
    ifconfig $interface up
    iwlist $interface scan | grep "ESSID"
    echo $c4"What your ESSID?"$rc
    read essid
    iwconfig $interface ESSID "$essid"
    echo
    echo $c4"Enter your ESSID password:"$rc
    stty -echo
    read pass
    stty echo
    echo $c4"Enter your *.conf name:"$rc
    read conf
    wpa_passphrase "$essid" $pass > /etc/wpa/$conf.conf
    wpa_supplicant -Dwext -i$interface -c /etc/wpa/$conf.conf -B
    dhclient $interface
    echo
    echo "Test your connection!"
    ping -c3 google.com
    echo "Sukses Setting Your Connection ✔ "

elif test $pilihan == '6'
    then
    iwconfig
    echo
    echo $c4"What your wireless interface?"$rc
    read interface
    echo
    ifconfig $interface up
    echo $c4"What your ESSID?"$rc
    read essid
    iwconfig $interface ESSID "$essid"
    echo
    wpa_supplicant -Dwext -i$interface -c /etc/wpa/$conf.conf -B
    dhclient $interface
    echo
    echo "Test your connection!"
    ping -c3 google.com
    echo "Sukses Setting Your Connection ✔ "


elif test $pilihan == '7'
    then
    iwconfig
    echo
    echo $c4"What your wireless interface?"$rc
    read interface
    echo "Check your interface active or nonactive"
    ifconfig
    echo
    ifconfig $interface up
    iwlist $interface scan | grep "ESSID"
    echo $c4"What your ESSID?"$rc
    read essid
    iwconfig $interface ESSID "$essid"
    echo
    dhclient $interface
    echo
    echo "Test your connection!"
    ping -c3 google.com
    echo "Sukses Setting Your Connection ✔ "


elif test $pilihan == '8'
    then
    # install nspr
wget https://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v4.13.1/src/nspr-4.13.1.tar.gz
cd nspr-4.13.1/nspr
sed -ri 's#^(RELEASE_BINS =).*#\1#' pr/src/misc/Makefile.in && sed -i 's#$(LIBRARY) ##' config/rules.mk && ./configure --prefix=/usr --with-mozilla --with-pthreads $([ $(uname -m) = x86_64 ] && echo --enable-64bit) && make && make install
cd ../../

# install nss
wget https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_27_1_RTM/src/nss-3.27.1.tar.gz
tar xvf nss-3.27.1.tar.gz
cd nss-3.27.1
patch -Np1 -i nss-3.27.1-standalone-1.patch
cd nss
make -j1 BUILD_OPT=1 NSPR_INCLUDE_DIR=/usr/include/nspr/ USE_SYSTEM_ZLIB=1 ZLIB_LIBS=-lz  $([ $(uname -m) = x86_64 ] && echo USE_64=1) $([ -f /usr/include/sqlite3.h ] && echo NSS_USE_SYSTEM_SQLITE=1)
install -v -m755 Linux*/lib/*.so /usr/lib
install -v -m644 Linux*/lib/{*.chk,libcrmf.a} /usr/lib
install -v -m755 -d /usr/include/nss
cp -v -RL {public,private}/nss/* /usr/include/nss
chmod -v 644 /usr/include/nss/*
install -v -m755 Linux*/bin/{certutil,nss-config,pk12util} /usr/bin/
install -v -m644 Linux*/lib/pkgconfig/nss.pc /usr/lib/pkgconfig
cd ../../

# install libvpx
wget http://storage.googleapis.com/downloads.webmproject.org/releases/webm/libvpx-1.6.0.tar.bz2
tar xvf libvpx-1.6.0.tar.bzip.bz2
cd libvpx-1.6.0
sed -i 's/cp -p/cp/' build/make/Makefile
mkdir libvpx-build && cd libvpx-build
../configure --prefix=/usr/ --enable-shared --disable-static
make && make install
cd ../../

# upgrade sqlite
wget http://sqlite.org/2016/sqlite-autoconf-3150000.tar.gz
tar xvf sqlite-autoconf-3150000.tar.gz
cd sqlite-autoconf-3150000
./configure --prefix=/usr --disable-static CFLAGS="-g -O2 -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_COLUMN_METADATA=1 -DSQLITE_ENABLE_UNLOCK_NOTIFY=1 -DSQLITE_SECURE_DELETE=1 -DSQLITE_ENABLE_DBSTAT_VTAB=1"
make && make install
cd ../

# install firefox
wget https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/49.0.1/source/firefox-49.0.1.source.tar.xz
tar xvf firefox-49.0.1.source.tar.xz
cd firefox-49.0.1
cat > mozconfig << "EOF"
ac_add_options --disable-dbus
ac_add_options --disable-necko-wifi
ac_add_options --enable-default-toolkit=cairo-gtk2
ac_add_options --disable-gconf
ac_add_options --enable-system-sqlite
ac_add_options --with-system-libevent
ac_add_options --with-system-libvpx
ac_add_options --with-system-nspr
ac_add_options --with-system-nss
ac_add_options --with-system-icu
ac_add_options --prefix=/usr
ac_add_options --enable-application=browser
ac_add_options --disable-crashreporter
ac_add_options --disable-updater
ac_add_options --disable-tests
ac_add_options --enable-optimize
ac_add_options --enable-gio
ac_add_options --enable-official-branding
ac_add_options --enable-safe-browsing
ac_add_options --enable-url-classifier
ac_add_options --enable-system-ffi
ac_add_options --enable-system-pixman
ac_add_options --with-pthreads
ac_add_options --with-system-bz2
ac_add_options --with-system-jpeg
ac_add_options --with-system-png
ac_add_options --with-system-zlib 
mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/firefox-build-dir
EOF
SHELL=/bin/bash
export CFLAGS_HOLD=$CFLAGS
export CXXFLAGS_HOLD=$CXXFLAGS
export CFLAGS+=" -fno-delete-null-pointer-checks -fno-lifetime-dse -fno-schedule-insns2"
export CXXFLAGS+=" -fno-delete-null-pointer-checks -fno-lifetime-dse -fno-schedule-insns2"
make -f client.mk
make -f client.mk install INSTALL_SDK=
chown -R 0:0 /usr/lib/firefox-49.0.1
mkdir -pv  /usr/lib/mozilla/plugins
ln -sfv ../../mozilla/plugins /usr/lib/firefox-49.0.1/browser
echo "Success install firefox on your system"

elif test $pilihan == '9'
    then
    lazext

elif test $pilihan == '10'
    then
    dracer

elif test $pilihan == '11'
  then
  wget http://us2.php.net/distributions/php-5.6.0.tar.bz2
  tar -xvf php-5.6.0.tar.bz2
  cd php-5.6.0
  ./configure && make && make install

elif test $pilihan == '12'
  then
  git clone https://github.com/cmatsuoka/figlet
  cd figlet
  make install
  echo "Success install figlet"

elif test $pilihan == '13'
  then
  gem install lolcat
  echo Done| lolcat

elif test $pilihan == '14'
    then
    zenity --info --text "Thanks For Use !! -Development"
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