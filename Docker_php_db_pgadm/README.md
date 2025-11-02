README do projeto PHP + PostgreSQL + pgAdmin Docker

# Projeto PHP + PostgreSQL + pgAdmin Docker

Este projeto contém um ambiente Docker completo com:

* PHP 8.2 + Apache
* PostgreSQL 16
* pgAdmin 4 (opcional, interface web para gerenciar o banco)

Todos os containers são definidos no arquivo `docker-compose.yml` e o código PHP está na pasta `src/`.

---

## Pré-requisitos

1. Docker instalado: [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)
2. Docker Compose (já incluído no Docker Desktop ou via plugin no Linux)
3. Git (opcional, para clonar o projeto)

---

## Passo 1: Clonar o projeto

No terminal do Linux ou WSL:

```bash
git clone https://github.com/Luanqmata/-Linux-Is-Life-.git
cd -path-to-repo/Docker_php_db_pgadm
```

O diretório deve conter:

```
src/
docker-compose.yml
```

---

## Passo 2: Rodar os containers

No diretório do projeto, execute:

```bash
docker compose up -d
```

Explicação:

* `-d` → roda em segundo plano (detached mode)
* O Docker Compose vai baixar automaticamente as imagens necessárias do Docker Hub:

  * `php:8.2-apache`
  * `postgres:16`
  * `dpage/pgadmin4`

---

## Passo 3: Acessar os serviços

* **PHP App:** [http://localhost:8080](http://localhost:8080)

  * Deve mostrar a página `index.php` do projeto.

* **PostgreSQL:** localhost:5432

  * Usuário: `admin`
  * Senha: `123456`
  * Banco: `meu_banco`

* **pgAdmin 4:** [http://localhost:5050](http://localhost:5050)

  * Usuário: `admin@local.com`
  * Senha: `123456`

> Use pgAdmin apenas se quiser gerenciar o banco via interface web.

---

## Passo 4: Parar os containers

Para parar os containers sem removê-los:

```bash
docker compose stop
```

Para parar e remover os containers:

```bash
docker compose down
```

Se quiser **remover volumes do PostgreSQL** também:

```bash
docker compose down -v
```

---

## Observações

* O código PHP está na pasta `src/`.
* Alterações feitas em `src/` aparecem automaticamente no container PHP, graças ao volume definido no `docker-compose.yml`.
* Se algum container não subir, rode `docker logs nome_do_container` para verificar o erro.
* Para reconstruir a imagem PHP caso tenha instalado novas extensões, execute:

```bash
docker compose up -d --build
```

---

## Suporte

Qualquer dúvida, abra uma issue no repositório ou entre em contato com o autor.
