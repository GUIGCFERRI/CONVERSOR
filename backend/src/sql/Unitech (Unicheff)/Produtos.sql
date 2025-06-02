SELECT 
  P.ID as CODIGO
, P.Descricao
, P.Unidade as UND
, P.TipoProduto as CARACTERISTICAS
, P.CodigoBarra as BARRAS
, P.CodigoFabrica as COD_FABRICANTE
, P.DataCadastro as DATA_CADASTRO
, P.PrecoCusto as PRECO_CUSTO
, P.PrecoVenda as PRECO_VENDA
, P.LucroDesejado as MARGEM_LUCRO
, P.Estoque as QTD
, P.CodigoNCM as COD_NCM
, P.EstoqueMinimo as QTD_IDEAL
, P.Comissao
, P.InformacaoAdicional1 as OBSERVACOES
, case P.ProdutoAtivo when 'True' then 'Ativo' else 'Inativo' end as SITUACAO
, c.Nome as FORNECEDOR
, gp.Descricao as GRUPO
, mp.Descricao as FAMILIA
, left (frt.SaidCFOP,3) as ELO 
, frt.SaidCSOSN as ST
, frt.SaidCSTIPI as IPI_CODIGO_VENDA
, frt.SaidAliqIPI as ALIQ_IPI_VENDA
, frt.SaidCSTPIS as PIS_CODIGO
, frt.SaidAliqPIS as PIS_ALIQ_NOR
, frt.SaidCSTCOFINS as COFINS_CODIGO
, frt.SaidAliqCofins as COFINS_ALIQ_NOR
, frt.EntCSTIPI as IPI_CODIGO
, frt.EntAliqIPI as ALIQ_IPI
, frt.EntCSTPIS as PISE_CODIGO
, frt.EntAliqPIS as PISE_ALIQ_NOR
, frt.EntCSTCOFINS as COFINSE_CODIGO
, frt.EntAliqCofins as COFINSE_ALIQ_NOR 
FROM produtos p
left join grupo_produtos gp on gp.ID = p.Grupo 
left join marca_produtos mp on mp.ID = p.Marca
left join clientes c on c.ID = p.Fornecedor 
left join fiscal_regra_tributaria frt on FRT.ID = P.RegraTributaria 
