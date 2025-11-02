README do projeto PHP + PostgreSQL + pgAdmin Docker

Este arquivo explica como rodar o projeto localmente usando Docker.

# Projeto PHP + PostgreSQL + pgAdmin Docker

## Estrutura da pasta

```
projeto_php_postgres/
├─ src/
│  └─ index.php
├─ docker-compose.yml
├─ php_app.tar
├─ postgres_db.tar
└─ pgadmin4.tar
```

## Passos para rodar o projeto

1️⃣ Navegar até a pasta do projeto:

```bash
cd ~/Desktop/projeto_php_postgres
```

2️⃣ Carregar as imagens `.tar` no Docker:

```bash
docker load -i php_app.tar
docker load -i postgres_db.tar
docker load -i pgadmin4.tar
```

3️⃣ Subir os containers:

```bash
docker compose up -d
```

> Se houver erro de validação, rode os containers individualmente com `docker run`.

4️⃣ Verificar se os containers estão rodando:

```bash
docker ps
```

5️⃣ Acessar os serviços:

* PHP App: [http://localhost:8080](http://localhost:8080)
* PostgreSQL: localhost:5432

```bash
docker exec -it postgres_db psql -U admin -d meu_banco
```

* pgAdmin: [http://localhost:5050](http://localhost:5050) (usuário: `admin@local.com`, senha: `123456`)

6️⃣ Ver logs dos containers:

```bash
docker logs php_app
docker logs postgres_db
docker logs pgadmin4
```

7️⃣ Parar e remover containers:

* Apenas parar:

```bash
docker compose stop
```

* Parar e remover:

```bash
docker compose down
```

* Remover containers + volumes:

```bash
docker compose down -v
```

## Observações

* Alterações em `src/` aparecem automaticamente no container PHP.
* Para reconstruir a imagem PHP com novas extensões:

```bash
docker compose up -d --build
```

## Suporte

Para dúvidas, abra uma issue no repositório ou contate o autor.
