FROM openjdk:8-jdk

WORKDIR /server

COPY . /server

RUN java -jar forge-1.16.5-36.2.35-installer.jar --installServer

EXPOSE 25565

RUN echo "eula=true" > eula.txt

CMD ["java", "-Xmx4G", "-Xms2G", "-jar", "forge-1.16.5-36.2.35.jar", "nogui"]