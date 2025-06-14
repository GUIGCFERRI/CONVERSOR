SELECT 
-- CONTROLE AS CODIGO
  E.CODIGO
, E.CODINTERNO AS BARRAS
--, E.CODBARRA AS BARRAS
, E.CODORIGEM AS COD_FABRICANTE
, E.PRODUTO AS DESCRICAO
, E.FABRICANTE AS CARACTERISTICAS
, E.PRECOCUSTO AS PRECO_CUSTO
, E.CUSTOMEDIO AS CUSTO_MEDIO
, E.PRECOVENDA AS PRECO_VENDA
, E.LUCRO AS MARGEM_LUCRO
, E.PRATACADO AS PRECO_ATACADO
, E.QTDATACADO AS QTD_PRECO_ATACADO
, E.QUANTIDADE AS QTD
, E.ESTMINIMO AS QTD_IDEAL
, E.UNIDADE AS UND
, E.OBS AS OBSERVACOES
, CASE E.INATIVO WHEN '0' THEN 'Ativo' ELSE 'Inativo' END AS SITUACAO
, CONVERT (DATE, E.ULTVENDA) AS ULTIMA_VENDA
, E.TAMANHO
, E.COR
, E.PESO
, E.COMISSAO
, E.TRB_ORIGEM AS OST
, LEFT (E.CFOP,3) AS ELO
--, E.TRB_PICMS
, E.QTDEMBALAGEM AS FAT_CONV
, E.NCM AS COD_NCM
, E.CEST AS PERSONAL6
, E.TRB_ICMS_CST AS ST
, E.CODIPI AS IPI_CODIGO
, E.IPI AS ALIQ_IPI
, E.TRB_IPI_CST AS IPI_CODIGO_VENDA
, E.TRB_PIPI AS ALIQ_IPI_VENDA
, E.TRB_PIS_CST AS PIS_CODIGO
, E.TRB_PPIS AS PIS_ALIQ_NOR
, E.TRB_COFINS_CST AS COFINS_CODIGO
, E.TRB_PCOFINS AS COFINS_ALIQ_NOR
, F.NOME AS FORNECEDOR
FROM TABEST1 E
LEFT JOIN FORNECEDORES F ON F.CODIGO = E.LKFORNEC