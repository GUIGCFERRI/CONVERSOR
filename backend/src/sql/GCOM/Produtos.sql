SELECT 
       MC_Produtos.Codigo as codigo
      ,MC_Produtos.Produto as descricao
      ,MC_Produtos.NomeCurto as caracteristicas
      ,MC_Produtos.CodBarras as barras
      ,MC_Produtos.Grupo as grupo
      ,MC_Produtos.SubGrupo as familia
      ,MC_Produtos.Unidade as und
      ,cast (MC_Produtos.Data as date) as data_cadastro
      ,MC_Produtos.DataEntrada
      ,MC_Produtos.EstoqueLoja as qtd
      ,MC_Produtos.EstoqueMinino as qtd_ideal
      ,MC_Produtos.Referencia as cod_fabricante
      ,MC_Produtos.NomeForn as fornecedor
      ,MC_Produtos.CustoCaixa as preco_custo
      ,MC_Produtos.PrecoVenda as preco_venda
      ,MC_Produtos.PrecoVendaAtacadoV as preco_atacado
      ,MC_Produtos.MargemLucro as margem_lucro
      ,MC_Produtos.Observacao as observacoes
      ,MC_Produtos.CustoMedio as custo_medio
      ,MC_Produtos.Trb_ICMS_CST as st
      ,MC_Produtos.CEST as personal6
      ,MC_Produtos.NCM as cod_ncm
  FROM GCOM.dbo.MC_Produtos