SELECT
    sr_recno AS CODIGO,
    cest AS PERSONAL6,
    codbarra AS BARRAS,
    codigo AS COD_FABRICANTE,
    ncm AS COD_NCM,
    nome AS DESCRICAO,
    precocusto AS PRECO_CUSTO,
    precovndi AS PRECO_VENDA,
    saldo AS QTD,
    und AS UND
FROM SUPERNET_PRODUTOS
order by 1