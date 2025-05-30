select estoque.[Código Produto] as cod_fabricante,
estoque.[Nome Produto] as descricao,
estoque.[Código Produto] as barras,
estoque.[Quantidade Estoque] as qtd,
estoque.Unidade as und,
estoque.Grupo,
estoque.SubGrupo as familia,
estoque.[Preço Venda] as preco_venda,
estoque.[Preço Compra] as preco_custo,
estoque.Fornecedor,
estoque.[Unidade Compra] as und_compra,
estoque.COD_NCM,
estoque.CST_CSOSN_Venda as st
from estoque





