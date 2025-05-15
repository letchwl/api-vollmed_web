# Vollmed API (Restfull)

Este projeto é uma **API Web** utilizando **Spring Boot**, **Spring Security**, **PostgreSQL**, **Thymeleaf** e outras tecnologias. Ele permite o **CRUD** de **pacientes**, **médicos** e **autenticação de usuários**, com **interface gráfica** gerada pelo Thymeleaf.

## Funcionalidades

- **CRUD** de **pacientes** e **médicos** com interface web.
- **Autenticação** com **Login**.
- **Permissões de Usuários**: Acesso restrito com base no perfil de usuário.
- **Envio de e-mails** para notificação ou recuperação de senha.
- **Validação de campos** com **Bean Validation**.

## Tecnologias Utilizadas

- **Spring Boot**: Framework para o desenvolvimento da API e servidor web.
- **Spring Security**: Para implementação de autenticação e autorização.
- **PostgreSQL**: Banco de dados relacional para persistência dos dados.
- **Spring Data JPA**: Para abstração de acesso ao banco de dados.
- **Spring Web**: Para construção da API e interface web.
- **Spring Mail**: Para envio de e-mails.
- **Thymeleaf**: Template engine para renderizar o frontend no servidor.
- **Bean Validation**: Para validação de dados na API.

## Pré-requisitos

Certifique-se de que você tem o seguinte instalado:

- **JAVA 21 ou superior**.
- **Maven** (para gerenciamento de dependências).
- **PostgreSQL** (para o banco de dados).
- **IDE** (recomenda-se IntelliJ IDEA).

## Configuração

1. Configure o banco de dados PostgreSQL e crie o banco api_db (ou o nome que preferir). Em seguida, configure o application.properties com suas credenciais de banco:
```
spring.datasource.url=jdbc:postgresql://localhost:5432/api_db
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
```
## Criação de Usuários

1. Para criar usuários manualmente no banco (com senha criptografada), execute o seguinte comando SQL:
```
INSERT INTO usuarios (nome, email, senha, perfil) VALUES
('Seu Nome', 'emailreal@email.com', '$2b$12$uGYlnm27vbG1hO1p3XDjs.VR.NLIa.UmSFPxyDlBJZr.nnsGoqCf2', 'ATENDENTE');
```
- A senha usada neste exemplo é admin123, já criptografada com BCrypt.
- Substitua o nome e o e-mail pelos dados do seu usuário.
- Importante: Não insira senhas sem criptografar — o login não funcionará.

## Cadastro de Pacientes e Médicos

O cadastro de **pacientes** e **médicos** deve ser realizado diretamente pelo site, utilizando a interface web gerada com **Thymeleaf**.

- Todo o fluxo de criação, edição e exclusão é feito pelo navegador.
- Não é necessário utilizar comandos SQL ou ferramentas externas para gerenciar essas entidades.

## Cadastro e Login de Usuários

O sistema permite o login de **médicos** e **pacientes**, cada um com credenciais específicas:

- **Médico:**  
  - Login: Email Cadastrado
  - Senha: CRM Definido no Cadastro

- **Paciente:**  
  - Login: Email Cadastrado 
  - Senha: CPF Definido no Cadastro

**Alteração de Senha:**  
Após o login, é possível alterar a senha diretamente pelo site por meio da opção "Alterar Senha", acessível pela interface web.

O cadastro de pacientes e médicos deve ser feito diretamente pelo site, sem necessidade de comandos SQL.



## Observação Importante

Para que o envio de e-mails funcione corretamente, é necessário utilizar um **e-mail real e válido** ao criar usuários.

- O sistema envia notificações e pode incluir funcionalidades como recuperação de senha.
- Caso utilize um e-mail inválido ou fictício, o envio falhará e poderá gerar erros na aplicação.


