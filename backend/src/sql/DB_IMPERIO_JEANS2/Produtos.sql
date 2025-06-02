SELECT 
       Codigo as codigo
      ,Descricao as descricao
      ,Unidade as und
      ,Ref as cod_fabricante
      ,Duentrada as ultima_compra
      ,Dusaida as ultima_venda	
      ,Estmin as qtd_ideal
      ,Cmedio as custo_medio
      ,Custocom as preco_custom
      ,Pbase as preco_venda
      ,Margem as margem_lucro
      ,Nome_reduzido as caracteristica
      ,DATALT as alteracao_preco
      ,DATPRO as data_cadastro
      ,CODBARRA as barras
      ,NCM as cod_ncm
      ,CST as st
      ,SALDO_ESTOQUE as qtd
  FROM DB_IMPERIO_JEANS2.dbo.dbsce033