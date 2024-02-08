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
     INTEGER :: A,B,CA
     INTEGER :: T
     
     DO WHILE ( T .NE. 0 )
       IF () THEN
       END IF
       T
    END FUNCTION MODULEMDC


END PROGRAM CORTAR_CHAPAS
