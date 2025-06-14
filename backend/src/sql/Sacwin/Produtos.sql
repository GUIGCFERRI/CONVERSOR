SELECT
  P.ID AS CODIGO
, P.DATA_INC AS DATA_CADASTRO
, P.DESCRICAO
, P.CODBARRA AS BARRAS
, P.UNIDADE AS UND
, P.REF_FABRICA AS COD_FABRICANTE
, P.EMBALAGEM AS FAT_CONV
, P.ESTOQUE AS QTD
, P.QUANTMINIMA AS QTD_IDEAL
, P.PESOBRU AS PESO
, P.CUSTO AS PRECO_CUSTO
, P.PRECOBASE AS PRECO_VENDA
, P.ULTIMACOMPRA AS ULTIMA_COMPRA
, P.ULTIMAVENDA AS ULTIMA_VENDA
, P.COMISSAODIF AS COMISSAO
, P.ICMS AS ELO
, P.IPI AS ALIQ_IPI_VENDA
, P.NCM AS COD_NCM
, P.CFOP AS CF
, P.ORIGEM AS OST
, P.CST AS ST
, G.GRUPO 
, M.MARCAPRO AS CARACTERISTICAS
, F.NOME AS FORNECEDOR
, C.COR 
, T.TAMANHO 
FROM PRODUTOS P
LEFT JOIN FORNECEDOR F ON F.ID = P.ULT_FORN_ID  
LEFT JOIN MARCAPRO M ON M.ID = P.MARCA_ID
LEFT JOIN GRUPOPRO G ON G.ID = P.GRUPO_ID 
LEFT JOIN CORES C ON C.ID  = P.ID_COR 
LEFT JOIN TAMANHOS T ON T.ID = P.ID_TAMANHO 