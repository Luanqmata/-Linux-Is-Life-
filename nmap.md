# Comandos Nmap

### 1. Para detectar qual sistema operacional o alvo está executando, você usaria o parâmetro:
**-O**

---

### 2. Qual é o primeiro switch listado no menu de ajuda para uma 'Syn Scan' (mais sobre isso depois!):
**-sS**

---

### 3. Qual switch você usaria para uma "varredura UDP":
**-sU**

---

### 4. O parâmetro do nmap para detectar a versão dos serviços em execução no alvo é:
**-sV**

---

### 5. O output padrão fornecido pelo nmap muitas vezes não fornece informações suficientes para um pentester. Como você aumentaria a verbosidade?
**-v** (`-vvv` para mais verbosidade)

---

### 6. Qual switch você usaria para salvar os resultados do nmap em três formatos principais?
**-oA**

---

### 7. Qual switch você usaria para salvar os resultados do nmap em um formato "normal"?
**-oN**

---

### 8. Um formato de saída muito útil: como você salvaria os resultados em um formato "grepable"?
**-oG**

---

### 9. Para ativar o modo agressivo:
**-A**

---

### 10. Como você configuraria o template de tempo para o nível 5?
**-T5**

---

### 11. Como você diria ao nmap para escanear apenas a porta 80?
**-p 80**

---

### 12. Como você diria ao nmap para escanear todas as portas?
**-p-**

---

### 13. Como você ativaria um script da biblioteca de scripts do nmap (muito mais sobre isso depois!)?
**--script**

---

### 14. Como você ativaria todos os scripts da categoria "vuln"?
**--script=vuln**

---

### 15. Se uma porta estiver fechada, qual flag o servidor deve enviar de volta para indicar isso?
**RST** (porta fechada)

---

### 16. O Nmap pode usar uma varredura SYN sem permissões Sudo (S/N)?
**N**

---

# Categorias de Scripts Nmap

### safe:
- Não afeta o alvo.

### intrusive:
- Não seguro: provavelmente afetará o alvo.

### vuln:
- Varredura para vulnerabilidades.

### exploit:
- Tenta explorar uma vulnerabilidade.

### auth:
- Tenta contornar a autenticação para serviços em execução (ex: Login anônimo em um servidor FTP).

### brute:
- Tenta forçar credenciais para serviços em execução.

### discovery:
- Tenta consultar serviços em execução para obter mais informações sobre a rede (ex: consulta a um servidor SNMP).

---

### 17. Qual categoria de scripts seria uma péssima ideia rodar em um ambiente de produção?
**intrusive**: Não é seguro, provavelmente afetará o alvo.
