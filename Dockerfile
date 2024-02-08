# Use a imagem base do Ubuntu
FROM ubuntu:latest

# Atualize o sistema e instale as dependências necessárias
RUN apt-get update && \
    apt-get install -y gfortran && \
    apt-get clean

# Defina o diretório de trabalho como /workspace
WORKDIR /workspace

# Copie o código-fonte Fortran para o diretório de trabalho
COPY q1mdc.f90 .

# Compile o código-fonte Fortran com gfortran
RUN gfortran -o q1mdc q1mdc.f90

# Label para o comando de execução
LABEL execute="./q1mdc"
