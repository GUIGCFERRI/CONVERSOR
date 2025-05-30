SELECT 
  p.codigo
, p.descricao
, p.preco_base as PRECO_VENDA
, p.quantidade as QTD
, p.quantidade_min as QTD_IDEAL
, p.peso
, p.cor
, p.comissao
, p.lucro_produto as MARGEM_LUCRO
, p.custo_compra as PRECO_CUSTO
, p.custo_medio as CUSTO_MEDIO
, p.ultima_compra
, p.ultima_venda
, p.data_cadastro
, p.localizacao as PERSONAL1
, p.codigo_barra as BARRAS
, replace (tc.cest, '.', '') as PERSONAL6
, p.ippt
, p.aliq_cofins as COFINS_ALIQ_NOR
, p.aliq_ipi as ALIQ_IPI_VENDA
, p.aliq_pis as PIS_ALIQ_NOR
, p.referencia as COD_FABRICANTE
--, cod_fabricante --ATIVAR SE NECESSÁRIO
, p.origem as OST
, gp.descricao as GRUPO
, u.sigla as UND
, p.aplicacao as OBSERVACOES
, n.ncm as COD_NCM
, cc.cod_cst as COFINSE_CODIGO
, ci.cod_cst as IPI_CODIGO
, cp.cod_cst as PISE_CODIGO
, ccs.cod_cst as ST
, cps.cod_cst as PIS_CODIGO
, cfs.cod_cst as COFINS_CODIGO
, cis.cod_cst as IPI_CODIGO_VENDA
, p.aliq_icms as ELO
, c.cfop as CF
, CASE p.ativo
  	WHEN true THEN 'Ativo'
 	 WHEN false THEN 'Inativo'
	 end 
	 as SITUACAO
FROM produto p
left join tab_cest tc on tc.codigo = p.codigo_cest 
left join grupo_produto gp on gp.codigo = p.grupo 
left join unidade u on u.codigo = p.unidade 
left join ncm n on n.codigo = p.ncm 
left join cst cc on cc.codigo = p.cst_cofins 
left join cst ci on ci.codigo = p.cst_ipi
left join cst cp on cp.codigo = p.cst_pis
left join cst ccs on ccs.codigo = p.cst_csosn
left join cst cps on cps.codigo =  p.cst_pis_saida
left join cst cfs on cfs.codigo = p.cst_cofins_saida
left join cst cis on cis.codigo = p.cst_ipi_saida
left join cfop c on c.codigo = p.stcfopuf
