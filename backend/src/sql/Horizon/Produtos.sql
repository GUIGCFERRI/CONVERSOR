SELECT 
  p.PRD01_COD as CODIGGO
, p.CodBarras as BARRAS
, p.SKU as COD_FABRICANTE
, p.CodFornecedor as PERSONAL1
, p.Produto as DESCRICAO
, p.NCM as COD_NCM
, left (p.CFOP,3) AS ELO
, p.CSOSN as ST
-- , p.CST as ST   --Descomentar caso Regime Normal
, c.Categoria as GRUPO
, p.Fabricante as CARACTERISTICAS
, c2.SubCategoria as FAMILIA 
, p.Peso
, u.Sigla as UND
, FORMAT (p.Custo, 2, 'pt_BR') as PRECO_CUSTO 
, FORMAT (p.Valor, 2, 'pt_BR') as PRECO_VENDA 
, FORMAT (e.SaldoAtual, 2, 'pt_BR') as QTD -- Conferir com revenda se quantidade está certa
-- , CodBalanca
-- , ValorCrediario
FROM prd01 p
left join est01 e on e.Produto = p.PRD01_COD 
left join ctg01 c on C.CTG01_COD = p.Categoria 
left join ctg02 c2 on c2.CTG02_COD = p.SubCategoria 
left join und01 u on u.UND01_COD = p.UnidadeMedida 
