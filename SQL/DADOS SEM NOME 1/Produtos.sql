SELECT
    COD_INTERNO AS CODIGO,              
    COD_PRODUTO AS BARRAS,              
    DESCRICAO,             
    ESTOQUE AS QTD,                                        
    ST,                        
    UNIDADE AS UND,                   
    MINIMO AS QTD_IDEAL,                   
    COD_FABRICANTE,           
    ATACADO AS PRECO_ATACADO,                  
    VENDA AS PRECO_VENDA,                   
    COD_NCM,                  
    --REFERENCIA CARACTERISTICAS,
    COMPRA AS PRECO_CUSTO,                    
    CEST AS PERSONAL6

FROM PRODUTO      
