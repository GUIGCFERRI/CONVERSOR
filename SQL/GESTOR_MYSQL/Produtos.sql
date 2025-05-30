select  
  produtos.codigo as codigo,
  produtos.codean as barras,
  produtos.dtcadastro as cadastro,
  produtos.nome as descricao,
  produtos.unidade as und,
  grupos.nome as grupo,
  fornecedores.nome as fornecedor,
  produtos.custo as preco_custo,
  produtos.margem as margem_lucro,
  produtos.venda as preco_venda,
  produtos.ncm as cod_ncm,
  produtos.cst as st,
  produtos.obs as observacoes,
  produtos.dtalterado as alteracao_preco,
  produtos.estoque as qtd,
  produtos.customedio as custo_medio,
  produtos.cest as personal6
from produtos
left join grupos on grupos.codigo = produtos.grupo
left join fornecedores on fornecedores.codigo = produtos.fornecedor

