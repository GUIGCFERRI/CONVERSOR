SELECT 
  P.ID AS CODIGO
, P.DESCRICAO
, P.REFERENCIA AS COD_FABRICANTE
, P.INFORMACAO AS OBSERVACOES
, P.BARRA AS BARRAS
, P.NCM AS COD_NCM
, P.VALORCOMPRA AS PRECO_CUSTO
, P.VALIDADE AS VALIDADE_DIAS
, P.PESOB AS PESO
, P.FABRICANTE AS CARACTERISTICAS
, P.INFOADICIONAL1 AS PERSONAL1
, P.INFOADICIONAL2 AS PERSONAL2
, LEFT (IT.CFOP,3) AS ELO
, IT.CST AS ST
, IT.ORIGEM AS OST
, IT.CSTPIS AS PIS_CODIGO
, IT.ALIQUOTAPIS AS PIS_ALIQ_NOR
, IT.CSTCOFINS AS COFINS_CODIGO
, IT.ALIQUOTACOFINS AS COFINS_ALIQ_NOR
, IT.CSTIPI AS IPI_CODIGO_VENDA
, IT.ALIQUOTAIPI AS ALIQ_IPI_VENDA
, G.DESCRICAO AS UND
, GN.DESCRICAO AS GRUPO
, C.CEST AS PERSONAL6
, PV.MARGEMVENDA AS MARGEM_LUCRO
, PV.VALORVENDA AS PRECO_VENDA
, PE.ESTOQUEATUAL AS QTD
, PE.ESTOQUEMINIMO AS QTD_IDEAL
, PE.LOCALIZACAO AS PERSONAL5
, CASE PP.ATIVO WHEN '1' THEN 'Ativo' ELSE 'Inativo' END AS SITUACAO 
FROM PRODUTO_SERVICO P
LEFT JOIN PRODUTO_PARAMETRO PP ON PP.ID_PRODUTO = P.ID AND PP.ID_EMPRESA = 1 --VER O ID DA EMPRESA NA TABELA PESSOA (CAMPO ID_PESSOA), CONSIDERANDO SOMENTE O CAMPO TIPOPESSOA = 2 
LEFT JOIN IMPOSTO_TRIBUTACAO IT ON IT.ID_IMPOSTO = PP.ID_IMPOSTO 
LEFT JOIN GRUPO G ON G.ID = P.UNIDADETRIBUTAVEL 
LEFT JOIN GRUPONIVEL GN ON GN.ID = P.ID_GRUPO
LEFT JOIN CEST C ON C.ID = P.ID_CEST
LEFT JOIN PRODUTO_VALOR PV ON PV.ID_PRODUTO = P.ID AND ID_TABELA = 1
LEFT JOIN PRODUTO_ESTOQUE PE ON PE.ID_PRODUTO = P.ID
