# Pixelmon Minecraft Server

Ce projet contient les fichiers nécessaires pour construire et lancer un serveur Minecraft Pixelmon dans un conteneur Docker.

## 🛠️ Prérequis

Avant de commencer, assure-toi d’avoir installé :

- [Docker](https://www.docker.com/) (version récente recommandée)

##  Build and launch

```
docker build -t server .
docker run -d -p 25565:25565 --name pixelmon server
```