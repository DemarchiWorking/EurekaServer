# Use uma imagem base do OpenJDK
FROM openjdk:17-jdk-slim
# Define o diretório de trabalho no contêiner
WORKDIR /app
# Copia o arquivo JAR do Eureka Server para o contêiner
COPY target/microEurekaServer-0.0.1-SNAPSHOT.jar eureka-server.jar
# Exponha a porta que o Eureka Server irá usar
EXPOSE 8761
# Comando para executar o Eureka Server

ENTRYPOINT ["java", "-jar", "eureka-server.jar"]