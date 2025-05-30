SELECT 
   PRODUTO.id_produto AS CODIGO
,  max(produto_sinonimo.codigo_barras) AS BARRAS
,  PRODUTO.nome AS DESCRICAO
,  unidade_medida.sigla AS UND
,  hierarquia_produto.nome AS GRUPO
,  (select top (1) saldo_estoque.quantidade from Hiper.dbo.saldo_estoque where saldo_estoque.id_produto = PRODUTO.id_produto order by id_variacao desc) as qtd
,  cast(PRODUTO.data_hora_cadastro as DATE) AS CADASTRO
,  PRODUTO.referencia_interna_produto AS COD_FABRICANTE
,  PRODUTO.preco_custo AS PRECO_CUSTO
,  PRODUTO.preco_venda AS PRECO_VENDA
,  regra_tributacao_icms_personalizada.id_situacao_tributaria_simples_nacional as ST
,  REPLACE (PRODUTO.id_ncm, '.' , '') AS COD_NCM
,  CEST.Codigo AS PERSONAL6
FROM Hiper.dbo.PRODUTO
LEFT JOIN Hiper.dbo.produto_sinonimo ON (PRODUTO.id_produto=produto_sinonimo.id_produto) AND (produto_sinonimo.codigo_barras<>CAST(PRODUTO_SINONIMO.id_produto AS VarChar(20)))
LEFT JOIN Hiper.dbo.unidade_medida ON PRODUTO.id_unidade_medida=unidade_medida.id_unidade_medida
LEFT JOIN Hiper.dbo.hierarquia_produto ON PRODUTO.id_hierarquia_produto=hierarquia_produto.id_hierarquia_produto
LEFT JOIN Hiper.dbo.saldo_estoque ON PRODUTO.id_produto=saldo_estoque.id_produto
LEFT JOIN Hiper.dbo.regra_tributacao_icms_personalizada ON regra_tributacao_icms_personalizada.id_produto = PRODUTO.id_produto
LEFT JOIN Hiper.dbo.cest ON cest.Id = Hiper.dbo.PRODUTO.CestId
group by 
PRODUTO.id_produto,
PRODUTO.nome,
unidade_medida.sigla,
hierarquia_produto.nome,
PRODUTO.data_hora_cadastro,
PRODUTO.referencia_interna_produto,
PRODUTO.preco_custo,
PRODUTO.preco_venda,
regra_tributacao_icms_personalizada.id_situacao_tributaria_simples_nacional,
PRODUTO.id_ncm, 
saldo_estoque.id_produto,
CEST.Codigo
