SELECT 
       C�digo as codigo
      ,Descri��o as descricao
      ,Peso as peso
      ,C�digoBarra as barras
      ,Unidade as und
      ,Saldo as qtd
      ,Pre�oCusto as preco_custo
      ,MLucro as margem_lucro
      ,PAvista as preco_venda
      ,cast (DataCriado as date) as data_cdastro
      ,NCM as cod_ncm
      ,CST as st
      ,FornecedorNome as fornecedor
      ,GrupoNome as grupo
      ,Marca as caracteristicas
      ,cest as personal6
     -- ,Observacoes as observacoes
      ,SubGrupo as familia
  FROM [00345GESTAO119490001].dbo.Produtos
