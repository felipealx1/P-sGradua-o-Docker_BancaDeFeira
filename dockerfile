# Usa a imagem oficial do Nginx como base
FROM nginx:alpine

# Copia os arquivos HTML e CSS para o diretório de conteúdo do Nginx
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Copia a pasta assets para o diretório de conteúdo do Nginx
COPY assets/ /usr/share/nginx/html/assets/

# Copia a imagem de fundo (feira livre.jpg) para o diretório de conteúdo do Nginx
COPY feira_livre.jpg /usr/share/nginx/html/

# Expõe a porta 80, que é a porta padrão do Nginx
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]