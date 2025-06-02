SELECT 
       produto.produto_id as codigo
      ,produto.inativo
      ,produto.nome_produto as descricao
      ,substring (produto.ean_principal, 2,14) as barras
      ,unidade_medida.sigla_saida as und
      ,unidade_medida.sigla_entrada as und_compra
      ,grupo.nome_grupo as grupo
      ,subgrupo.nome_subgrupo as familia
      ,pessoa.razao_social as fornecedor
      ,produto.peso as peso
      ,produto.estoque_minimo as qtd_ideal
      ,produto_estoque.quantidade as qtd
      ,substring (produto.cst_saida, 1,1) as ost
      ,substring (produto.cst_saida, 2,3) as st
      ,produto_custo.custo_final as preco_custo
      ,produto.custo_medio as custo_medio
      ,produto_custo.margem_lucro1 as margem_lucro
      ,produto_custo.preco_venda as preco_venda
      ,produto_custo.preco_atacado as preco_atacado
      ,produto.observacao as observacoes
      ,produto.referencia as cod_fabricante
      ,produto.ncm as cod_ncm
      ,produto.cest as personal6
      ,produto.data_cadastro as data_cadastro
      ,produto.data_ultima_alteracao as alteracao_preco
  FROM diamante.dbo.produto
left join diamante.dbo.unidade_medida on unidade_medida.unidade_medida_id = produto.unidade_medida_id
left join diamante.dbo.pessoa on pessoa.pessoa_id = produto.fornecedor_id
left join diamante.dbo.grupo on grupo.grupo_id = produto.grupo_id
left join diamante.dbo.subgrupo on subgrupo.subgrupo_id = produto.subgrupo_id
left join diamante.dbo.produto_custo on produto_custo.produto_id = produto.produto_id
left join diamante.dbo.produto_estoque on produto_estoque.produto_id = produto.produto_id
where produto_estoque.local_estoqueid = '0' and produto.inativo = 'N'