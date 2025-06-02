SELECT 
  p.proId as CODIGO
, p.proCodigo as COD_FABRICANTE
, p.proDescricao as DESCRICAO
, p.proUn as UND
, p.proUnEntrada as UND_COMPRA
, p.proEstoqueMin as QTD_IDEAL
, p.proEstoqueAtual as QTD
, p.proPeso as PESO
, CAST (p.proAplicacao AS VARCHAR (80)) as OBSERVACOES
--, CASE p.proDesativaProd WHEN '0'  THEN 'Ativo' WHEN '-1'  THEN 'Inativo' END as SITUACAO
, p.proCusto as PRECO_CUSTO
, p.proAtacado as PRECO_ATACADO
, p.proVenda as PRECO_VENDA
, p.proVendaPer1 as MARGEM_LUCRO
, p.proComissao as COMISSAO
, p.proPreIpi as ALIQ_IPI
, p.proData as DATA_CADASTRO
, p.proIPPT as IPPT
, p.proNCM as COD_NCM
, p.proCest as PERSONAL6
, p.protItemId as TIPO_ITEM
--, p.proCodCst2 as ST -- DESCOMENTAR ESSA LINHA SE NÃO FOR OPTANTE DO SIMPLES 
, p.proCodCsosn as ST
, p.proAliqIpi as ALIQ_IPI_VENDA
, p.proCstIpi as IPI_CODIGO
, p.proCstPis as PISE_CODIGO
, p.proAliqPis as PISE_ALIQ_NOR
, p.proCstCofins as COFINSE_CODIGO
, p.proAliqCofins as COFINS_ALIQ_NOR
, p.proCstPisSaida as PIS_CODIGO
, p.proCstCofinsSaida as COFINS_CODIGO
, p.proAliqPisSaida as PIS_ALIQ_NOR
, p.proAliqCofinsSaida as COFINS_ALIQ_NOR
, p.proCstIpiSaida as IPI_CODIGO_VENDA
, p.proReferencia as PERSONAL1
, f.fabNome as CARACTERISTICAS
, gp.gdpNome as GRUPO 
, sgp.sgpNome as FAMILIA
, c.cliNome as FORNECEDOR
, MAX(cb.cdbCodigo) as BARRAS 
FROM produto p  
LEFT JOIN fabricante f on f.fabId = p.proFab 
LEFT JOIN codBarras cb on cb.cdbIdProd = p.proId 
LEFT JOIN grupoProd gp on gp.gdpId = p.proGrupo 
LEFT JOIN subGrupoProd sgp ON sgp.sgpId = p.proSubGrupo 
LEFT JOIN cliente c on c.cliId = p.proUltFornec
GROUP BY
--1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33
  p.proId
, p.proCodigo
, p.proDescricao
, p.proUn
, p.proUnEntrada
, p.proEstoqueMin
, p.proEstoqueAtual
, p.proPeso
, CAST (p.proAplicacao AS VARCHAR (80))
, p.proCusto
, p.proAtacado
, p.proVenda
, p.proVendaPer1
, p.proComissao
, p.proPreIpi
, p.proData
, p.proIPPT
, p.proNCM
, p.proCest
, p.protItemId
, p.proCodCsosn
, p.proAliqIpi
, p.proCstIpi
, p.proCstPis
, p.proAliqPis
, p.proCstCofins
, p.proAliqCofins
, p.proCstPisSaida
, p.proCstCofinsSaida
, p.proAliqPisSaida
, p.proAliqCofinsSaida
, p.proCstIpiSaida
, p.proReferencia
, f.fabNome
, gp.gdpNome 
, sgp.sgpNome 
, c.cliNome
