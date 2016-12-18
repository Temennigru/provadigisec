sudo apt-get install xinetd telnetd
/etc/init.d/xinetd restart



#Block telnet stateless

sudo iptables -A INPUT -p tcp --dport telnet -j DROP
sudo iptables -A OUTPUT -p tcp --dport telnet -j DROP

#Block telnet stateful

sudo iptables -D INPUT 1
sudo iptables -D OUTPUT 1
sudo iptables -A INPUT -p tcp --dport telnet -m state --state NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport telnet -m state --state NEW,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport telnet -j DROP
sudo iptables -A OUTPUT -p tcp --dport telnet -j DROP

#Tunnel

ssh -L 4500:localhost:23 digitalsec@192.168.56.101
telnet locahost 4500
