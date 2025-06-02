SELECT
       --codigoint as codigo
       descn as descricao
      ,CODIGO2 as barras
      ,unip as und
      ,quntidade as qtd
      ,frn as fornecedor
      ,dep as grupo
      ,prt as familia
      ,valor as preco_venda
      ,per as st
      ,cfop as cf
      ,obs as observacoes
      ,codigo as cod_fabricante
      ,cfopt as cod_ncm
      ,nn as personal1
      ,codigoatt as personal2
      ,cast (dn as date) as data_cadastro
      ,cast (den as date) as ultima_compra
  FROM santaflora.dbo.produtos
