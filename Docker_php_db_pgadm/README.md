# Projeto PHP + PostgreSQL + pgAdmin Docker

Este projeto contém um ambiente Docker completo com:

* PHP 8.2 + Apache
* PostgreSQL 16
* pgAdmin 4 (interface web para gerenciar o banco)

O projeto já inclui o código PHP na pasta `src/` e um `Dockerfile` para a imagem do PHP.

---

## Estrutura da pasta

```
projeto_php_postgres/
├─ src/
│  └─ index.php
├─ docker-compose.yml
├─ Dockerfile
```

> Opcional: se você tiver as imagens `.tar`, elas podem ser carregadas antes de subir os containers:
>
> ```
> php_app.tar
> postgres_db.tar
> pgadmin4.tar
> ```

---

## Passos para rodar o projeto

### 1️⃣ Navegar até a pasta do projeto:

```bash
cd ~/Desktop/projeto_php_postgres
```

### 2️⃣ (Opcional) Carregar imagens `.tar` no Docker:

```bash
docker load -i php_app.tar
docker load -i postgres_db.tar
docker load -i pgadmin4.tar
```

### 3️⃣ Subir os containers:

```bash
docker compose up -d --build
```

> O Docker Compose vai criar os containers para PHP, PostgreSQL e pgAdmin.

### 4️⃣ Verificar se os containers estão rodando:

```bash
docker ps
```

Você deve ver algo como:

```
CONTAINER ID   IMAGE                    STATUS        PORTS
php_app        php:8.2-apache           Up            0.0.0.0:8080->80/tcp
postgres_db    postgres:16              Up            0.0.0.0:5432->5432/tcp
pgadmin4       dpage/pgadmin4           Up            0.0.0.0:5050->80/tcp
```

---

### 5️⃣ Acessar os serviços

* **PHP App:** [http://localhost:8080](http://localhost:8080) → página `index.php`
  O arquivo `index.php` já conecta ao PostgreSQL usando PDO com as variáveis de ambiente do Docker Compose.

* **PostgreSQL:** localhost:5432

```bash
docker exec -it postgres_db psql -U admin -d meu_banco
```

* **pgAdmin 4:** [http://localhost:5050](http://localhost:5050)
  Usuário: `admin@local.com`
  Senha: `123456`

---

### 6️⃣ Ver logs dos containers

```bash
docker logs php_app
docker logs postgres_db
docker logs pgadmin4
```

---

### 7️⃣ Parar e remover containers

* Apenas parar os containers:

```bash
docker compose stop
```

* Parar e remover containers:

```bash
docker compose down
```

* Remover containers **e volumes** (apaga os dados do PostgreSQL):

```bash
docker compose down -v
```

---

## Observações

* Alterações feitas na pasta `src/` aparecem automaticamente no container PHP.
* Para reconstruir a imagem PHP (ex.: após instalar novas extensões):

```bash
docker compose up -d --build
```

---

## Suporte

Para dúvidas, abra uma issue no repositório ou contate o autor.
