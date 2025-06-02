SELECT
  produtos.idProduto as codigo,
  produtos.nome as descricao,
  produtos.codBarras as barras,
  produtos.un as und,
  produtos.descricao as caracteristicas,
  grupo_produtos.descricao as grupo,
  produtos.pesoLiquido as peso,
  produtos.EstoqueMin as qtd_ideal,
  produtos_estoque.estoque as qtd,
  produtos.valCompra as preco_custo,
  produtos.valVenda as preco_venda,
  produtos.cstICMS as st,
  produtos.referencia as cod_fabricante,
  produtos.ncm as cod_ncm,
  produtos.cest as personal6,
  produtos.dtCadastro as data_cadastro,
  produtos.dtAtualizacao as alteracao_preco,
  case when produtos.status = 'A' then 'Ativo' else 'Inativo' end as SITUACAO
from produtos
left join grupo_produtos on grupo_produtos.idgrupoProduto = produtos.idgrupoProduto
left join produtos_estoque on produtos_estoque.idproduto = produtos.idProduto
left join produtos_barras on produtos_estoque.idproduto = produtos.idProduto