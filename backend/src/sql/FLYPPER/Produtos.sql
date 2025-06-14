SELECT
    TPRODUTO.CODIGOPRO AS CODIGO,
    TPRODUTO.NOME AS DESCRICAO,
    TPRODUTO.REFERENCIA AS BARRAS,
    TMEDIDAS.NOME AS UND,
    GRUPO.DESCRICAO AS GRUPO,
    TPRODUTO.PESOLIQ AS PESO,
    TPRODUTO.ESTOQUE_IDEAL AS QTD_IDEAL,
    TPRODUTO.ESTOQUE AS QTD,
    TPRODUTO.CUSTO AS PRECO_CUSTO,
    TPRODUTO.CUSTO_MEDIO AS CUSTO_MEDIO,
    TPRODUTO.PRECO_AVISTA AS PRECO_VENDA,
    SUBSTRING (TTRIBUTACAO.DESCRICAO FROM 1 FOR 2) AS ST,
    TPRODUTO.OBSERVACAO AS OBSERVACOES,
    TMARCAS.NOMEMARCA AS CARACTERISTICAS,
    TPRODUTO.CODNCM AS COD_NCM,
    TPRODUTO.CEST AS PERSONAL6,
    TPRODUTO.DATA_ALTERACAO AS ALTERACAO_PRECO,
    TPRODUTO.DATA_CADASTRO AS DATA_CADASTRO,
    TPRODUTO.DATA_ULTIMA_VENDA AS ULTIMA_VENDA
FROM TPRODUTO
LEFT JOIN GRUPO ON GRUPO.CODIGO = TPRODUTO.CODGRUPO
LEFT JOIN TMEDIDAS ON TMEDIDAS.CODIGO = TPRODUTO.CODUND
LEFT JOIN TTRIBUTACAO ON TTRIBUTACAO.CODIGO = TPRODUTO.CODTRIBUTACAO
LEFT JOIN TMARCAS ON TMARCAS.CODMARCA = TPRODUTO.CODMARCA