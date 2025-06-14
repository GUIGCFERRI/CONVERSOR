SELECT 
TAB_PRODUTO.COD_PRODUTO AS COD_FABRICANTE,
TAB_PRODUTO.COD_BARRA_PRINCIPAL AS BARRAS,
TAB_PRODUTO.DES_PRODUTO AS DESCRICAO,
TAB_PRODUTO.QTD_EMBALAGEM_COMPRA AS FAT_CONV,
TAB_PRODUTO.DES_UNIDADE_COMPRA AS UND_COMPRA,
TAB_PRODUTO.DES_UNIDADE_VENDA AS UND,
TAB_SECAO.DES_SECAO AS FAMILIA,
TAB_PRODUTO.cod_grupo AS PERSONAL2,
TAB_TRIBUTACAO.COD_SIT_TRIBUTARIA AS ST,
TAB_PRODUTO_LOJA.VAL_CUSTO_CHEIO AS PRECO_CUSTO,
TAB_PRODUTO_LOJA.VAL_VENDA AS PRECO_VENDA,
TAB_PRODUTO_LOJA.QTD_EST_ATUAL AS QTD,
TAB_PRODUTO_LOJA.PER_PIS AS PIS_ALIQ_NOR,
TAB_PRODUTO_LOJA.PER_COFINS AS COFINS_ALIQ_NOR,
TAB_NCM.NUM_NCM AS COD_NCM
FROM TAB_PRODUTO
LEFT JOIN TAB_SECAO ON TAB_PRODUTO.COD_SECAO=TAB_SECAO.COD_SECAO
JOIN TAB_PRODUTO_LOJA ON (TAB_PRODUTO.COD_PRODUTO=TAB_PRODUTO_LOJA.COD_PRODUTO) AND(TAB_PRODUTO_LOJA.COD_LOJA=1)
LEFT JOIN TAB_TRIBUTACAO ON (TAB_PRODUTO_LOJA.COD_TRIBUTACAO=TAB_TRIBUTACAO.COD_TRIBUTACAO) 
LEFT JOIN TAB_NCM ON TAB_PRODUTO_LOJA.COD_NCM=TAB_NCM.COD_NCM
