SELECT
substring (PRODUTO.CODPROD from 5 for 10) AS CODIGO,
PRODUTO.CODIGO AS BARRAS,
PRODUTO.CODIGO AS COD_FABRICANTE,
FORNECEDOR.NOMEFORN AS FORNECEDOR,
lower (PRODUTO.NOMEPROD) AS DESCRICAO,
PRODUTO.UNIDADE AS UND,
PRODUTO.PRECUSTO AS PRECO_CUSTO,
PRODUTO.CUSTOMEDIO AS CUSTO_MEDIO,
PRODUTO.DATCAD AS DATA_CADASTRO,
CLASSIFICACAOFISCAL.CODIGOCLASSIFICACAOFISCAL AS COD_NCM,
--TRIBUTACAOECF.CODSITUACAOTRIBUTARIA AS ST,
SECAO.NOMESECAO AS GRUPO,
--PRODUTO.CODIGOINTERNO AS COD_FABRICANTE,
PRODUTOPRECO.PRECO AS PRECO_VENDA,
PRODUTO.OBS||' - '||PRODUTO.APLICACAO AS OBSERVACOES,
FABRICANTE.NOMEFABRICANTE AS FAMILIA,
SUM(PRODUTOESTOQUE.ESTATU) AS QTD
FROM PRODUTO
LEFT JOIN CLASSIFICACAOFISCAL ON PRODUTO.CODCLASSIFICACAOFISCAL=CLASSIFICACAOFISCAL.CODCLASSIFICACAOFISCAL
LEFT JOIN SECAO ON PRODUTO.CODSEC=SECAO.CODSEC
LEFT JOIN FORNECEDOR ON PRODUTO.CODFORN=FORNECEDOR.CODFORN
--LEFT JOIN TRIBUTACAOECF ON PRODUTO.CODTRIBUTACAOECF=TRIBUTACAOECF.CODTRIBUTACAOECF
LEFT JOIN PRODUTOPRECO ON PRODUTO.CODPROD=PRODUTOPRECO.CODPROD
LEFT JOIN PRODUTOESTOQUE ON PRODUTO.CODPROD=PRODUTOESTOQUE.CODPROD
LEFT JOIN FABRICANTE ON PRODUTO.CODFABRICANTE=FABRICANTE.CODFABRICANTE
WHERE PRODUTOPRECO.CODPRECO='000000001'
GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14
