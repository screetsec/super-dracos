# wifi-automatic script, connect to WPA/WPA2-PSK

# Color
c0="$(tput setaf 0)"	# black
c1="$(tput setaf 1)"	# red
c2="$(tput setaf 2)"	# green
c3="$(tput setaf 3)"	# yellow
c4="$(tput setaf 4)"	# blue
c5="$(tput setaf 5)"	# magenta
c6="$(tput setaf 6)"	# cyan
c7="$(tput setaf 7)"	# white
rc="$(tput sgr0)"	# reset

# Ready to connect!!
iwconfig
echo $c4"What your interface?"$rc
read interface
ifconfig $interface up
iwlist $interface scan | grep "ESSID"
echo $c4"What your ESSID?"$rc
read essid
iwconfig $interface ESSID "$essid"
echo $c4"Enter your ESSID password:"$rc
stty -echo
read pass
stty echo
echo $c4"Enter your conf name:"$rc
read conf
wpa_passphrase "$essid" $pass > /etc/wpa/$conf.conf
wpa_supplicant -Dwext -i$interface -c /etc/wpa/$conf.conf -B
dhclient $interface
echo "Test your connection"
ping -c5 google.com
