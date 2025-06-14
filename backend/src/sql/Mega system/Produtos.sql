SELECT
  P.PACODIGO AS CODIGO,
  P.PADESCRICAO AS DESCRICAO,
  P.PAUNIDADE AS UND,
  P.PACUSTO_MEDIO AS CUSTO_MEDIO,
  P.PAESTOQUE_ATUAL AS QTD,
  P.PAESTOQUE_MINIMO AS QTD_IDEAL,
  P.PACUSTO_ATUAL AS PRECO_CUSTO,
  COALESCE(P.PADATACADASTRO, CURRENT_DATE()) AS DATA_CADASTRO,
  P.PAMARGEM AS MARGEM_LUCRO,
  P.PAVALORVENDA AS PRECO_VENDA,
  P.PACODIGOBARRAS AS BARRAS,
  REPLACE (P.PACF,'.','') AS COD_NCM,
  REPLACE (P.PACEST,'.','') AS PERSONAL6,
-- FORNCODIGO AS COD_FABRICANTE,
-- PACODIGOREFERENCIA AS COD_FABRICANTE,
-- PACODIGOFABRICA1 AS COD_FABRICANTE, 
  P.PACODIGOFABRICA2 AS COD_FABRICANTE,
  P.PAOBS AS OBSERVACOES,
  P.PATAMANHO AS TAMANHO,
  P.PACOR AS COR,
  CASE P.PAATIVO WHEN 'SIM' THEN 'Ativo' ELSE 'Inativo' END AS SITUACAO, 
  LEFT (P.PAORIGEM,1) AS OST,
-- RIGHT (P.PAST,2) AS ST,
  LEFT (P.PACSOSN,3) AS ST,
  P.PAPESOBRUTO AS PESO,
  P.PACOMISSAO AS COMISSAO,  
  SUBSTRING(P.PAPIS, 5, 2) AS PIS_CODIGO,
  SUBSTRING(P.PACOFINS, 8, 2) AS COFINS_CODIGO,
  SUBSTRING(P.PAPISENTRA, 5, 2) AS PISE_CODIGO,
  SUBSTRING(P.PACOFINSENTRA, 8, 2) AS COFINSE_CODIGO,
  LEFT (P.PACSTIPIENTRA,2) AS IPI_CODIGO,
  LEFT (P.PACSTIPISAIDA,2) AS IPI_CODIGO_VENDA,
  P.PACLASSIFICACAO AS PERSONAL1,
  P.PACODIGOANP AS COD_ANP,
  MARCA_PA.MPADESCRICAO AS GRUPO,  
  FAMILIA_PA.FPADESCRICAO AS FAMILIA
  FROM PRODUTOS_ACABADOS P
  LEFT JOIN MARCA_PA ON MARCA_PA.MPACODIGO = P.MPACODIGO 
  LEFT JOIN FAMILIA_PA ON FAMILIA_PA.FPACODIGO = P.FPACODIGO 
