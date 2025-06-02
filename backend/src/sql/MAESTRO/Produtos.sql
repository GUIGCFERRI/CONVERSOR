SELECT cmr_Produto.prd_Codigo as codigo,
cmr_Produto_Barra.pbr_Codigo as barras,
cmr_Produto.prd_Descricao as descricao,
cmr_Produto.prd_Modelo as caracteristicas,
cmr_Unidade.und_Sigla as und_compra,
cmr_Produto.prd_Fator_Conversao as fat_conv,
cmr_Unidade.und_Sigla as und,
cmr_Produto_Estoque.pre_Estoque_Real as qtd,
cmr_Produto_Estoque.pre_Estoque_Minimo as qtd_ideal,
cmr_Produto_Valor.pdv_Custo_Compra as preco_custo,
cmr_Produto_Valor.pdv_Custo_Medio as custo_medio,
cmr_Produto.prd_Preco_Venda as preco_venda,
cmr_csosn.csn_Classificacao as st
from cmr_Produto
left join cmr_Unidade on cmr_Unidade.und_Codigo = cmr_Produto.prd_und_Codigo_Compra 
left join cmr_Produto_Barra on cmr_Produto_Barra.pbr_prd_Codigo = cmr_Produto.prd_Codigo
left join cmr_Produto_Estoque on cmr_Produto_Estoque.pre_prd_Codigo = cmr_Produto.prd_Codigo
left join cmr_Produto_Valor on cmr_Produto_Valor .pdv_prd_Codigo = cmr_Produto.prd_Codigo
left join cmr_CSOSN on cmr_CSOSN.csn_Codigo = cmr_produto.prd_trb_Codigo
