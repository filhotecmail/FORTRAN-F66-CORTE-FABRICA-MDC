PROGRAM CORTAR_CHAPAS
    IMPLICIT NONE
   
    INTEGER :: CA, CB, CC
    INTEGER :: MDC_ABC

    CA = 1520 
    CB = 3520 
    CC = 7896  

    WRITE (*,*) 'PROGRAMA CORDE DE CHAPAS PROPORCIONAIS'
    WRITE (*, *) 'ANALISTA: CARLOS DIAS'
    WRITE (*, *) 'DATA: 2024/07/02'
    WRITE (*, *) ''
    WRITE (*, *) 'Uma fábrica precisa cortar 1 chapa de alumínio 1520 metros quadrados, '
    WRITE ( *,* )'1 chapa de madeira de 3520 metros quadrados e 1 chapa '
    WRITE (*, *) 'de aço de 7896 metros quadrados em partes iguais, no maior tamanho possível e em proporção.'
    WRITE (*, *) 'Quantos pedaços foram cortados e em quantos metros?'
    WRITE (*, *) '' 
    WRITE (*, *) 'MDC UTILIZADO:', MDC_ABC, ' METROS QUADRADOS.'
    WRITE (*, *) CA / MDC_ABC, ' PEDAÇOS DE METAL      ', MDC_ABC, ' METROS QUADRADOS CADA UM.'
    WRITE (*, *) CB / MDC_ABC, ' PEDAÇOS DE ALUMINIO   ', MDC_ABC, ' METROS QUADRADOS CADA UM.'
    WRITE (*, *) CC / MDC_ABC, ' PEDAÇOS DE MADEIRA    ', MDC_ABC, ' METROS QUADRADOS CADA UM.'

    CONTAINS

    INTEGER FUNCTION MODULEMDC( A,B,C )
     INTEGER :: A,B,C
     INTEGER :: T

      ! Bom seguindo a lógica do professor, na matéria, valor de T, nesse caso pode ser 
      ! definido como mínimo entre B e C, já que a gente nós estamos procurando máximo divisor comum entre os 3 números
      ! Se o número divide a vírgula PEC, então ele também divide os 2 números menores de A, B e C.
      ! Então a gente pode fazer o seguinte economizar tempo já pegando um mínimo entre o B e C .
      T = MIN( B,C )
     
     DO WHILE ( T .NE. 0 )
      ! Aqui eu vou vou verificar se o resto da divisão, produto da função módulo são zero , se for significa que t é um divisor comum a esses 3 números.
      ! Se for então ele é um MDC de A, B e C.
      ! Devolvo o valor para a variável t e depois eu atribuo ela ao retorno da unção
       IF ( MODULO( A, T ) == 0 .AND. MODULO( B, T ) == 0 .AND. MODULO( C, T ) == 0) THEN
          MODULEMDC = T
          EXIT ! Se chegar aqui eu saio do loop se não isso aqui vai entrar em um loop infinito.
       END IF   
      END DO  
     
    END FUNCTION MODULEMDC


END PROGRAM CORTAR_CHAPAS
