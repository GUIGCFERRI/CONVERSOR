SELECT 
PRODUTO.Codigo as CODIGO,
PRODUTO.Codigo as COD_FABRICANTE,
Grupo_Produto.Descricao as Grupo,
produto.Codigo_Barra as barras,
produto.nome as descricao,
produto.Preco_Produto as preco_venda,
produto.preco_custo,
produto.cst as st,
produto.unidade as und,
estoque.qtde as qtd,
produto.Observacao as observacoes,
produto.ncm as cod_ncm,
CAST (produto.Data_Cadastro AS DATE) AS DATA_CADASTRO,
replace(Produto_CEST.Codigo_CEST,'.','') as personal6,
case when PRODUTO.INATIVO = 'N' then 'Ativo' else 'Inativo' end as SITUACAO
from SISMOURA.dbo.Produto
left join SISMOURA.dbo.Grupo_Produto on produto.Grupo=Grupo_Produto.Codigo
left join SISMOURA.dbo.produto_cest on produto.Codigo_CEST=produto_cest.Codigo
left join SISMOURA.dbo.Estoque on estoque.produto = PRODUTO.Codigo
where produto.codigo <>'999999' and produto.inativo = 'N' and Estoque.Deposito = '1'
