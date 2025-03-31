# Desconbrindo IP da Maq
## 192.168.100.190

![image](https://github.com/user-attachments/assets/3b632005-77c8-4a41-b4f8-e006c4fbcfd7)

# db_nmap -p 0-10000 192.168.100.190 -Pn

![image](https://github.com/user-attachments/assets/12b626fa-06d3-4c46-92a3-bfe23249ac35)

# db_nmap -sV -p 21,80,3389,8080 192.168.100.190 -Pn
![image](https://github.com/user-attachments/assets/cf9b9a65-b85e-47ba-8a9b-706234b47999)

# osintando o site 
![image](https://github.com/user-attachments/assets/ad557d0e-bf01-4ea4-8948-964146e20640)

# Pegando todas palavras do site para usar no dirsearch
wget -r -l1 -H -nd -A.html http://192.168.100.190
cat *.html | grep -oP '\w+' | sort -u > palavras.txt
dirsearch -u http://192.168.100.190 -w palavras.txt

![image](https://github.com/user-attachments/assets/3a5ed0ec-c3e1-455c-bcea-f328a2064768)
![image](https://github.com/user-attachments/assets/e25bab24-3f47-43aa-b226-f1a8f55144d1)
