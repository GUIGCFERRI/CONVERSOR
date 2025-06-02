select
    produto.produto_codigo as codigo,
    produto.produto_nome as descricao,
    produto.produto_codinterno as cod_fabricante,
    produto.produto_codbarras as barras,
    produto.produto_unidade as und,
    produto.produto_estoquemin as qtd_ideal,
    produto.produto_observacao as observacoes,
    produto.produto_precocusto as preco_custo,
    produto.produto_precoavista as preco_venda,
    produto.produto_quantidade as qtd,
    produto.produto_situacaotrib as st,
    produto.produto_ncm as cod_ncm,
    produto.produto_data as data_cadastro,
    produto.produto_dataatualizacao as alteracao_preco,
    produto.produto_cest as personal6
from produto
order by produto.produto_nome asc