SELECT 
   PRODUTO.id_produto AS COD_FABRICANTE
,  min(produto_sinonimo.codigo_barras) AS BARRAS
,  PRODUTO.nome AS DESCRICAO
,  unidade_medida.sigla AS UND
,  hierarquia_produto.nome AS GRUPO
,  sum(saldo_estoque.quantidade) AS QTD
,  cast(PRODUTO.data_hora_cadastro as DATE) AS CADASTRO
,  PRODUTO.referencia_interna_produto AS COD_FABRICANTE
,  PRODUTO.preco_custo AS PRECO_CUSTO
,  PRODUTO.preco_venda AS PRECO_VENDA
,  substring (regra_tributacao.nome,1,3) as ST
,  REPLACE (PRODUTO.id_ncm, '.' , '') AS COD_NCM
,  CEST.Codigo AS PERSONAL6
FROM HiperPdv.dbo.PRODUTO
LEFT JOIN HiperPdv.dbo.produto_sinonimo ON (PRODUTO.id_produto=produto_sinonimo.id_produto) AND (produto_sinonimo.codigo_barras<>CAST(PRODUTO_SINONIMO.id_produto AS VarChar(20)))
LEFT JOIN HiperPdv.dbo.unidade_medida ON PRODUTO.id_unidade_medida=unidade_medida.id_unidade_medida
LEFT JOIN HiperPdv.dbo.hierarquia_produto ON PRODUTO.id_hierarquia_produto=hierarquia_produto.id_hierarquia_produto
LEFT JOIN HiperPdv.dbo.saldo_estoque ON PRODUTO.id_produto=saldo_estoque.id_produto
LEFT JOIN HiperPdv.dbo.regra_tributacao_produto RTP ON PRODUTO.id_produto=RTP.id_produto
LEFT JOIN HiperPdv.dbo.regra_tributacao on RTP.id_regra_tributacao=regra_tributacao.id_regra_tributacao
LEFT JOIN HiperPdv.dbo.cest ON cest.Id = HiperPdv.dbo.PRODUTO.CestId
group by 
PRODUTO.id_produto,
PRODUTO.nome,
unidade_medida.sigla,
hierarquia_produto.nome,
PRODUTO.data_hora_cadastro,
PRODUTO.referencia_interna_produto,
PRODUTO.preco_custo,
PRODUTO.preco_venda,
regra_tributacao.nome,
PRODUTO.id_ncm, 
saldo_estoque.id_produto,
CEST.Codigo
