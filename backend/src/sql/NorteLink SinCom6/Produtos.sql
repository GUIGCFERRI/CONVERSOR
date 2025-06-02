SELECT 
  e.codigo
, e.codbarra as BARRAS
, e.datacad as DATA_CADASTRO
, e.descricao
, e.unidade as UND
, e.pesobr as PESO
, fo.nome as FORNECEDOR
, tt.icms_dentro_pj as ELO
--, tt.cst_pj_dentro as ST --- >>> AJUSTAR CASO NÃO OPTANTE DO SIMPLES
, tt.csosn as ST
, e.comissao
, cu.prccusto as PRECO_CUSTO
, e.pr_venda as PRECO_VENDA
, COALESCE(ef.estreal, 0::double precision) as QTD
, case e.status when 'A' then 'Ativo' else 'Inativo' END as SITUACAO
, e.quantfracao as FAT_CONV
, e.classific as PERSONAL2
, e.cod_ncm
, e.cod_cest as PERSONAL6
, e.ipi_compra as ALIQ_IPI
, e.ipi_venda as ALIQ_IPI_VENDA
, e.valiq_pis as PIS_ALIQ_NOR
, e.valiq_cofins as COFINS_ALIQ_NOR
, e.cst_ipi_entrada as IPI_CODIGO
, e.cst_ipi_saida as IPI_CODIGO_VENDA
, tp.cst as COFINS_CODIGO
, tp.cst as PIS_CODIGO
, b.descricao as CARACTERISTICAS
, m.familia_nome as FAMILIA
, ef.localizacao as PERSONAL1
FROM estoque e
     LEFT JOIN fabricantes b ON b.codigo = e.fabrica
     LEFT JOIN produtos_familia m ON m.idfamilia = e.idfamilia
     CROSS JOIN lojas f
     LEFT JOIN estoqfil ef ON ef.produto = e.codigo AND ef.filial = f.codigo
	 LEFT JOIN fornecedores fo on fo.codigo = e.fornecedor  
	 LEFT JOIN tab_piscofins tp on tp.idtabtrib2 = e.idtabtrib2
	 LEFT JOIN tabela_trib tt on tt.idtabtrib = e.idtabtrib 
	 LEFT JOIN estoqfil cu ON cu.produto = e.codigo
-- where f.codigo = 0 --- >>> ATIVAR E AJUSTAR CASO TENHA MULTILOJA 
