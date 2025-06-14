SELECT PRODUTO.PRODUTOID AS CODIGO,
PRODUTO.NOME AS DESCRICAO,
PRODUTO.CODIGOBARRA AS BARRAS,
PRODUTO.CODIGONCM AS COD_NCM,
PRODUTO.SALDO AS QTD,
SECAO.NOME AS GRUPO,
PRODUTO.STR_CEST AS PERSONAL6,
PRODUTO.COMPLEMENTO AS OBSERVACOES,
UNIDADE.SIGLA AS UND,
PRODUTO.VALOR_CUSTO AS PRECO_CUSTO,
PRODUTO.VALOR_VENDA AS PRECO_VENDA
FROM PRODUTO
LEFT JOIN SECAO ON PRODUTO.SECAOID = SECAO.SECAOID
LEFT JOIN UNIDADE ON PRODUTO.UNIDADEID = UNIDADE.UNIDADEID
