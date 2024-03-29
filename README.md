![image](https://github.com/filhotecmail/FORTRAN-F66-CORTE-FABRICA-MDC/assets/18727307/7187b38a-9bf9-4d6a-91fa-6bc3951388dc)


# FORTRAN-F66-CORTE-FABRICA-MDC
Repositório criado para complementar o estudo da matemática básica, exemplificando questões de provas lógicas em fortran, para reforçar o estudo da matemática.

## Ambiente de Desenvolvimento

- Imagem base: Sistema Operacional Linux Ubuntu
- Compilador: gfortran
- Versão: Fortran F66


## Instruções

### Construa a imagem Docker
No terminal, navegue até o diretório onde o Dockerfile está localizado e execute o seguinte comando para construir a imagem Docker:

```bash
docker build -t meu_fortran .
```

## Execute o contêiner Docker
Depois que a imagem for construída com sucesso, você pode executar um contêiner Docker a partir dela usando o seguinte comando:

```bash
docker run -it --rm meu_fortran
```

Para compilar o código-fonte, utilize o seguinte comando:

```bash
gfortran -o q1mdc q1mdc.f90
```

Após compilar com sucesso, execute o programa com o comando:

   ```bash
   ./q1mdc
   ```       

# Problema Matemático: Divisão de Chapas em Partes Iguais

## Descrição do Problema

Uma fábrica precisa cortar chapas de alumínio, madeira e aço em partes iguais, no maior tamanho possível e em proporção. As dimensões das chapas são as seguintes:

- Chapa de alumínio: 1520 metros quadrados
- Chapa de madeira: 3520 metros quadrados
- Chapa de aço: 7896 metros quadrados

O objetivo é determinar quantos pedaços foram cortados e em quantos metros cada pedaço mede.

## Método de Solução

Para resolver este problema, utilizaremos o conceito de MDC (Máximo Divisor Comum). O MDC entre três números é o maior número inteiro que divide todos os três números sem deixar resto.

Passos para encontrar o MDC de três números:

1. Encontrar o MDC entre os dois primeiros números (alumínio e madeira).
2. Encontrar o MDC entre o resultado anterior e o terceiro número (aço).
3. O resultado final é o MDC encontrado no passo 2.

Após encontrar o MDC, podemos determinar quantos pedaços foram cortados e em quantos metros cada pedaço mede dividindo as dimensões das chapas pelo MDC.

![image](https://github.com/filhotecmail/FORTRAN-F66-CORTE-FABRICA-MDC/assets/18727307/a47f79da-b051-4705-a141-85fbbe0ff9f8)

![image](https://github.com/filhotecmail/FORTRAN-F66-CORTE-FABRICA-MDC/assets/18727307/951e8e7c-9371-4f9e-a2de-01279a5e7bf5)




