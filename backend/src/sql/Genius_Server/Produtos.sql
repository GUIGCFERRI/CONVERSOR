SELECT 
       Produto.proid as codigo
      ,Produto.prodesc as descricao
      ,max (Produto_Barras.probarbarras) as barras
      ,Produto.prodetalhe as caracteristicas
      ,Estoque.estqtd as qtd
      ,Produto.propeso as peso
      --,Grupo.grpdes as grupo
      --,SubGrupo.subgrudesc as familia
      ,Produto.prounidade as und
      ,Produto.procofins as cofins_codigo
      ,Produto.propis as pis_codigo
      --,Produto.procsosn as st
      ,Produto.proicms as st
      ,Produto.provalcusto as preco_custo
      ,Produto.provalmarkup as margem_lucro
      ,max (Produto_Preco.proprecvalor) as preco_venda
      ,max (Produto_Fornecedor.proforref) as cod_fabricante
      ,Produto.proncm as cod_ncm
      ,cast (Produto.prodtahracad as date) as data_cadastro
      ,cast (Produto.prodtaultimacompra as date) as ultima_compra
      ,cast (Produto.prodtahraalt as date) as alteracao_preco
  FROM Genius_Server.dbo.Produto
  left join Genius_Server.dbo.Produto_Barras on Produto_Barras.probarprod = Produto.proid
  left join Genius_Server.dbo.Produto_Preco on Produto_Preco.proprecidpro = Produto.proid
  left join Genius_Server.dbo.Produto_Fornecedor on Produto_Fornecedor.proforid = Produto.proid
  --left join Genius_Server.dbo.SubGrupo on SubGrupo.subgrugru = Produto.prosubgru
  --left join Genius_Server.dbo.Grupo on Grupo.grpid = Produto.progru
  left join Genius_Server.dbo.Estoque on Estoque.estprod = Produto.proid
  group by 
       Produto.proid
      ,Produto.prodesc
      ,Produto.prodetalhe
      ,Estoque.estqtd
      ,Produto.propeso
      --,Grupo.grpdes
      --,SubGrupo.subgrudesc
      ,Produto.prounidade
      ,Produto.procofins
      ,Produto.propis
      ,Produto.proicms
      ,Produto.provalcusto
      ,Produto.provalmarkup
      ,Produto_Fornecedor.proforref
      ,Produto.proncm
      ,Produto.prodtahracad
      ,Produto.prodtaultimacompra
      ,Produto.prodtahraalt
	  ORDER BY Produto.proid ASC
