# PosGraduacao-Docker_BancaDeFeira
# Banca de Frutas - Aplicação Web

Esta é uma aplicação web simples que exibe uma página estática de uma banca de frutas. A página contém informações sobre diferentes frutas, preços e links para sites externos onde os usuários podem comprar as frutas.

## Tecnologias Utilizadas

- **HTML**: Estrutura da página.
- **CSS**: Estilização da página.
- **Docker**: Para empacotar e distribuir a aplicação.
- **Nginx**: Servidor web usado para servir os arquivos estáticos.

## Como a Aplicação Funciona

A aplicação consiste em uma página HTML (`index.html`) que exibe **cards de frutas**, cada um com uma imagem, nome, descrição, preço e um botão que redireciona para um site externo com mais informações. O estilo da página é definido no arquivo `style.css`, e as imagens das frutas estão na pasta `assets/`.

---

## Como Criar a Imagem e o Contêiner Docker

### Pré-requisitos

- Docker instalado na máquina. [Instruções de instalação](https://docs.docker.com/get-docker/).
- No caso o professor sugeriu a utilisação de uma maquina virtua Linux - Ubuntu.

### Passos para Criar a Imagem e o Contêiner

1. **Clone o repositório:**
   ```sh
   git clone https://github.com/felipealx1/P-sGradua-o-Docker_BancaDeFeira
   cd P-sGradua-o-Docker_BancaDeFeira
   ```
- Esse é o rpositório da aplicação no meu GitHub.
- Caso você queria criar usar alguma aplicação do seu repositório, só é usar o link do seu repositório.

2. **Crie a imagem Docker:**
   ```sh
   docker build -t banca-de-frutas .
   ```
   - Esse é o comando para criar a imagem. Lembrando que você, já precisar ter o Dockerfile bem estruturado, 
   caso use outro repositório. 

3. **Execute o contêiner:**
   ```sh
   docker run -d -p 8080:80 banca-de-frutas
   ```
   - O `-d` roda o contêiner em segundo plano.
   - O `-p 8080:80` mapeia a porta 80 do contêiner para a porta 8080 do seu host.

4. **Acesse a aplicação:**
   Abra o navegador e acesse [http://localhost:8080](http://localhost:8080) para visualizar a página da banca de frutas.
   Caso esteja usando a maquina virtual, troque o "localhost" pelo Id da Maquina Virtual.

---

## Como Criar um Repositório no Docker Hub

### Passos para Publicar a Imagem

1. **Crie uma conta no Docker Hub:**  
   - Acesse [Docker Hub](https://hub.docker.com/) e crie uma conta se ainda não tiver uma.

2. **Faça login no Docker Hub pelo terminal:**
   ```sh
   docker login
   ```
   - Insira seu nome de usuário e senha do Docker Hub.

3. **Marque a imagem com seu nome de usuário do Docker Hub:**
   ```sh
   docker tag banca-de-frutas felipealexanre178/banca-de-frutas:1.0
   ```
   - O `:1.0` é a tag da imagem (versão).
   - Caso queria usar outra imagem do Docker Hub, substitua o comando acima pelo o do outro usuário Docker Hub.
   
4. **Envie a imagem para o Docker Hub:**
   ```sh
   docker push felipealexanre178/banca-de-frutas:1.0
   ```
   - Caso queria enviar outra imagem do Docker Hub, substitua o comando acima pelo o do outro usuário Docker Hub.

---

## Como Outros Usuários Podem Baixar e Executar a Aplicação

### Pré-requisitos

- Docker instalado na máquina. [Instruções de instalação](https://docs.docker.com/get-docker/).
- No caso o professor sugeriu a utilisação de uma maquina virtua Linux - Ubuntu.

### Passos para Baixar e Executar a Aplicação

1. **Baixe a imagem do Docker Hub:**
   ```sh
   docker pull felipealexanre178/banca-de-frutas:1.0
   ```
   - Caso queria usar outra imagem do Docker Hub, substitua o comando acima pelo o do outro usuário Docker Hub.

2. **Execute o contêiner:**
   ```sh
    docker run -d -p 8080:80 felipealexanre178/banca-de-frutas:1.0
   ```

3. **Acesse a aplicação:**
   Abra o navegador e acesse [http://localhost:8080](http://localhost:8080) para visualizar a página da banca de frutas.
- Caso esteja usando a maquina virtual, troque o "localhost" pelo Id da Maquina Virtual.
---

## Estrutura do Projeto

```sh
    .
    ├── Dockerfile
    ├── index.html
    ├── style.css
    ├── README.md
    ├── feira_livre.jpg
    └── assets/
        ├── morango.jpg
        ├── melancia.jpg
        ├── uva.jpg
        ├── melao.jpg
        ├── pessego.jpg
        └── maca.jpg
```

---


## Contato

Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para entrar em contato:

- **Nome:** José Felipe Alexandre Martins
- **Email:** felipealexandre178@gmail.com
- **GitHub:** [https://github.com/felipealx1](https://github.com/felipealx1)

