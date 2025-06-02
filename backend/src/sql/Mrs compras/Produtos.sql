select
    produtos.codigo as codigo,
    produtos.descricao as descricao,
    substring (produtos.codigo_barras, 2,20) as barras,
    produtos.embalagem2 as und,
    produtos.embalagem3 as und_compra,
    fornecedores.razao_social as fornecedor,
    grupos.nome as grupo,
    familias.nome as familia,
    produtos.estoque as qtd,
    produtos.estoquemin as qtd_ideal,
    produtos.margem as margem_lucro,
    produtos.precovenda as preco_venda,
    produtos.preco_custo_un_nf as preco_custo,
    produtos.cst as st,
    produtos.data_ultima_entrada as ultima_compra, 
    produtos.data_ultima_venda as ultima_venda,
    produtos.data_cadastro as data_cadastro,
    produtos.ncm as cod_ncm,
    produtos.cest as personal6
from produtos
left join grupos on grupos.codigo = produtos.grupo
left join familias on familias.codigo = produtos.familia
left join fornecedores on fornecedores.codigo = produtos.fornecedor