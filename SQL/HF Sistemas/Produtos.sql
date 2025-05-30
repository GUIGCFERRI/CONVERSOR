select
  produtos.id as codigo,
  produtos.cod_barras as barras,
  produtos.nome as descricao,
  fornecedores_clientes.nome_razao as fornecedor,
  produtos.unidade as und,
  produtos.peso_liquido as peso,
  grupos.nome as grupo,
  subgrupos.nome as familia,
  produtos.custo_medio as custo_medio,
  produtos.preco_custo as preco_custo,
  produtos.margem as margem_lucro,
  produtos.preco_venda as preco_venda,
  produtos.preco_atacado as preco_atacado,
  produtos.estoque as qtd,
  produtos.estoque_minimo,
  produtos.origem as ost,
  produtos.icms_cst as st,
  produtos.cod_fabricante,
  produtos.ncm as cod_ncm,
  produtos.cest as personal6,
  cast(produtos.data_cadastro as date) as data_cadastro,
  cast(produtos.ultima_alteracao as date) as alteracao_preco
from produtos
left join fornecedores_clientes on fornecedores_clientes.id = produtos.id_fornecedor
left join grupos on grupos.id = produtos.id_grupo
left join subgrupos on subgrupos.id = produtos.id_subgrupo
