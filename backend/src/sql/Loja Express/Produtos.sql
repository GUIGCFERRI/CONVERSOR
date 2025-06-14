SELECT
    PRODUTO.CODIGO,
    PRODUTO.CODBARRA AS BARRAS,
    --PRODUTO.CODBARRA AS COD_FABRICANTE,
    PRODUTO.CODFABRICA AS COD_FABRICANTE,
    PRODUTO.DESCRICAO,       
    FORNEDECOR.razao AS FORNECEDOR,
    PRODUTO.GRUPO,
    PRODUTO.SUBGRUPO AS FAMILIA,
    PRODUTO.COR,
    PRODUTO.TAMANHO,
    PRODUTO.UNIDADEVENDA AS UND,
    PRODUTO.PRECOCUSTO AS PRECO_CUSTO,
    PRODUTO.PRECOVENDA AS PRECO_VENDA,
    --PRODUTO.PRECOPRAZO AS PRECO_VENDA,
    PRODUTO.ESTOQUE AS QTD,
    PRODUTO.ESTOQUEMINIMO AS QTD_IDEAL,
    PRODUTO.ULTIMACOMPRA AS ULTIMA_COMPRA,
    PRODUTO.ULTIMAVENDA AS ULTIMA_VENDA,
    PRODUTO.observacao as observacoes,
    PRODUTO.NCM AS COD_NCM,
    SUBSTRING (PRODUTO.SITTRIBUTARIA FROM 1 FOR 1) AS OST,
    SUBSTRING (PRODUTO.SITTRIBUTARIA FROM 2 FOR 4) AS ST,
    PRODUTO.CEST AS PERSONAL6
FROM PRODUTO
LEFT JOIN FORNEDECOR ON PRODUTO.fornecedor = FORNEDECOR.id
