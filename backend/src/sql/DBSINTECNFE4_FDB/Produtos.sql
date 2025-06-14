SELECT
    PRODUTOS.NOME AS DESCRICAO,
    case when PRODUTOS.CODIGOBARRAS = '' or PRODUTOS.CODIGOBARRAS is null then PRODUTOS.CODIGOORIGINAL else PRODUTOS.CODIGOBARRAS END AS BARRAS,
    PRODUTOS.UNIDMED AS UND,
    PRODUTOS.QTDE AS QTD,
    PRODUTOS.QTDEMINIMA AS QTD_IDEAL,
    PRODUTOS.PESO AS PESO,
    CATEGORIA.nome AS GRUPO,
    FAMILIA.nome AS FAMILIA,
    PRODUTOS.CUSTO AS PRECO_CUSTO,
    PRODUTOS.CUSTOMEDIO AS CUSTO_MEDIO,
    PRODUTOS.TABELA1 AS PRECO_VENDA,
    PRODUTOS.SITTRIB AS ST,
    PRODUTOS.DATAULTALT AS ALTERACAO_PRECO,
    PRODUTOS.ULTVENDA AS ULTIMA_VENDA,
    PRODUTOS.ULTCOMPRA AS ULTIMA_COMPRA,
    PRODUTOS.OBSERV AS OBSERVACOES,
    PRODUTOS.CLASSFISCAL AS COD_NCM,
    case when PRODUTOS.CODPRODFORNEC = '' or PRODUTOS.CODPRODFORNEC is null then PRODUTOS.CODIGO else PRODUTOS.CODPRODFORNEC END  AS COD_FABRICANTE,
    PRODUTOS.CEST AS PERSONAL6
FROM PRODUTOS
LEFT JOIN categoria ON CATEGORIA.codigo = PRODUTOS.CATEGORIA
LEFT JOIN FAMILIA ON FAMILIA.codigo =  PRODUTOS.FAMILIA