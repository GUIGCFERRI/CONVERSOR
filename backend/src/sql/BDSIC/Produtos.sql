SELECT 
produtos.Pro_seqinterna as codigo,
PRODUTOS.Pro_codigo as cod_fabricante,
produtos.Pro_descricao as descricao,
produtos.Pro_unidade as und,
produtos.Pro_pvenda as preco_venda,
produtos.Pro_csosn as st,
produtos.Pro_saldo as qtd,
cast (produtos.Pro_dtult_compra as date) as ultima_compra,
cast (produtos.Pro_dtult_venda as date) as ultima_venda,
GRUPOS.Gru_descricao as grupo,
Casubgrupos.Cas_descricao as familia,
produtos.Pro_cmedio as custo_medio,
produtos.Pro_clfiscal as cod_ncm,
produtos.pro_cest as personal6,
produtos.Pro_cean as barras
FROM BDSIC.dbo.Produtos,BDSIC.dbo.GRUPOS,BDSIC.dbo.Casubgrupos
WHERE PRODUTOS.Gru_codigo=GRUPOS.Gru_codigo AND
PRODUTOS.Cas_subgrupo=Casubgrupos.Cas_subgrupo
