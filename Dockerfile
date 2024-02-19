# Utilisez une image de base contenant Java
FROM debian:latest
COPY testy .
# Définissez le répertoire de travail dans le conteneur
WORKDIR /testy

# Copie du fichier JAR construit par Spring Boot dans le conteneur
RUN apt-get update -y
RUN apt-get install openjdk-17-jdk  openjdk-17-jre  -y
RUN apt-get install maven spring -y
# Exposition du port sur lequel l'application Spring Boot écoute
EXPOSE 8080

CMD [ "mvn","spring-boot:run" ]

# Commande à exécuter lorsque le conteneur démarre
