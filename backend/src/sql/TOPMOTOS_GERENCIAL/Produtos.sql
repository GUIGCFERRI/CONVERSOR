SELECT
    PRODUTO.IDPRODUTO AS CODIGO,
    GRUPO.descricaogrupo AS GRUPO,
    SETOR.descricaosetor AS FAMILIA,
    PRODUTO.IDUNIDMEDIDA AS UND,
    PRODUTO.EAN AS BARRAS,
    PRODUTO.DESCRICAOPRODUTO AS DESCRICAO,
    PRODUTO.REFFABRICANTE AS COD_FABRICANTE,
    PRODUTO.PRECOGONDOLA AS PRECO_VENDA,
    PRODUTO.ESTOQUEMINIMO AS QTD_IDEAL,
    PRODUTO.CUSTO AS PRECO_CUSTO,
    PRODUTO.CUSTOMEDIO AS CUSTO_MEDIO,
    PRODUTO.MARGEMAVISTA AS MARGEM_LUCRO,
    CAST (PRODUTO.DTREAJUSTE AS DATE) AS ALTERACAO_PRECO,
    CAST (PRODUTO.DATACADASTRO AS DATE) AS DATA_CADASTRO,
    PRODUTO.CST_ICMS AS ST,
    PRODUTO.NCM AS COD_NCM,
    CEST.CEST AS PERSONAL6
FROM PRODUTO
LEFT JOIN grupo ON GRUPO.idgrupo = PRODUTO.IDGRUPO
LEFT JOIN setor ON SETOR.idsetor = PRODUTO.IDSETOR
LEFT JOIN CEST ON CEST.id = PRODUTO.ID_CEST
