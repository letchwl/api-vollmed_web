# Vollmed API (Restfull)

Este projeto é uma **API Web** utilizando **Spring Boot**, **Spring Security**, **PostgreSQL**, **Thymeleaf** e outras tecnologias. Ele permite o **CRUD** de **pacientes**, **médicos** e **autenticação de usuários**, com **interface gráfica** gerada pelo Thymeleaf.

## Funcionalidades

- **CRUD** de **pacientes** e **médicos** com interface web.
- **Autenticação** com **Login**.
- **Permissões de Usuários**: Acesso restrito com base no perfil de usuário.
- **Envio de e-mails** para notificação ou recuperação de senha.
- **Validação de campos** com **Bean Validation**.
- **Tratamento de erros** com **@ControllerAdvice**.

## Tecnologias Utilizadas

- **Spring Boot**: Framework para o desenvolvimento da API e servidor web.
- **Spring Security**: Para implementação de autenticação e autorização.
- **JWT**: Para autenticação baseada em token.
- **PostgreSQL**: Banco de dados relacional para persistência dos dados.
- **Spring Data JPA**: Para abstração de acesso ao banco de dados.
- **Spring Web**: Para construção da API e interface web.
- **Spring Mail**: Para envio de e-mails.
- **Thymeleaf**: Template engine para renderizar o frontend no servidor.
- **Bean Validation**: Para validação de dados na API.

## Pré-requisitos

Certifique-se de que você tem o seguinte instalado:

- **JDK 17 ou superior**.
- **Maven** (para gerenciamento de dependências).
- **PostgreSQL** (para o banco de dados).
- **IDE** (recomenda-se IntelliJ IDEA).

## Configuração

1. Configure o banco de dados PostgreSQL e crie o banco api_db (ou o nome que preferir). Em seguida, configure o application.properties com suas credenciais de banco:
   
spring.datasource.url=jdbc:postgresql://localhost:5432/api_db
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
