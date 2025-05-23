Faculdades IESGO - Prof: Weverson Medeiros 🐧

3° Semestre

# Anotações de Comandos Linux

## Comandos Básicos

- **clear**: Limpa a tela do terminal.
- **apropos**: Pesquisa por uma palavra-chave nos manuais.
- **man**: Exibe o manual de um comando (ex: `man ls`, `man mkdir`).
- **ls**: Lista os arquivos e diretórios.
- **ls -l**: Exibe a lista de arquivos em formato de lista.
- **ls -h**: Exibe os tamanhos de arquivos de forma legível.
- **ls -lh**: Exibe os arquivos com detalhes e tamanhos legíveis.
- **grep**: Pesquisa em arquivos. Exemplo de uso: `grep "palavra" arquivo.txt`.
- **touch**: Cria arquivos. Exemplo: `touch arquivo{1..3}.txt`.
- **pwd**: Mostra o diretório atual.
- **cat**: Exibe o conteúdo de um arquivo.
- **cd**: Muda de diretório (ex: `cd desktop/documentos`).
- **nano**: Editor de texto no terminal.

## Comandos Úteis para Navegação e Busca

- **cd ..**: Volta um diretório.
- **cd ~**: Vai para o diretório home.
- **cd -**: Volta ao diretório anterior.
- **ls -a**: Lista todos os arquivos, incluindo ocultos.
- **find**: Busca arquivos. Exemplo: `find ./ -name "documento*"`.

## Gerenciamento de Arquivos e Permissões

- **cp**: Copia arquivos. Exemplo: `cp arquivo.txt novo_arquivo.txt`.
- **mv**: Move ou renomeia arquivos. Exemplo: `mv arquivo.txt novo_nome.txt`.
- **chmod**: Modifica permissões de arquivos. Exemplo: `chmod 744 arquivo.txt`.
- **chmod +x**: Torna o arquivo executável.

## Comandos de Sistema

- **sudo su**: Acessa o sistema como superusuário.
- **echo**: Exibe o conteúdo de uma variável. Exemplo: `echo $SHELL`.
- **export**: Exibe ou define variáveis de ambiente. Exemplo: `export VAR=valor`.
- **history**: Exibe o histórico de comandos executados.
- **exit**: Sai do terminal atual ou da sessão.
- **ssh**: Acessa um servidor remoto via SSH.

## Gerenciamento de Usuários e Grupos

- **groupadd**: Cria um novo grupo. Exemplo: `sudo groupadd alunos`.
- **groupdel**: Deleta um grupo. Exemplo: `sudo groupdel alunos`.
- **groupmod**: Modifica um grupo. Exemplo: `sudo groupmod -n novos_alunos alunos`.
- **adduser**: Cria um novo usuário. Exemplo: `sudo adduser luan`.
- **deluser**: Deleta um usuário. Exemplo: `sudo deluser luan`.
- **adduser** (adicionar usuário a grupo): Exemplo: `sudo adduser luan grupo1`.
- **deluser** (remover usuário de grupo): Exemplo: `sudo deluser luan grupo1`.

## Comandos para Editar e Modificar

- **nano**: Editor de texto no terminal (ex: `nano arquivo.txt`).
- **touch**: Cria novos arquivos (ex: `touch novo_arquivo.txt`).
- **chmod**: Modifica permissões de arquivos (ex: `chmod 755 arquivo.sh`).

## Outros Comandos

- **nmap localhost**: Verifica as portas abertas em uma máquina local.
- **passwd -S**: Exibe o status de senha de um usuário.
- **find /usr/bin -perm -4000**: Encontra arquivos com SUID (Set User ID).
- **find /usr/bin -perm -2000**: Encontra arquivos com SGID (Set Group ID).
- **sudo**: Executa um comando com privilégios de superusuário.

## Comandos Especiais de Navegação

- **jobs**: Lista os jobs em execução no background.
- **fg %1**: Coloca um job no primeiro plano.
- **bg %1**: Coloca um job no segundo plano.
- **kill %2**: Encerra o job especificado.

---

### Permissões de Arquivo

| Permissão | Binário  | Octal  |
|-----------|----------|--------|
| Leitura   | `r`      | `4`    |
| Gravação  | `w`      | `2`    |
| Execução  | `x`      | `1`    |

Exemplo de permissões em octal:

- **rwx** = `7`
- **rw-** = `6`
- **r-x** = `5`
- **r--** = `4`
- **-wx** = `3`
- **-w-** = `2`
- **--x** = `1`
- **---** = `0`

---

### Dicas Adicionais

- **Arquivos ocultos**: Todo arquivo oculto começa com um ponto (ex: `.config`).
- **SUID e SGID**: Permissões especiais para arquivos executáveis. SUID executa o arquivo com as permissões do proprietário, SGID executa com as permissões do grupo.

---

### Configuração de Repositório

- **Modificar `sources.list`**:  (não recomendado podendo quebrar o SO)
  - Local: `/etc/apt/sources.list`
  - Exemplo:
  ```bash
  deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
  deb-src http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
