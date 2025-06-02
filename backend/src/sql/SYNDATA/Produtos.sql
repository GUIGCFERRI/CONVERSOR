select produtos.codigo,
grupos.nome_grupo as grupo,
substring(produtos.nome from 1 for 40) as descricao,
produtos.referencia as cod_fabricante,
produtos.preco_cust as preco_custo,
produtos.preco_vend as preco_venda,
tributacao.posicao_ecf as st,
produtos.unidade as und,
produtos.preco_atac as preco_atacado,
produtos.codigo_ncm_ipi as cod_ncm,
produtos_estoque.saldo_atu as qtd
from produtos
left join grupos on produtos.grupo = grupos.codigo
left join tributacao on produtos.cod_tributacao = tributacao.cod_tributacao
left join produtos_estoque on produtos.codigo = produtos_estoque.cod_produto
