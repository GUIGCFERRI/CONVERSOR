SELECT 
       PRODUTO.CDPRODUTO as codigo
      ,PRODUTO.DESCRICAO as descricao
      ,max (barra.BARRA) as barras
      ,UNIDADE.DESCRICAO AS UND
      ,UNIDADE.DESCRICAO AS UND_COMPRA
      ,movest.QUANT as qtd
      ,PRODUTO.PESO as peso
      ,produto.marca as familia
      ,categoria.descricao as grupo
      --,SUBCATEGORIA.descricao as familia
      ,FORNECEDOR.NOME as FORNECEDOR
      ,PRODUTO.CUSTO as preco_custo
      ,PRODUTO.MARGEM as margem_lucro
      ,PRODUTO.BASE as preco_venda
      ,PRODUTO.OBSERVACAO as observacoes
      ,PRODUTO.CLASSIFICACAO as cod_ncm
      ,substring (PRODUTO.CST, 1,1) as ost
      ,substring (PRODUTO.CST, 2,3) as st
      ,PRODUTO.CDFAB as cod_fabricante
      ,PRODUTO.OBS as observacoes
      ,PRODUTO.CEST as personal6
  FROM ESystem.dbo.PRODUTO
  left join ESystem.dbo.UNIDADE on ESystem.dbo.UNIDADE.CDUND = produto.UNVENDA
  LEFT join ESystem.dbo.BARRA ON BARRA.CDPRODUTO = PRODUTO.CDPRODUTO
  left join ESystem.dbo.MOVEST on MOVEST.CDPROD = PRODUTO.CDPRODUTO
  left join ESystem.dbo.CATEGORIA on CATEGORIA.cdcat = produto.cdcat
  left join ESystem.dbo.SUBCATEGORIA on SUBCATEGORIA.cdscat = produto.CDSUBCAT
  left join ESystem.dbo.FORNECEDOR on produto.CDFAB = FORNECEDOR.CDFOR
  group by 
       PRODUTO.CDPRODUTO
      ,PRODUTO.DESCRICAO
      ,produto.marca
      ,categoria.descricao
      ,SUBCATEGORIA.descricao
      ,FORNECEDOR.NOME
      ,PRODUTO.BASE
      ,PRODUTO.CDFAB
      ,UNIDADE.DESCRICAO
      ,UNIDADE.DESCRICAO
      ,movest.QUANT
      ,PRODUTO.MARGEM
      ,PRODUTO.CUSTO
      ,PRODUTO.OBSERVACAO
      ,PRODUTO.PESO
      ,PRODUTO.CLASSIFICACAO
      ,PRODUTO.CST
      ,PRODUTO.OBS
      ,PRODUTO.CEST
