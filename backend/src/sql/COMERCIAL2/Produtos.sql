SELECT
PRODUTOS.ID AS CODIGO,	
PRODUTOS.DATA_INCLUSAO AS DATA_CADASTRO,		
PRODUTOS.CODIGO_DE_BARRAS AS BARRAS,	
GRUPO_PRODUTO.NOME AS GRUPO,	
PRODUTOS.CODIGO_FABRICA AS COD_FABRICANTE,	
PRODUTOS.DESCRICAO_DETALHADA AS DESCRICAO,	
PRODUTOS.CARACTERISTICAS AS CARACTERISTICAS,	
FORNECEDOR.NOME_DO_FORNECEDOR AS FORNECEDOR,	
PRODUTOS.DATA_ULT_COMPRA AS ULT_COMPRA,	
PRODUTOS.DATA_ULT_VENDA AS ULT_VENDA,		
PRODUTOS.VALOR_VENDA AS PRECO_VENDA,		
PRODUTOS.ESTOQUE_ATUAL AS QTD,	
PRODUTOS.ESTOQUE_MINIMO AS QTD_IDEAL,		
PRODUTOS.ORIGEM AS OST,			
PRODUTOS.PESO_LIQUIDO AS PESO,	
CSOSN.CODIGO AS ST,	
UNIDADE.SIGLA AS UND,	
PRODUTOS.DATA_ALTERACAO AS ALTERACAO_PRECO,		
NCM.CODIGO AS COD_NCM,	
CEST.CODIGO AS PERSONAL6,
PRODUTOS.MARGEM_LUCRO AS MARGEM_LUCRO		
FROM PRODUTOS
LEFT JOIN GRUPO_PRODUTO ON GRUPO_PRODUTO.ID = PRODUTOS.ID_GRUPO
LEFT JOIN FORNECEDOR ON FORNECEDOR.ID = PRODUTOS.ID_FORNECEDOR
LEFT JOIN UNIDADE ON UNIDADE.ID = PRODUTOS.ID_UNIDADE_MEDIDA
LEFT JOIN NCM ON NCM.ID = PRODUTOS.ID_NCM
LEFT JOIN CEST ON CEST.ID = PRODUTOS.ID_CEST
LEFT JOIN CSOSN ON CSOSN.ID = PRODUTOS.ID_TRIBUTACAO
