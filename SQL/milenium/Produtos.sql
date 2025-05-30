SELECT    
    produtos.PROCOD AS CODIGO,
    produtos.PRONOM AS DESCRICAO,
    produtos.PROMAR AS CARACTERISTICAS,
    produtos.PROUNI AS UND,
    grupos.grunom AS GRUPO,
    produtos.PROBAR AS BARRAS,
    produtos.PROFIN AS PRECO_CUSTO,
    produtos.PROVEN AS PRECO_VENDA,
    produtos.PROEST AS QTD,
    produtos.PRONCM AS COD_NCM,
    produtos.PROCEST AS PERSONAL6

FROM PRODUTOS

LEFT JOIN GRUPOS ON  produtos.progru = grupos.grucod
ORDER BY CODIGO
