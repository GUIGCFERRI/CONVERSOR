SELECT
  p.CODIGO
, u.nome as UND
, p.GTIN as BARRAS
, p.CODIGO_INTERNO as COD_FABRICANTE
, p.NOME as DESCRICAO
, p.VALOR_CUSTO as PRECO_CUSTO
, p.VALOR_VENDA as PRECO_VENDA
, p.QTD_ESTOQUE as QTD
, p.ESTOQUE_MIN as QTD_IDEAL
, p.IPPT
, p.NCM as COD_NCM
, g.nm_grupo as GRUPO
, sg.nm_subgr as FAMILIA
, f.nm_fabri as CARACTERISTICAS
, REPLACE(p.NU_CEST,'.','') as PERSONAL6
, t.taxa_icms as ELO
, substring (t.cst from 1 for 1) as OST
, substring (t.cst from 2 for 3) as ST
FROM produto p
left join unidade_produto u on u.id = p.id_unidade_produto
left join spcd_grupo g on g.codigo = p.cod_spcd_grupo
left join spcd_subgr sg on sg.codigo = p.cod_spcd_subgr
left join spcd_fabri f on f.codigo = p.cod_spcd_fabri
left join ecf_tributo_produto t on t.id = p.id_ecf_tributos
