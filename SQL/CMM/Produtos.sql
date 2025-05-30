SELECT
       Produtos.CodPro as codigo
      ,Produtos.Produto as descricao
      ,Produtos.CodBar as barras
      ,Produtos.CodUni as und
      ,Produtos.PesoLiquido as peso
      ,Produtos.EstoqueMin as qtd_ideal
      ,estfil.estoque as qtd
      ,Grupos.grupo as grupo
      ,substring (Tributos.tributo,1 ,1) as st
      ,Produtos.PrecoCusto as preco_custo
      ,Produtos.CustoMedio as custo_medio
      ,Produtos.Margem as margem_lucro
      ,Produtos.PrecoVenda as preco_venda
      ,Produtos.PrecoAtacado as preco_atacado
      ,Produtos.Referencia as cod_fabricante
      ,Produtos.NCM as cod_ncm
      ,Produtos.CEST as personal6
      ,cast (Produtos.DataCadastro as date) as data_cadastro
      ,cast (Produtos.UltimaAlteracao as date) as alteracao_preco
  FROM Bancodados.dbo.Produtos
left join Bancodados.dbo.Grupos on grupos.codgru = produtos.CodGru
left join Bancodados.dbo.Tributos on tributos.codtri = produtos.CodTri
left join Bancodados.dbo.EstFil on EstFil.codpro = Produtos.CodPro
