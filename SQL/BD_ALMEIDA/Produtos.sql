SELECT 
       Produto_Servico.ID as codigo
      ,Produto_Servico.Descricao as descricao
      ,Produto_Servico.Referencia as caracteristicas
      ,Produto_Servico.Fabricante as cod_fabricante
      ,Produto_Servico.Barra as barras
      ,Produto_Estoque.EstoqueIdeal as qtd_ideal
      ,Produto_Estoque.Estoqueatual as qtd
      ,Produto_Servico.NCM as cod_ncm
      ,Imposto_Tributacao.cst as st
      ,Produto_Servico.ValorCompra as preco_custo
      ,Produto_Valor.MargemVenda as margem_lucro
      ,Produto_Valor.ValorVenda as preco_venda
      ,Grupo.descricao as grupo
      ,Produto_Servico.PesoL as peso
  FROM BD_ALMEIDA.dbo.Produto_Servico
left join BD_ALMEIDA.dbo.Produto_Estoque on Produto_Estoque.id_produto = Produto_Servico.ID
left join BD_ALMEIDA.dbo.Produto_Valor on Produto_Valor.ID_Produto = Produto_Servico.ID
left join BD_ALMEIDA.dbo.Grupo on Grupo.ID = Produto_Servico.ID_Grupo
--left join BD_ALMEIDA.dbo.Produto_Fornecedor on Produto_Fornecedor.id_produto = Produto_Servico.ID
left join BD_ALMEIDA.dbo.Produto_Parametro on Produto_Parametro.ID_Produto = Produto_Servico.ID
left join BD_ALMEIDA.dbo.Imposto_Tributacao on Imposto_Tributacao.ID_Imposto = Produto_Parametro.id_imposto
--left join BD_ALMEIDA.dbo.Pessoa on Pessoa.id = Produto_Fornecedor.id_fornecedor
