SELECT 
    p.idproduto AS CODIGO,
    p.codigobarra1 AS BARRAS,
    p.descricaoproduto AS DESCRICAO,
    pu.descricao AS UND,
    pu_compra.descricao AS UND_COMPRA,
    g.nome AS GRUPO,
    p.idgrupo AS ID_GRUPO,
    pc.descricao AS CARACTERISTICAS,
    p.referenciagrade AS TAMANHO,
    p.pesobruto AS PESO,
    p.estoqueloja AS QTD,
    p.estoquemaximo AS QTD_INICIAL,
    p.estoqueminimo AS QTD_IDEAL,
    p.custorealunitario AS PRECO_CUSTO,
    p.margemvenda1 AS MARGEM_LUCRO,
    p.valorvenda1 AS PRECO_VENDA,
    p.comissaovenda AS COMISSAO,
    p.tributacao AS ST,
    p.ncm AS COD_NCM,
    p.cest AS PERSONAL6
FROM 
    public.produto p
    LEFT JOIN public.produto_unidade pu ON p.idunidade = pu.idunidade
    LEFT JOIN public.produto_unidade pu_compra ON p.idunidade = pu_compra.idunidade
    LEFT JOIN public.produto_grupo g ON p.idgrupo = g.idgrupo
    LEFT JOIN public.produto_caracteristica pc ON p.idprodutocaracteristica = pc.idprodutocaracteristica
--    LEFT JOIN public.fornecedor for ON p.idfornecedor = for.idfornecedor
WHERE 
    p.statusproduto = TRUE  -- Ajuste conforme necessidade
ORDER BY 
    p.idproduto ASC;