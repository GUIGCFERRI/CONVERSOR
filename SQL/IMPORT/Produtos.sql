SELECT 
       Produto.CodPro as codigo
      ,Produto.Produto as descricao
      ,Produto.Unidade as und
      ,Fornec.razao as fornecedor
      ,Grupo.Grupo as Grupo
      ,Produto.Categoria as caracteristicas
      ,Produto.Referencia as cod_fabricante
      ,Produto.ClassificacaoFiscal as cod_ncm
      ,Produto.Medio as custo_medio
      ,Produto.Custo as preco_custo
      ,Produto.Preco1 as preco_venda
      ,Produto.Estoque as qtd
      ,Produto.Minimo as qtd_ideal
      ,Produto.Peso as peso
      ,Produto.Situacao as st
      ,cast (Produto.Data as date) as data_cadastro
      ,cast (Produto.Ultima_Compra as date) as ultima_compra
      ,Produto.Obs as observacoes
      ,Produto.CodigoBarras as barras
      ,replace(Produto.CSET,'.','') as personal6
  FROM IMPORT.dbo.Produto
  left join IMPORT.dbo.Fornec on Fornec.CodFor = Produto.Codfor
  left join IMPORT.dbo.Grupo on Grupo.CodGrp = Produto.Codgrp
