FROM openjdk:8-jdk

# Définit le répertoire de travail
WORKDIR /server

 # Copie les fichiers locaux dans le conteneur
COPY . /server

 # Installe le serveur Forge depuis le jar
RUN java -jar forge-1.16.5-36.2.35-installer.jar --installServer
EXPOSE 25565

# Eula
RUN echo "eula=true" > eula.txt

# Lancement du serveur
CMD ["java", "-Xmx4G", "-Xms2G", "-jar", "forge-1.16.5-36.2.35.jar", "nogui"]