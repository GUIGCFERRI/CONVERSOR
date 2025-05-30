SELECT 
  p.id as CODIGO
, p.numero as BARRAS
, p.filme as DESCRICAO
, p.GRUPO1 as GRUPO
, p.comentario as UND
, FORMAT (p.ESTOQUE, 2, 'pt_BR') as QTD 
, FORMAT (p.custo, 2, 'pt_BR') as PRECO_CUSTO
, FORMAT (p.lpreco, 2, 'pt_BR') as PRECO_VENDA
, p.IPI as ALIQ_IPI_VENDA
, left (p.TRIBUTO, 2) as ELO
, p.CST as ST
, p.ncm as COD_NCM
, case p.Inativo when '0' then 'Ativo' when '1' then 'Inativo' end as SITUACAO  
, p.PesoLiquido as PESO
, p.pis as PIS_ALIQ_NOR
, p.cofins as COFINS_ALIQ_NOR
, p.Parceiro as FORNECEDOR
, p.DataUltimaCompra as ULTIMA_COMPRA
, p.DataUltimaVenda as ULTIMA_VENDA 
, p.cest as PERSONAL6
, p.cstpisentrada as PISE_CODIGO
, p.cstpissaida as PIS_CODIGO
FROM fitas p