SELECT
    P.WIDPRODUTO AS CODIGO,
    P.WNOMEPRODUTO AS DESCRICAO,
    P.WCODIGOPRINCIPAL AS BARRAS,
    U.WSIGLAUNIDADE AS UND,
    P.WPESO AS PESO,
    M.WNOMEMARCA AS CARACTERISTICAS,
    F.WNOMEFAMILIA AS GRUPO,
    S.WNOMESECAO AS FAMILIA,
    E.WQUANTIDADE AS QTD,
    PC.WPRECO AS PRECO_CUSTO,
    PV.WPRECO AS PRECO_VENDA,
    SUBSTRING (P.WCST FROM 1 FOR 1) AS OST,
    SUBSTRING (P.WCST FROM 2 FOR 3) AS ST,
    P.WCODIGOPRINCIPAL AS COD_FABRICANTE,
    P.WNCM AS COD_NCM,
    P.WCEST AS PERSONAL6,
    CAST (P.WDATACADASTRO AS DATE) AS DATA_CADASTRO
FROM PRODUTOS AS P
LEFT JOIN MARCAS M ON P.WIDMARCA = M.WIDMARCA
LEFT JOIN FAMILIAS F ON P.WIDFAMILIA = F.WIDFAMILIA
LEFT JOIN SECOES S ON P.WIDSECAO = S.WIDSECAO
LEFT JOIN ESTOQUE E ON P.WIDPRODUTO = E.WIDPRODUTO
LEFT JOIN PRECOSCUSTO PC ON P.WIDPRODUTO = PC.WIDPRODUTO
LEFT JOIN PRECOSVENDA PV ON P.WIDPRODUTO = PV.WIDPRODUTO
LEFT JOIN UNIDADES U ON P.WIDUNIDADE = U.WIDUNIDADE
