select produto.`idProduto` as codigo,
produto.`Descricao`,
produto.`EmbEntra` as fat_conv,
produto.`UnidEntra` as und_compra,
produto.`UnidSaida` as und,
produto.custo as preco_custo,
produto_preco.`VENDA1` as preco_venda,
`grupo`.`NOME` as grupo,
`subgrupo`.`Nome` as familia,
produto.`Ean` as barras,
produto.`ClassFiscal` as cod_ncm,
produto_estoque.`estoque_atual` as qtd
from produto
left join grupo on produto.`idGrupo`=grupo.`IDGRUPO`
left join `subgrupo` on `produto`.`idSubGrupo`=`subgrupo`.`id`
left join produto_estoque on produto.`idProduto`=produto_estoque.`idProduto`
left join produto_preco on produto.`idProduto`=produto_preco.`IDPRODUTO`
