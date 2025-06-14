SELECT 
 P.CODIGO as COD_FABRICANTE
, P.DESCRICAO
, P.CARACTERISTICAS
, P.LOCALIZACAO AS PERSONAL1
, P.EAN AS BARRAS
, P.UNIDADE AS UND
, P.UNIDADECOMPRA AS UND_COMPRA
, P.PRECOVENDA AS PRECO_VENDA
, P.PRECOATACADO AS PRECO_ATACADO
, P.PRECOCOMPRA AS PRECO_CUSTO
, P.LUCRO AS MARGEM_LUCRO
, CONVERT (DATE, P.DATAULTIMAVENDA) AS ULTIMA_VENDA
, CONVERT (DATE, P.DATAULTIMACOMPRA) AS ULTIMA_COMPRA
, CONVERT (DATE,P.DATACAD) AS DATA_CADASTRO
, P.COMISSAO
, P.VALIDADEBALANCA AS VALIDADE_DIAS
, P.PESO
, CASE P.INATIVO WHEN '0' THEN 'Ativo' ELSE 'Inativo' END AS SITUACAO
, P.NCM AS COD_NCM
, P.ORIGEMMERCADORIA AS OST
, LEFT (P.CFOP, 3) AS ELO
, P.CFOP AS CF
, P.CSOSN AS ST
, P.PIS AS PIS_ALIQ_NOR
, P.IPISAIDA AS ALIQ_IPI_VENDA
, P.COFINS AS COFINS_ALIQ_NOR
, P.CSTPIS AS PIS_CODIGO
, P.CSTCOFINS AS COFINS_CODIGO
, P.CSTIPI AS IPI_CODIGO_VENDA
, P.IPIE AS ALIQ_IP
, P.COFINSE AS COFINSE_ALIQ_NOR
, P.PISE AS PISE_ALIQ_NOR
, P.CSTPISE AS PISE_CODIGO
, P.CSTCOFINSE AS COFINSE_CODIGO
, P.CSTIPIE AS IPI_CODIGO
, P.COR
, P.TAMANHO
, P.OBS AS OBSERVACOES
, P.CEST AS PERSONAL6
, M.DESCRICAO AS FAMILIA
, GP.DESCRICAO AS GRUPO
, F.DESCRICAO AS FORNECEDOR
, VPE.QTDESTOQUE AS QTD
FROM PRODUTOS P
LEFT JOIN MARCAS M ON M.CODIGO = P.MARCA
LEFT JOIN GRUPOPRODUTOS GP ON GP.CODIGO = P.GRUPO 
LEFT JOIN FORNECEDOR F ON F.CODIGO = P.FORNECEDOR
LEFT JOIN VWPRODUTOSECF VPE ON VPE.CPRODUTO = P.CODIGO
