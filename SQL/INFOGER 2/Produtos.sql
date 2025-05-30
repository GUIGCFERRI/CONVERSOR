select produto.cd_produto as cod_fabricante,
produto.nm_produto as descricao,
gruprod.nm_gruprod as grupo,
marca.nm_marca as caracteristica,
produto.un_medida as und,
produto.cst_int as st,
produto.pc_preco_venda,
produto.obs as observacoes,
produto.qt_estoque as qtd,
produto.dt_atz as data_cadastro,
PRODUTO_CLASS_FISCAL.nm_class_fiscal as cod_ncm,
fornecedor.nm_fornecedor as fornecedor,
TABELA_PRECO_PRODUTO.preco_venda
from produto
left join gruprod on produto.cd_gruprod = gruprod.cd_gruprod
left join PRODUTO_CLASS_FISCAL on produto.cd_class_fiscal = PRODUTO_CLASS_FISCAL.cd_class_fiscal
left join marca on produto.cd_marca = marca.cd_marca
left join produto_fornecedor on produto.cd_produto = produto_fornecedor.cd_produto
left join fornecedor on produto_fornecedor.cd_fornecedor = fornecedor.cd_fornecedor
left join TABELA_PRECO_PRODUTO on produto.cd_produto = TABELA_PRECO_PRODUTO.cd_produto