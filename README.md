# CrewAI - Ambiente Docker

Este projeto utiliza Docker para facilitar a configuração e execução do ambiente CrewAI no Ubuntu.

## 📌 Pré-requisitos

Antes de começar, certifique-se de ter o **Docker** e o **Docker Compose** instalados. Se ainda não os instalou, siga os comandos abaixo:

```bash
# Instalar Docker
sudo apt update && sudo apt install docker.io -y

# Instalar Docker Compose
sudo apt install docker-compose -y

# Verificar se o Docker está rodando
sudo systemctl start docker
sudo systemctl enable docker
```

## 🚀 Como iniciar o projeto

### 1️⃣ Construir a imagem Docker

Antes de rodar o contêiner, é necessário construir a imagem:

```bash
docker build -t crewai-image .
```

### 2️⃣ Rodar o contêiner

Agora, execute o contêiner baseado na imagem criada:

```bash
docker run --name crewai-container -d crewai-image

```

### 2️⃣ OU Rodar o contêiner docker compose

Agora, execute o contêiner baseado na imagem criada:

```bash
docker compose up

```

### 3️⃣ Acessar o contêiner

Caso precise acessar o terminal do contêiner em execução, utilize:

```bash
docker exec -it crewai-container /bin/bash
```

### 4️⃣ Parar e remover o contêiner

Se quiser parar e remover o contêiner:

```bash
docker stop crewai-container && docker rm crewai-container
```

## ⚡ Usando Docker Compose

Se estiver usando **Docker Compose**, basta rodar:

```bash
docker compose up -d
```

Para parar e remover os contêineres:

```bash
docker compose down
```

## 🎯 Notas adicionais

- Certifique-se de que sua `Dockerfile` está configurada corretamente.
- O projeto pode precisar de ajustes específicos no `docker-compose.yml`.

Caso tenha dúvidas ou precise de mais configurações, sinta-se à vontade para contribuir! 🚀
