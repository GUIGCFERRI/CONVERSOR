SELECT
--PRODUTO.COD_PRODUTO AS CODIGO,
PRODUTO.EAN AS BARRAS,
PRODUTO.DESCRICAO,
PRODUTO.COD_SITTRIBUTARIA AS ST,
PRODUTO.ALIQ_ICMS AS ELO,
PRODUTO.DATA_CADASTRO,
PRODUTO.UNIDADE AS UND,
PRODUTO.PRECO_CUSTO,
PRODUTO.CONTA_NCM AS COD_NCM,
PRODUTO.REFERENCIA AS COD_FABRICANTE,
PRODUTO.VALOR_TABELA_1 AS PRECO_VENDA,
PRODUTO.MARGEM_1 AS MARGEM_LUCRO,
PRODUTO.DESCFINAL AS OBSERVACOES,
PRODUTO.CEST AS PERSONAL6,
VESTOQUE.SALDO_ATUAL AS QTD
--CLIENTE.RAZAO_SOCIAL AS FORNECEDOR
FROM PRODUTO
LEFT JOIN VESTOQUE ON PRODUTO.COD_PRODUTO=VESTOQUE.COD_PRODUTO
--LEFT JOIN CLIENTE ON CLIENTE.COD_CLIENTE = PRODUTO.COD_FORNECEDOR
