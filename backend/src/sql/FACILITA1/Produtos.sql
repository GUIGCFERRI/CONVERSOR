SELECT
I.ITEMSERV_DATA_LANC AS DATA_CADASTRO,
I.ITEMSERV_CODIGO AS CODIGO,
I.ITEMSERV_REFERENCIA AS COD_FABRICANTE,
I.ITEMSERV_NOME AS DESCRICAO,
M.marcaitens_nome AS CARACTERISTICAS,
g.grupoitens_nome as GRUPO,
F.familiaitens_nome AS FAMILIA,
cst.csticms_codigo as ST,
a.aliqicms_aliquota as ELO,
N.ncm_codigo AS COD_NCM,
ce.cest_codigo as PERSONAL6,
om.origemmerc_codigo AS OST,
--I.ITEMSERV_BALANCA_COD_ITEM AS PERSONAL1,  --AJUSTAR QUANDO USAR BALANÇA
cs.classtipoitem_codigo as TIPO_ITEM,
cip.cstipi_codigo as IPI_CODIGO_VENDA,
ai.aliqipi_aliquota as ALIQ_IPI_VENDA,
ap.aliqpis_aliquota as PIS_ALIQ_NOR,
ac.aliqcofins_aliquota as COFINS_ALIQ_NOR,
isg.itemserv_grade_codbarras as BARRAS,
isg.itemserv_grade_codbarras_master as PERSONAL2, ---OUTRO CÓDIGO DE BARRAS
isg.itemserv_grade_qtdesd_ft as QTD,
--isg.itemserv_grade_qtdesd_g_ft as QTD, ---OUTRO CAMPO DE QUANTIDADE
ise.itemserv_empr_pr_unit_ct_vlr_ft as PRECO_CUSTO,
ise.itemserv_empr_ctmed_unit_vlr_ft as CUSTO_MEDIO,
ise.itemserv_empr_margem_lucro as MARGEM_LUCRO,
ise.itemserv_empr_vlr_pr_venda_unit as PRECO_VENDA,
I.ITEMSERV_ANOTACOES AS OBSERVACOES
FROM itemserv I
left join grupoitens g on g.grupoitens_controle = i.grupoitens_controle
left join familiaitens F on F.familiaitens_controle = i.familiaitens_controle
left join marcaitens M on M.marcaitens_controle = i.marcaitens_controle
left join csticms cst on cst.csticms_controle = i.csticms_controle
left join aliqicms a on a.aliqicms_controle = i.aliqicms_controle
left JOIN ncm N on N.ncm_controle = I.ncm_controle
left join cest ce on ce.cest_controle = i.cest_controle
left join origemmerc om on om.origemmerc_controle = i.origemmerc_controle
left join classtipoitem cs on cs.classtipoitem_controle = i.classtipoitem_controle
left join cstipi cip on cip.cstipi_controle = i.cstipi_controle
left join aliqipi ai on ai.aliqipi_controle = i.aliqipi_controle
left join aliqpis ap on ap.aliqpis_controle = i.aliqpis_controle
left join aliqcofins ac on ac.aliqcofins_controle = i.aliqcofins_controle
left join itemserv_grade isg on isg.itemserv_grade_controle = i.itemserv_controle
left join itemserv_empr ise on ise.itemserv_empr_controle = i.itemserv_controle
