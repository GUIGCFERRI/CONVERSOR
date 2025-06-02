select produto.produtoid as codigo,
produto.`unidadeVenda` as und,
produto.produtoGrupo as grupo,
produto.`codBarras` as barras,
produto.`produtoNome` as descricao,
produto.ncm as cod_ncm,
produto.cest as personal6,
produto.`precoCusto` as preco_custo,
produto.`precoVenda` as preco_venda,
produto.`csosn` as st
from produto
