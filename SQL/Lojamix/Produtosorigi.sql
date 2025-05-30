SELECT
       produto.id_produto as codigo
      ,min (produto_sinonimo.codigo_barras) as cod_fabricante
	  ,max (produto_sinonimo.codigo_barras) as barras
      ,produto.nome as descricao
      ,saldo_estoque.quantidade as qtd
      ,situacao_tributaria_simples_nacional.codigo_situacao_operacao_simples_nacional as st
      ,entidade.nome as fornecedor
      ,hierarquia_produto.nome as grupo
      ,marca_produto.nome as familia
      ,unidade_medida.sigla as und
      ,cast (produto.data_hora_cadastro as date) as data_cadastro
      ,cast (produto.data_hora_alteracao as date) as alteracao_preco
      ,produto.referencia_interna_produto as observacoes
      ,produto.preco_custo as preco_custo
      ,produto.preco_venda as preco_venda
      ,produto.preco_venda_atacado as preco_atacado
      ,replace(produto.id_ncm,'.','') as cod_ncm
      ,produto.cest as personal6
  FROM Lojamix.dbo.produto
  left join Lojamix.dbo.produto_sinonimo on produto_sinonimo.id_produto = produto.id_produto
  left join Lojamix.dbo.saldo_estoque on saldo_estoque.id_produto = produto.id_produto
  left join Lojamix.dbo.situacao_tributaria_simples_nacional on situacao_tributaria_simples_nacional.id_situacao_tributaria_simples_nacional = produto.situacao
  left join Lojamix.dbo.marca_produto on marca_produto.id_marca_produto = produto.id_marca_produto 
  left join Lojamix.dbo.unidade_medida on unidade_medida.id_unidade_medida = produto.id_unidade_medida
  left join Lojamix.dbo.entidade on entidade.id_entidade = produto.id_entidade_fornecedor
  left join Lojamix.dbo.hierarquia_produto on hierarquia_produto.id_hierarquia_produto = produto.id_hierarquia_produto
  group by
       produto.id_produto
      ,produto.nome
      ,saldo_estoque.quantidade 
      ,situacao_tributaria_simples_nacional.codigo_situacao_operacao_simples_nacional
      ,hierarquia_produto.nome 
      ,marca_produto.nome 
      ,entidade.nome
      ,unidade_medida.sigla 
      ,produto.situacao
      ,produto.id_entidade_fornecedor
      ,produto.id_marca_produto
      ,produto.id_unidade_medida
      ,produto.data_hora_cadastro
      ,produto.data_hora_alteracao
      ,produto.referencia_interna_produto
      ,produto.preco_custo
      ,produto.preco_venda
      ,produto.preco_venda_atacado
      ,produto.id_ncm
      ,produto.cest
