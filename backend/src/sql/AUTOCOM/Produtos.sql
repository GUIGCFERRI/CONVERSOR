select
    prod_serv.id as codigo,
    prod_serv.codigo_barras as barras,
    prod_serv.codigo_alternativo as COD_FABRICANTE,
    prod_serv.descricao,
    prod_serv.peso_bruto as PESO,
	prod_serv_emp.quantidade as qtd,
	prod_serv_emp.preco_custo,
	prod_serv_emp.preco_vista as preco_venda,
	prod_serv_emp.custo_medio as CUSTO_MEDIO,
	prod_serv_emp.lucro_vista as MARGEM_LUCRO,
	prod_serv_emp.observacoes,
	case prod_serv_emp.ativo when true then 'Ativo' else 'Inativo' end as SITUACAO,
	prod_serv_emp.perc_comissao_vista as COMISSAO,
	ncm.codigo as cod_ncm,
    cest.codigo as personal6,
	csosn.codigo as st,
--	cst_icms.codigo as ST,		---NÃO OPTANTE DO SIMPLES
	prod_serv_emp.aliq_pis_ent as PISE_ALIQ_NOR,
	pc.codigo as PISE_CODIGO,
	prod_serv_emp.aliq_pis_sai as PIS_ALIQ_NOR,
	pc2.codigo as PIS_CODIGO,
    prod_serv_emp.aliq_cofins_ent as COFINSE_ALIQ_NOR,
	pc3.codigo as COFINSE_CODIGO,
	prod_serv_emp.aliq_cofins_sai as COFINS_ALIQ_NOR, 	
	pc4.codigo as COFINS_CODIGO,
	prod_serv_emp.aliq_ipi as ALIQ_IPI_VENDA, 	
	cst_ipi.codigo as IPI_CODIGO_VENDA,
	cfop.codigo as CF,
	left (cfop.codigo,3) as ELO,
	left (ue.simbolo,3) as UND_COMPRA, 
	left (us.simbolo,3) as UND
from prod_serv
left join prod_serv_emp on prod_serv.id = prod_serv_emp.id_prod_serv
left join csosn on prod_serv_emp.id_csosn = csosn.id
--left join cst_icms on prod_serv_emp.id_cst_icms = cst_icms.id		---NÃO OPTANTE DO SIMPLES
left join cfop on prod_serv_emp.id_cfop = cfop.id
left join cst_ipi on prod_serv_emp.id_cst_ipi = cst_ipi.id
left join cst_pis_cofins pc  on prod_serv_emp.id_cst_pis_ent = pc.id
left join cst_pis_cofins pc2  on prod_serv_emp.id_cst_pis_sai = pc2.id
left join cst_pis_cofins pc3  on prod_serv_emp.id_cst_cofins_ent = pc3.id
left join cst_pis_cofins pc4  on prod_serv_emp.id_cst_cofins_sai = pc4.id
left join unidade ue on prod_serv_emp.id_unidade_ent = ue.id
left join unidade us on prod_serv_emp.id_unidade_ent = us.id
left join ncm on prod_serv.id_ncm = ncm.id
left join cest on prod_serv.id_cest = cest.id
--where prod_serv.id_emp_cad = '2'		--- MUDAR ID CASO UTILIZE MULTILOJAS
