SELECT 
  p.proId as CODIGO
, p.zzz_proCodigo as COD_FABRICANTE
, p.proDescricao as DESCRICAO
, p.proUn as UND
, p.zzz_proEstoqueMin as QTD_IDEAL
, p.zzz_proEstoqueAtual as QTD
, p.proPeso as PESO
, CAST (p.proAplicacao AS VARCHAR (80)) as OBSERVACOES
--, CASE p.zzz_proDesativaProd WHEN '0'  THEN 'Ativo' WHEN '-1'  THEN 'Inativo' END as SITUACAO
, p.zzz_proCusto as PRECO_CUSTO
, p.zzz_proAtacado as PRECO_ATACADO
, p.zzz_proVenda as PRECO_VENDA
, p.proVendaPer1 as MARGEM_LUCRO
, p.proComissao as COMISSAO
, p.zzz_proPreIpi as ALIQ_IPI
, p.proData as DATA_CADASTRO
, p.zzz_proCodigoNCM as COD_NCM
, pc.cesCodigo as PERSONAL6
--, p.zzz_proCodCst2 as ST -- DESCOMENTAR ESSA LINHA SE NÃO FOR OPTANTE DO SIMPLES 
, p.zzz_proCodCsosn as ST
, p.zzz_proIpiPerc as ALIQ_IPI_VENDA
, p.proIpiEnt as IPI_CODIGO
, p.zzz_proPercPis as PISE_ALIQ_NOR
, p.zzz_proPercCofins as COFINS_ALIQ_NOR
, p.zzz_proTipoPISCofins as PIS_CODIGO
, p.zzz_proTipoPISCofins as COFINS_CODIGO
, p.zzz_proPercPis as PIS_ALIQ_NOR
, p.zzz_proPercPis as COFINS_ALIQ_NOR
, p.proIpi as IPI_CODIGO_VENDA
, p.proReferencia as PERSONAL1
, p.proFoodDiaVal as VALIDADE_DIAS
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
LEFT JOIN cliente c on c.cliId = p.proUltimaEntradaFornID
LEFT JOIN proCEST pc on pc.cesId = p.proCestId 
GROUP BY
  p.proId
, p.zzz_proCodigo
, p.proDescricao
, p.proUn
, p.zzz_proEstoqueMin
, p.zzz_proEstoqueAtual
, p.proPeso
, CAST (p.proAplicacao AS VARCHAR (80))
, p.zzz_proCusto
, p.zzz_proAtacado
, p.zzz_proVenda
, p.proVendaPer1
, p.proComissao
, p.zzz_proPreIpi
, p.proData
, p.zzz_proCodigoNCM
, pc.cesCodigo
, p.zzz_proCodCsosn
, p.zzz_proIpiPerc
, p.proIpiEnt
, p.zzz_proPercPis
, p.zzz_proPercCofins
, p.zzz_proTipoPISCofins
, p.zzz_proTipoPISCofins
, p.zzz_proPercPis
, p.zzz_proPercPis
, p.proIpi
, p.proReferencia
, p.proFoodDiaVal
, f.fabNome
, gp.gdpNome 
, sgp.sgpNome 
, c.cliNome
