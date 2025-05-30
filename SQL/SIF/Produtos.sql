SELECT
       Produtos.Pro_CodPro AS CODIGO
      ,Produtos.Pro_CodBarras AS BARRAS
      ,Produtos.Pro_Nome AS DESCRICAO
      ,Produtos.Pro_Un AS UND
      ,Grupos.Gru_Nome AS GRUPO
      ,Fornecedores.For_Razao AS FORNECEDOR
      ,Produtos.Pro_Custo AS PRECO_CUSTO
      ,Produtos.Pro_Venda AS PRECO_VENDA
      ,Produtos.Pro_Quantidade AS QTD
      ,Produtos.Pro_DataCadastro AS DATA_CADASTRO
      ,ProdutosTributos.Ptr_IcmsCST AS ST
      ,Produtos.Pro_DataAlteracao AS ALTERACAO_PRECO
      ,Produtos.Pro_NCM AS COD_NCM
      ,Produtos.pro_CEST AS PERSONAL6
  FROM Sif.dbo.Produtos
  LEFT JOIN Sif.dbo.Grupos ON Grupos.Gru_CodGrupo = Produtos.Pro_Grupo
  LEFT JOIN Sif.dbo.Fornecedores ON Fornecedores.For_CodFor = produtos.Pro_Fornecedor
  LEFT JOIN Sif.dbo.ProdutosTributos ON ProdutosTributos.Ptr_Codigo = Produtos.Pro_Tributo
