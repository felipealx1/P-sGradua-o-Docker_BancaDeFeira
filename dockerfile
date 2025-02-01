# Usa a imagem oficial do Python
FROM python:3.9

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY . /app

# Expõe a porta 8000
EXPOSE 8000

# Comando para iniciar o servidor web simples
CMD ["python", "-m", "http.server", "8000"]
