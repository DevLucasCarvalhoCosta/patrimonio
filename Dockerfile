# Imagem base com Java 21
FROM eclipse-temurin:21-jdk

# Define o diretório da aplicação
WORKDIR /app

# Copia os arquivos do projeto
COPY . .

# Dá permissão ao wrapper do Maven e empacota o projeto
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

# Expõe a porta padrão do Spring Boot
EXPOSE 8080

# Comando de inicialização
CMD ["java", "-jar", "target/patrimonio-0.0.1-SNAPSHOT.jar"]
