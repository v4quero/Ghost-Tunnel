#!/bin/bash
setterm -term linux -back black -fore green --clear all
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
