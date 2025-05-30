SELECT 
       Produto.codigo as codigo
      ,Produto.desc_compl as descricao
      ,Produto.grupo as grupo
      ,Produto.subgrupo as familia
      ,Produto.cod_barras as barras
      --,codbarras2
      ,Produto.fabricante as cod_fabricante
      ,unidade.sigla as und_compra
      ,unidade.sigla as und
      ,Produto.estoque as qtd
      ,Produto.est_min as qtd_ideal
      ,Produto.custo_medio as custo_medio
      ,Produto.custo_liq as preco_custo
      ,Produto.preco as preco_venda
      ,Produto.lucro as margem_lucro
      ,Produto.peso as peso
      ,Produto.ncm as cod_ncm
      ,Produto.obs as observacoes
      ,substring (Produto.cst,1,1) as ost
      ,substring (Produto.cst,2,3) as st
      ,cast (Produto.data_cadastro as date) as data_cadastro
      ,cast (Produto.data_alteracao as date) as alteracao_preco
      ,Produto.cest as personal6
  FROM SGI.dbo.Produto
  left join SGI.dbo.Unidade on unidade.codigo = Produto.unidiv
