SELECT
	  Produtos.CodPrd as codigo
      ,Produtos.CodBar as barras
      ,Produtos.Refer as cod_fabricante
      ,Produtos.Nome as descricao
      ,Produtos.Unid as und
      ,Produtos.NCMS as cod_ncm
      ,Estoque.Custo as preco_custo
      ,Estoque.CustoMed as custo_medio
      ,Estoque.Margem as margem_lucro
      ,estoque.Preco as preco_venda
      ,substring (Produtos.CST, 1,1) as ost
      ,substring (Produtos.CST, 2,3) as st
      ,cast (Produtos.UCompra as date) as ultima_compra
      ,cast (Produtos.UVenda as date) as ultima_venda
      ,Grupos.Nome as grupo
      ,SubGrupos.Nome as familia
      ,Fornecedores.Nome as fornecedor
      ,estoque.Qtde as qtd
  FROM DataPlugSoft.dbo.Produtos
  left join DataPlugSoft.dbo.Fornecedores on fornecedores.CodFrn = Produtos.CodFrn
  left join DataPlugSoft.dbo.Grupos on grupos.CodGrp = Produtos.Grupo
  left join DataPlugSoft.dbo.SubGrupos on subgrupos.Codigo = Produtos.SubGrupo
  left join DataPlugSoft.dbo.Estoque on estoque.CodPrd = Produtos.CodPrd
  order by 1