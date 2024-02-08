# Use a imagem base do Ubuntu
FROM ubuntu:latest

# Atualize o sistema e instale as dependências necessárias
RUN apt-get update && \
    apt-get install -y gfortran && \
    apt-get clean

# Defina o diretório de trabalho como /workspace
WORKDIR /workspace