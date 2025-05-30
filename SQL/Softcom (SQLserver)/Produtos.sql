SELECT 
  p.Internal AS CODIGO
, ac1.Descricao AS GRUPO
, ac2.Descricao AS FAMILIA
, SUBSTRING (ai.Descricao , 1, 3) AS ELO
, acf.Codigo AS COD_NCM
--, p.SituacaoTributaria_ID
, p.Descricao
, p.Observacoes
, p.DataInsert AS DATA_CADASTRO
, p.Fabricante AS CARACTERISTICAS
, p.IPI AS ALIQ_IPI_VENDA
, p.Comissao
, p.SitIPI AS IPI_CODIGO_VENDA
, p.sitPIS AS PIS_CODIGO
, p.sitCofins AS COFINS_CODIGO
, p.AliqPIS AS PIS_ALIQ_NOR
, p.AliqCofins AS COFINS_ALIQ_NOR
, p.OrigemMercadoria AS OST
, p.SitICMS AS ST
, af.Razao AS FORNECEDOR
, p.CodigoCEST AS PERSONAL6
, p.QtdePrecoAtacadoAPartirDe AS QTD_PRECO_ATACADO 
, p.CodigoBeneficioFiscal AS CBENEF
, e.Unidade AS UND
, pe.CodigoBarras AS BARRAS
, pe.PrecoVarejo AS PRECO_VENDA
, pe.PrecoAtacado AS PRECO_ATACADO
, pe.EstoqueAtual AS QTD
, pe.EstoqueMinimo AS QTD_IDEAL
, pe.CodigoFabricante AS COD_FABRICANTE
, pe.PrecoCusto AS PRECO_CUSTO
, pe.LucroVarejo AS MARGEM_LUCRO
FROM Automacao.dbo.acProdutos p
left join acClasse1 ac1 on ac1.Internal = p.Classe1_ID 
left join acClasse2 ac2 on ac2.Internal = p.Classe2_ID  
left join acIcms ai on ai.Internal = p.ICMS_ID 
left join acClassificacaoFiscal acf on acf.Internal = p.ClassificacaoFiscal_ID
left join acFornecedores af on af.Internal = p.Fornecedor_ID 
Left Join acProdutosEmbalagens pe on pe.Produto_ID = p.Internal 
Left Join acEmbalagens e on pe.Embalagem_ID = e.Internal 
WHERE p.Ativo = 1