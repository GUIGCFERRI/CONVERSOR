SELECT
       sequencia as codigo
      ,Grupo as grupo
      ,Fornecedor
      ,descricao
      ,codbarras as barras
      ,cod_ncm
      ,cod_cest as personal6
      ,custo as preco_custo
      ,margem as margem_lucro
      ,venda as preco_venda
      ,Referencia as cod_fabricante
      ,unidade as und
      ,qtd as qtd
  FROM DB_Frente.dbo.Produtos
