SELECT
    SPKPRO.CODITEM AS CODIGO,
    SPKPRO.DESITEM AS DESCRICAO,
    SPKSPROD.dessubgrupoitem AS GRUPO,
    SPKPARC.nomparceiro AS FORNECEDOR,
    CODIGOBARRA.codbarra AS BARRAS,
    SPKU.sglunidade AS UND,
    SPKPRO.CODNCM AS COD_NCM,
    SPKPRO.VALCUSTOUNITARIO AS PRECO_CUSTO,
    SPKPRO.PERMARGEMDESEJADA AS MARGEM_LUCRO,
    SPKPRO.valprecovenda AS PRECO_VENDA,
    --MIN (SPKTCF_NEW.codcstitem) AS ST,
    SUM ((SPKMAE.QTDENTRADA) - (SPKMAE.QTDSAIDA)) AS QTD,
    --SPKPRO.CODFABRICANTE AS COD_FABRICANTE,
    SPKPRO.CODREFERENCIA AS COD_FABRICANTE,
    SPKPRO.CODREFERENCIA AS CARACTERISTICAS,
    SPKPRO.DESOBSERVACAO AS OBSERVACOES,
    SPKPRO.CODCEST AS PERSONAL6,
    CAST (SPKPRO.DTACADASTRO AS DATE) AS DATA_CADASTRO
FROM SPKPRO
LEFT JOIN CODIGOBARRA ON CODIGOBARRA.CODITEM = SPKPRO.CODITEM
LEFT JOIN SPKPARC ON SPKPARC.CODPARCEIRO = SPKPRO.CODFORNECEDOR
INNER JOIN SPKSPROD ON SPKSPROD.CODSUBGRUPOITEM = SPKPRO.CODSUBGRUPOITEM
LEFT JOIN SPKU ON SPKU.codunidade = SPKPRO.codunidade
--LEFT JOIN SPKTCF_NEW ON SPKTCF_NEW.codclassefiscal = SPKPRO.codclassefiscal
LEFT JOIN SPKMAE ON SPKMAE.coditem = SPKPRO.CODITEM
--LEFT JOIN SPKTCF_NEW ON SPKTCF_NEW.codtributacao = SPKPRO.codclassefiscal
GROUP BY 1,2,3,4,5,6,7,8,9,10,12,13,14,15,16
