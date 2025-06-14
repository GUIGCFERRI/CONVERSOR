SELECT
    --PRODUTO.CODIGO AS CODIGO,
    FORNECEDOR.razaosocial AS FORNECEDOR,
    GRUPO.descricao AS GRUPO,
    MARCA.descricao AS CARACTERISTICAS,
    PRODUTO.NUMERO AS PERSONAL1,
    PRODUTO.DESCRICAO,
    PRODUTO.PRECOCOMPRA AS PRECO_CUSTO,
    PRODUTO.UNIDADE AS UND,
    PRODUTO.CODIGOFORNECEDOR AS COD_FABRICANTE,

    PRODUTO.PRECOVENDA AS PRECO_VENDA,
    PRODUTO.CODIGOBARRA AS BARRAS
FROM PRODUTO
LEFT JOIN FORNECEDOR ON PRODUTO.CODFORNECEDOR = FORNECEDOR.codigo
LEFT JOIN GRUPO ON PRODUTO.CODGRUPO = GRUPO.codigo
LEFT JOIN MARCA ON PRODUTO.codmarca = MARCA.codigo

WHERE PRODUTO.CODEMPRESA = '1'
AND GRUPO.CODEMPRESA = '1'

