SELECT 
  p.ID as CODIGO
, CASE p.StatusID WHEN '1' THEN 'Ativo' ELSE 'Inativo' END as SITUACAO
, p.CodigoBarras as COD_FABRICANTE
, p.Descricao 
, ue.Abrev as UND_COMPRA
, us.Abrev as UND
, em.Descricao as FAMILIA
, fdt.CstIcms as ST
, fd.CstIpiEntrada as IPI_CODIGO
, fd.AliqIpiEntrada as ALIQ_IPI
, fd.CstIpiSaida as IPI_CODIGO_VENDA
, fd.AliqIpi as ALIQ_IPI_VENDA
, fd.CstPisEntrada as PISE_CODIGO
, fd.AliqPisEntrada as PISE_ALIQ_NOR
, fd.CstPisSaida as PIS_CODIGO
, fd.AliqPis as PIS_ALIQ_NOR
, fd.CstCofinsEntrada as COFINSE_CODIGO
, fd.AliqCofinsEntrada as COFINSE_ALIQ_NOR
, fd.CstCofinsSaida as COFINS_CODIGO
, fd.AliqCofins as COFINS_ALIQ_NOR
, replace (substring (fc.Cfop,1,4),'.','') as ELO
, fc.Cfop as CF
, es.Descricao as FORNECEDOR		
, ec.Descricao as GRUPO				
, p.QtdEstoqueMinimo as QTD_IDEAL
, p.PrecoCusto as PRECO_CUSTO
, p.PrecoVenda as PRECO_VENDA
, p.PesoBruto as PESO
, p.PrecoAtacado as PRECO_ATACADO
, p.QtdAtacado as QTD_PRECO_ATACADO
, p.Markup as MARGEM_LUCRO
, p.QtdEstoqueTotal as QTD
, p.Especificacao as OBSERVACOES
, p.CriadoEm as DATA_CADASTRO
, p.NCM as COD_NCM
, p.Soundex_Descricao as CARACTERISTICAS
, p.PercComissao as COMISSAO
, p.Cest as PERSONAL6
FROM Estoque_Produtos p
LEFT JOIN Estoque_Marcas em on em.ID = p.MarcaID 
LEFT JOIN Uteis_UnidadesDeMedida ue on ue.ID = p.UnidadeMedidaEntradaID 
LEFT JOIN Uteis_UnidadesDeMedida us on us.ID = p.UnidadeMedidaSaidaID 
LEFT JOIN Estoque_Secoes es on es.ID = p.SecaoID 
LEFT JOIN Estoque_Categorias ec on ec.ID = p.CategoriaID --and ec.SecaoID = es.ID
LEFT JOIN Financeiro_Departamentos fd on fd.ID = p.DepartamentoID 
LEFT JOIN Financeiro_Cfop fc on fc.ID = fd.CfopEstadualID  
LEFT JOIN Financeiro_Departamentos_Tributacao fdt on fdt.CfopEstadualID = fc.ID
