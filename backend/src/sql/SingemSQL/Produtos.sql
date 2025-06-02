SELECT 
       Produto as Cod_Fabricante
      ,Descricao as Descricao
      ,Custo as Preco_Custo
      ,Preco_Tabela as Preco_Venda
      ,Margem as Margem_Lucro
      ,Referencia as Caracteristicas
      ,Unidade as UND
      ,CF as Cod_NCM
      ,cast (UCompra as date) as Ultima_Compra
      ,DescricaoFornecedor as Fornecedor
      ,DescricaoGrupo as Grupo
      ,ST as ST
      ,Comissao as Comissao
      ,UQuantidade as QTD
      ,cast (UVenda as date) as Ultima_Venda
      ,CEST as Personal6
  FROM SingemSQL.dbo.Cad_Produtos
  where produto <> ''
