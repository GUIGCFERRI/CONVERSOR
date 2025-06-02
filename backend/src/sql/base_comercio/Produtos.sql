select produto.`cProd_prod` as codigo,
produto.`cEAN_prod` as barras,
produto.`xProd_prod` as descricao,
produto.`NCM_prod` as cod_ncm,
produto.`CEST_prod` as personal6,
`unidade_medida`.`sigla_unidade` as und,
produto.`precoCusto` as preco_custo,
produto.`precoVenda` as preco_venda,
produto.qtd,
produto.`orig_prod` as ost,
produto.`CSOSN` as st,
`grupoproduto`.`nomeGrupo` as grupo
from produto
left join `unidade_medida` on produto.`unidade_prod`=`unidade_medida`.`id_unidade`
left join `grupoproduto` on produto.`idGrupoProduto`=`grupoproduto`.`idGrupoProduto`
