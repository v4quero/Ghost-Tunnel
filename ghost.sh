#!/bin/bash
setterm -term linux -back black -fore green --clear all

##V4quero logo
echo -e "................................................................................"
echo -e ".....................................::::::....................................."
echo -e ".............................:*VVVVVVVVVVVVVVVVVV*:............................."
echo -e "...........................*VVVVVVVVVVVVVVVVVVVVVVVV*..........................."
echo -e "..........................*VVVVVVVVVVVVVVVVVVVVVVVVVV:.........................."
echo -e "..........................VVVVVVV*VVVVVVVVVVV*V*VVVVV*.........................."
echo -e "..........................VVVVV**VVVVVVVVVVVVVV*VVVVVV.........................."
echo -e ".........................:VVV***VVVVVVVVVVVVVVVV***VVV:........................."
echo -e ".........................*****VVVVVVVVVVVVVVVVVVVVV**V*........................."
echo -e ".........................***VVVVVVVVVVVVVVVVVVVVVVVV***...................:....."
echo -e ".....***.................*VVVVVVVVVVVVVVVVVVVVVVVVVVVV*.................*V*....."
echo -e "......**V*:.............:VVVVVVVVVVVVVVVVVVVVVVVVVVVVVV:.............:VVV*......"
echo -e ".......*VVVVV**:........*VFFFVVVVVVVVVVVVVVVVVVVVVVVVVV*........:**VVVVV*......."
echo -e "........:*VVVVVVVVV*******VVV****V*VV**V***VVVVV*************VVVVVVVVVV:........"
echo -e "..........:**VVVVVVVVV*VVVFFFIIIIIMMMMMMMMMMMMMIIIIIFFVVVVVVVVVVVVVV*:.........."
echo -e "...............::******VVVFFIIIIIIIIIIIIIIIIIIIIIIIIFFVVVVV****::..............."
echo -e "...........................:::*****VVVVVVVVVVVVVVVVVV***:......................."
echo -e ".................................----V4QUERO----................................"
echo "You have initiated Ghost_tunnel, do you wish to continue?"
#continue command
read -n1 -p "Press [Enter] to continue."
#change window title
mytitle="Ghost_Tunnel"
echo -e '\033]2;'$mytitle'\007'
#check Commands
function cmd_check() {

if [ $? -ne 0 ]
 then
  echo
      echo
    echo "failed! Script will now close..."
         echo
      sleep 5
       exit
else
 echo
  echo
   echo "Success!"
    echo
     echo
fi
}

echo checking Iodine Version.....
apt-get install iodine -y

#change prompt
PS1="\u@DNSTunnel:~"
echo
 echo "Setting DNS Tunnel..."
iodine -P password 00.00.00.00 iodine.mydomain.com
 cmd_check
echo
 echo
  echo "Setting SSH Tunnel..."
   echo
    echo
     sleep 5s
clear
ssh -D 5000 -i id_rsa tunnel@10.0.0.1 -p 2048
 cmd_check
sleep 5s
 clear
