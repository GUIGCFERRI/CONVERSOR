select
  produto.referencia as cod_fabricante,
  produto.descricao as descricao,
  unidade.mnemonicoant as und,
  produto.DataCadastro as data_cadastro,
  produtoestoque.QEstoqueAtual as qtd,
  produto.NCM as cod_ncm,
  produto.codigoBarras as barras,
  produto.cest as personal6,
  produto.valorUnitario as preco_venda,
  produto.valorCusto as preco_custo,
  produto.pesoLiquido as peso,
  produto.Observacao as observacoes
from produto 
left join unidade on unidade.sr_recno = produto.IDUnidade
left join produtoestoque on produtoestoque.idproduto = produto.codigo
where produtoestoque.idestoque = '1' and produto.IDEmpresa = '1'
