SELECT 
       PRODUTO.PRO_Codigo as codigo
      ,PRODUTO.PRO_Cod_Barra as barras
      ,PRODUTO.PRO_Descricao as descricao
      ,PRODUTO.PRO_Vlr_CustoFabrica as preco_custo
      ,PRODUTO.PRO_Vlr_Venda as preco_venda
      ,PRODUTO.PRO_Vlr_CustoMedio as custo_medio
      ,cast (PRODUTO.PRO_DataCadastro as date) as data_cadastro
      ,cast (PRODUTO.PRO_DataAlteracao as date) as alteracao_preco
      ,PRODUTO.PRO_Pct_Lucro as margem_lucro
      ,PRODUTO.PRO_Estoque_Minimo as qtd_ideal
      ,PRODUTO.PRO_Estoque_Atual as qtd
      ,PRODUTO.PRO_Referencia as cod_fabricante
      ,UNIDADE_MEDIDA.UNI_Sigla as und
      ,PRODUTO.PRO_CodigoNCM as cod_ncm
      ,PRODUTO.STICMS_Codigo as st 
      ,PRODUTO.PRO_Cest as personal6
  FROM FACIL.dbo.PRODUTO
  left join FACIL.dbo.UNIDADE_MEDIDA on UNIDADE_MEDIDA.UNI_Codigo = PRODUTO.UNI_Codigo