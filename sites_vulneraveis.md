# 🌐 Domínios Públicos para Teste

> **Aviso importante:** Sempre obtenha autorização por escrito antes de executar qualquer varredura ativa em domínios que você **não** possui. Prefira alvos de teste (labs, demos e máquinas que explícitamente permitem testes). Evite scans agressivos em domínios de terceiros. Use rate limiting e delays para reduzir impacto.

---

## 🏢 Grandes Empresas (observação: não escalonar agressivamente)
> Use apenas para testes **muito leves** e **recon não intrusivo** — e preferencialmente apenas quando você tiver permissão.
- https://microsoft.com
- https://google.com
- https://github.com
- https://stackoverflow.com
- https://wikipedia.org
- https://ubuntu.com
- https://redhat.com

---

## 🔒 Domínios de Segurança / Teste (recomendados)
Estes são mais adequados para testes e aprendizado:
- https://scanme.nmap.org          # Especificamente para testes de scanner
- https://testphp.vulnweb.com     # Para testes de vulnerabilidade
- https://demo.testfire.net       # Site de demo para testes de segurança
- https://zero.webappsecurity.com # Para testes educacionais

---

## 🏛 Governamentais (geralmente permitem scanning público leve — verifique termos)
> Mesmo sendo "públicos", muitos domínios governamentais têm restrições. Verifique políticas antes de qualquer varredura.
- https://usa.gov
- https://data.gov
- https://nist.gov
- https://nsa.gov *(apenas reconnaissance básico; cuidado extra)*

---

## 🎓 Educacionais
Universidades e instituições acadêmicas — verifique políticas específicas da instituição antes de testar:
- https://mit.edu
- https://stanford.edu
- https://harvard.edu

---

## 🎯 Domínios Específicos por Tipo de Scan

### Para Scan #7 (Detect Technologies)
Sites com stacks/tecnologias conhecidas — úteis para testar detecção de tecnologias:
- https://wordpress.com   # WordPress
- https://shopify.com     # Shopify
- https://medium.com      # React/Node.js
- https://netflix.com     # Stack complexo
- https://airbnb.com      # React + múltiplas tecnologias

### Para Scan #8 (DNS Zone Transfer)
> ⚠️ Aviso: a maioria dos domínios modernos bloqueia zone transfer (AXFR). A lista abaixo normalmente **falhará** (como esperado). Use domínios destinados a testes de zone transfer para praticar.
- **Estes geralmente falham (esperado):**
  - https://google.com
  - https://microsoft.com
  - https://github.com

- **Para ver uma resposta negada (simulada):**
  - https://isp.com *(exemplo — varia por provedor)*
  - https://some-university.edu *(varia por instituição)*

---

## 🛠️ Domínios / Plataformas de Treinamento (Altamente recomendados)
Use estes alvos intencionalmente vulneráveis ou ambientes de laboratório — são a melhor opção para testes reais.
- https://bwapp.h4cker.org
- https://hackthebox.com
- https://tryhackme.com
- https://vulnhub.com

### Labs online e recursos educacionais:
- https://portswigger.net/web-security  # OWASP Web Security Academy / Burp Suite labs
- https://owasp.org/www-project-juice-shop  # OWASP Juice Shop (instância/demo)

---

## ⚠️ REGRAS IMPORTANTES PARA TESTES
- ✅ **PODE testar:**
  - Domínios públicos listados acima *apenas* quando explicitamente permitidos.
  - Scans não-intrusivos (reconhecimento básico, HEAD requests, banner grabbing com rate limit).
  - Plataformas/instâncias projetadas para aprendizado e pentest.

- ❌ **NÃO teste:**
  - Domínios sem permissão explícita.
  - Scans agressivos, exploração ativa ou DDoS.
  - Infraestrutura crítica ou sistemas governamentais sensíveis sem autorização.

- 🔁 **Boas práticas:**
  - Use delays e rate limiting (ex.: 1–2 requests/segundo ou menos).
  - Registre tudo (logs, timestamps, configuração do teste).
  - Preferencialmente rode varreduras em horários de baixa atividade e com autorização.
  - Se possível, use instâncias locais (Juice Shop, WebGoat, DVWA) para testes que envolvem exploração.
