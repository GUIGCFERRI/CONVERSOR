SELECT 
  codpro AS COD_FABRICANTE,
  numfab AS BARRAS,
  nompro AS DESCRICAO,
  unipro AS UND,
  unipro AS UND_COMPRA,  -- Como a tabela não tem um campo específico para UND_COMPRA, estou utilizando unipro
  nomgru AS FAMILIA, 
  nomgru AS GRUPO,  -- Mesmo caso de FAMILIA, utilizando o campo nomgru
  nommar AS CARACTERISTICAS,  -- Campo "obs" como CARACTERISTICAS
  nomfor AS FORNECEDOR, 
  pesobruto AS PESO,  -- Utilizando pesobruto como peso
  estatu AS QTD,  
  qtdini AS QTD_INICIAL,  -- Tentei usar qtdini, que pode ser a quantidade inicial
  precusmed AS CUSTO_MEDIO, 
  precus AS PRECO_CUSTO, 
  taxluc AS MARGEM_LUCRO,  -- Estou considerando mararb como margem de lucro
  preven AS PRECO_VENDA, 
  prepro AS PRECO_ATACADO, 
  sittri AS OST,  -- Alterei para sittri como substituto para "OST"
  codsit_s AS ST, 
  datini AS DATA_CADASTRO,  -- Campo datini, que é a data de início
  codncm AS COD_NCM,
  codcest AS COD_CEST
FROM public.arqest;
