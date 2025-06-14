SELECT
    PRODUTO.ID AS CODIGO,
    PRODUTO.DESCRICAOCOMPLETA AS DESCRICAO,
    PRODUTO.DESCRICAOREDUZIDA AS CARACTERISTICAS,
    MIN (replace(PRODUTOAUTOMACAO.CODIGOBARRAS,'.','')) AS BARRAS,
    MIN (PRODUTOAUTOMACAO.TIPOEMBALAGEM) AS UND,
    PRODUTO.PRECOVENDA AS PRECO_VENDA,
    ALIQUOTA.CSOSN AS ST,
    PRODUTO.NCM AS COD_NCM,
    PRODUTO.CEST AS PERSONAL6
FROM PRODUTO
LEFT JOIN ALIQUOTA ON ALIQUOTA.id = PRODUTO.ID_ALIQUOTA
LEFT JOIN PRODUTOAUTOMACAO ON PRODUTOAUTOMACAO.id_produto = PRODUTO.ID
GROUP BY 1,2,3,6,7,8,9
