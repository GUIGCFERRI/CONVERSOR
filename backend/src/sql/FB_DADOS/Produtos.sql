SELECT PRODUTOS.CODIGO,
PRODUTOS.DESCPDV AS DESCRICAO,
PRODUTOS.UNIDADE AS UND,
SECOES.DESCRICAO AS GRUPO,
PRODUTOS.PRECUSTO AS PRECO_CUSTO,
PRODUTOS.PREVFINAL AS PRECO_VENDA,
PRODUTOS.DTCAD AS DATA_CADASTRO,
SITTRIB.CSOSN AS ST,
PRODUTOS.CODBARRA AS COD_FABRICANTE,
PRODUTOS.NCM AS COD_NCM,
PRODUTOS.CEST AS PERSONAL6
FROM PRODUTOS
LEFT JOIN SECOES ON PRODUTOS.CODSECAO=SECOES.CODIGO
LEFT JOIN SITTRIB ON PRODUTOS.SITTRIB=SITTRIB.CODIGO

