#! /bin/bash
echo "1) sudo lsof -i -P -n | grep LISTEN"
echo "2) sudo netstat -tulpn | grep LISTEN"
echo "3) sudo ss -tulpn | grep LISTEN"
echo "4) sudo lsof -i:22 ##see a specific port such as 22 ## "
echo "5) sudo nmap -sTU -O <IP-address-Here>"

read -n1 -p "Please, enter number of variant " number

echo ""
echo "You are enter $number"
echo ""

case "$number" in
	1) res=`sudo lsof -i -P -n | grep LISTEN` ;;
	2) res=`sudo netstat -tulpn | grep LISTEN` ;;
	3) res=`sudo ss -tulpn | grep LISTEN` ;;
	4) read -p "please enter port number " port_num 
	   res=`sudo lsof -i:$port_num` ;;
	5) read -p "please enter ip-address " ip_addr
		res=`sudo nmap -sTU -O $ip_addr` ;;
esac
echo ""
echo "$res"
echo ""
exit 0
