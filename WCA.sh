#!/usr/bin/env bash

#===========================================================================#
#                          WIFI Connector Automatic			    #
#									    #
#                        Script write by Muhammad Yuga			    #
#	                 Contact me blackcat@gmail.com                      #
#===========================================================================#

# Color
c0="$(tput setaf 0)"	# black
c1="$(tput setaf 1)"	# red
c2="$(tput setaf 2)"	# green
c3="$(tput setaf 3)"	# yellow
c4="$(tput setaf 4)"	# blue
c5="$(tput setaf 5)"	# magenta
c6="$(tput setaf 6)"	# cyan
c7="$(tput setaf 7)"	# white
rc="$(tput sgr0)"		# reset

cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'


################################################
# OPTIONS
################################################

again='n'
while  [ $again == 'n' ] || [ $again == 'n' ];
    do

#################################################


#################################################
# BANNER
#################################################
clear
echo -e $okegreen ""
echo "     ____              ___________       _				 "
echo "     \   \            /   /  _____|     / \   			 "
echo "      \   \    /\    /   /  /          /   \   			 "
echo "       \   \  /  \  /   /  |          /  _  \  			 "
echo "        \   \/    \/   /|  |         /  ___  \ 			 "
echo "         \     /\     /  \  \_____  /  /   \  \			 "
echo "          \___/  \___/    \_______|/__/     \__\ v1.0      "             
echo ""
echo -e $white"          WIFI Connector Automatic"
echo -e $cyan ""
echo -e $white ""
echo -e $white"     [$okegreen"1"$white]$cyan  CONNECT TO WIFI WPA2-PSK (CREATE NEW CONF)  "
echo -e $white"     [$okegreen"2"$white]$cyan  CONNECT TO WIFI WPA2-PSK (LOAD OLD CONF)  "
echo -e $white"     [$okegreen"3"$white]$cyan  CONNECT TO WIFI WPA  "
echo -e $white"     [$okegreen"4"$white]$cyan  EXIT  "
echo ""
echo -n -e $BlueF'     \033[4mwca\033[0m >> '; tput sgr0
read wca
echo -e $okegreen"     --------------------------------------------------   ";
		if test $wca == '1'
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
		elif test $wca == '2'
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
		elif test $wca == '3'
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
		elif test $wca == '5'
		      then
		        clear
		        exit
				fi
					echo -n -e "Do you want to exit (y/n)? ";
						read again
						    while  [ $again != 'n' ] && [ $again != 'N' ] && [ $again != 'y' ] && [ $again != 'Y' ];
						    do
						       echo -n "Do you want to exit (y/n)?";
						       read again;
						    done
					done
