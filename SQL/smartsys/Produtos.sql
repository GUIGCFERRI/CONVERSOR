SELECT 
  p.id as CODIGO
  , p.nome as DESCRICAO
  , p.barra as BARRAS
  , uv.sigla as UND
  , uc.sigla as UND_COMPRA
  , FORMAT (p.custo, 2, 'pt_BR') as PRECO_CUSTO  
  , FORMAT (p.venda, 2, 'pt_BR') as PRECO_VENDA
  , FORMAT (p.margem, 2, 'pt_BR') as MARGEM_LUCRO
  , FORMAT (p.preco_atacado, 2, 'pt_BR') as PRECO_ATACADO
  , p.referencia as COD_FABRICANTE 
  , g.nome as GRUPO
  , sg.nome as FAMILIA
  , m.nome as CARACTERISTICAS
  , FORMAT (p.estoque_minimo, 2, 'pt_BR') as QTD_IDEAL
  , FORMAT (p.estoque, 2, 'pt_BR') as QTD
  , p.ncm as COD_NCM
  , p.cest as PERSONAL6
  , p.data_cadastro
  , p.pesagem as PESO
  , p.obs as OBSERVACOES
  , t.origem as OST
  , t.icms as ELO
  , t.cst_piscofins_entrada as PISE_CODIGO
  , t.cst_piscofins_entrada as COFINSE_CODIGO
  , t.cst_piscofins_saida as PIS_CODIGO
  , t.cst_piscofins_saida as COFINS_CODIGO
  , t.aliq_pis_entrada as PISE_ALIQ_NOR
  , t.aliq_cofins_entrada as COFINSE_ALIQ_NOR
  , t.aliq_pis_saida as PIS_ALIQ_NOR
  , t.aliq_cofins_saida as COFINS_ALIQ_NOR
  , t.ipi_perc as ALIQ_IPI_VENDA
--  , t.cst as ST
  , t.csosn as ST 
  , t.cfop as CF
  , CASE when p.inativo = '1' THEN 'Inativo'
  			when p.inativo = '0' THEN 'Ativo'
  				end as Situacao  
  FROM produtos p
left join grupo g on g.id = p.id_grupo and g.id_empresa = p.id_empresa 
left join SUBgrupo sg on sg.id = p.id_subgrupo and sg.id_empresa = p.id_empresa 
left join marca m on m.id = p.id_marca and m.id_empresa = p.id_empresa 
left join und_compra uc on uc.id = p.und_compra 
left join und_venda uv on uv.id  = p.und_venda 
left join tributacao t on t.id = p.id_tributacao and t.id_empresa = p.id_empresa 