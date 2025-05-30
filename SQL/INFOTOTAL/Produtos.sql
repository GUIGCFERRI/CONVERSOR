SELECT
       TOTAL_PRODUTO.idProduto as codigo
      ,TOTAL_PRODUTO.descricao
      ,max (TOTAL_CODIGO_BARRAS.codigoBarras) as barras
      ,min (TOTAL_CODIGO_BARRAS.codigoBarras) as cod_fabricante
      ,TOTAL_UNIDADE.un as und
      ,TOTAL_PRODUTO.peso
      ,TOTAL_ESTOQUE.qtdeDeposito as qtd
      ,TOTAL_GRUPO.descricao as grupo
      ,TOTAL_SUBGRUPO.descricao as familia
      ,TOTAL_ESTOQUE.precoCompra as preco_custo
      ,TOTAL_ESTOQUE.margemLucro as margem_lucro
      ,TOTAL_ESTOQUE.precoVenda as preco_venda
      ,TOTAL_PRODUTO.icmsOrigem as ost
      ,TOTAL_PRODUTO.cst as st
      ,TOTAL_PRODUTO.cfop as cf
      ,TOTAL_PRODUTO.ncm as cod_ncm
      ,TOTAL_PRODUTO.cest as personal6
      ,cast (TOTAL_PRODUTO.dataAtualizacao as date) alteracao_preco
      ,cast (TOTAL_PRODUTO.dataCadastro as date) as data_cadastro
  FROM food.dbo.TOTAL_PRODUTO
left join food.dbo.TOTAL_UNIDADE on TOTAL_UNIDADE.idunidade = TOTAL_PRODUTO.idUnidade 
left join food.dbo.TOTAL_SUBGRUPO on TOTAL_SUBGRUPO.idSubgrupo = TOTAL_PRODUTO.idSubgrupo
left join food.dbo.TOTAL_GRUPO on TOTAL_GRUPO.idgrupo = TOTAL_SUBGRUPO.idgrupo
left join food.dbo.TOTAL_ESTOQUE on TOTAL_ESTOQUE.idproduto = TOTAL_PRODUTO.idProduto
left join food.dbo.TOTAL_CODIGO_BARRAS on TOTAL_CODIGO_BARRAS.idproduto = TOTAL_PRODUTO.idProduto
group by 
       TOTAL_PRODUTO.idProduto
      ,TOTAL_PRODUTO.descricao
      ,TOTAL_UNIDADE.un
      ,TOTAL_PRODUTO.peso
      ,TOTAL_ESTOQUE.qtdeDeposito
      ,TOTAL_GRUPO.descricao
      ,TOTAL_SUBGRUPO.descricao
      ,TOTAL_ESTOQUE.precoCompra
      ,TOTAL_ESTOQUE.margemLucro
      ,TOTAL_ESTOQUE.precoVenda
      ,TOTAL_PRODUTO.icmsOrigem
      ,TOTAL_PRODUTO.cst
      ,TOTAL_PRODUTO.cfop
      ,TOTAL_PRODUTO.ncm
      ,TOTAL_PRODUTO.cest
      ,TOTAL_PRODUTO.dataAtualizacao
      ,TOTAL_PRODUTO.dataCadastro