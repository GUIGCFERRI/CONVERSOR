select
    PRODUTO.ID AS CODIGO,
    PRODUTO.CODIGO AS COD_FABRICANTE,
    PRODUTO.CODIGOBARRAS AS BARRAS,
    PRODUTO.REFERENCIA AS CARACTERISTICAS,
    grupoproduto.NOME AS grupo,
    PRODUTO.DESCRICAO,
    PRODUTO.UNIDADE AS UND,
    PRODUTO.ST,
    PRODUTO.ESTOQUE AS QTD,
    PRODUTO.PRECOCUSTO AS PRECO_CUSTO,
    PRODUTO.PRECOVENDA AS PRECO_VENDA,
    NCM.CODIGO AS COD_NCM,
    CEST.CODIGO AS PERSONAL6
from produto
LEFT JOIN NCM ON PRODUTO.NCM_ID = NCM.ID
LEFT JOIN CEST ON PRODUTO.CEST_ID = CEST.ID
LEFT JOIN grupoproduto ON grupoproduto.id = PRODUTO.grupoproduto_id
