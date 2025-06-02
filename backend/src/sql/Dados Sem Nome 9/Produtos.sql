select produto.procodigo as codigo,
produto.pronome as descricao,
produto.probarras as barras,
produto.proreferencia as cod_fabricante,
produto.prounidade as und,
grupo.grunome as grupo,
produto.proestoque as qtd,
produto.procstmedio as custo_medio,
produto.ncmcodigo as cod_ncm,
produto.cescodigo as personal6,
produtoempresa.procusto as preco_custo,
produtoempresa.provalor as preco_venda
from produto
left join grupo on produto.grucodigo =grupo.grucodauto
left join produtoempresa on produto.procodigo = produtoempresa.procodigo
where produto.procodigo>0
order by 1







