# Fundamentos do Metasploit: Perguntas e Respostas

Este documento fornece respostas para perguntas básicas sobre o uso do Metasploit em testes de penetração.

---

## Perguntas e Respostas

### 1. Qual é o nome do código que aproveita uma falha no sistema alvo?
**Resposta:** Exploit

---

### 2. Qual é o nome do código que é executado no sistema alvo para alcançar o objetivo do atacante?
**Resposta:** Payload

---

### 3. Como são chamados os payloads autossuficientes?
**Resposta:** Singles

---

### 4. O `windows/x64/pingback_reverse_tcp` é um payload do tipo "singles" ou "staged"?
**Resposta:** Singles

---

### 5. Como você pesquisaria um módulo relacionado ao Apache?
**Comando:** search apache

---

### 6. Who provided the auxiliary/scanner/ssh/ssh_login module?
**Answer:** todb

---

### 7. How would you set the LPORT value to 6666?
**Answer:** set LPORT 6666

---

### 8. How would you set the global value for RHOSTS  to 10.10.19.23 ?
**Answer:** setg RHOSTS 10.10.19.23

---

### 8. What command would you use to clear a set payload?
**Answer:** unset PAYLOAD
---

### 9. What command do you use to proceed with the exploitation phase?
**Answer:** exploit
---
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
