select produto.idproduto as codigo,
produto.nome as descricao,
grupo.nome as grupo,
unidade.sigla as und,
classificacao_fiscal.codigo as cod_ncm,
produto.observacao as observacoes,
produto.data_cadastro,
marcas.nome as caracteristicas,
produto.fksituacao_tributaria as st,
fornecedor.nome as fornecedor,
produto.codigo_origem as cod_fabricante,
produto.fkcest as personal6,
produto_complemento.codigo_barras as barras,
produto_complemento.estoque as qtd,
produto_complemento.custo_com_imposto as preco_custo,
produto_complemento.preco_venda,
produto_complemento.preco_atacado
from produto
left join grupo on produto.fkgrupo = grupo.idgrupo
left join unidade on produto.fkunidade = unidade.idunidade
left join marcas on produto.fkmarca = marcas.idmarca
left join fornecedor on produto.fkfornecedor = fornecedor.idfornecedor
left join classificacao_fiscal on produto.fkclassificacao_fiscal = classificacao_fiscal.idclassificacao_fiscal
left join produto_complemento on  produto.idproduto = produto_complemento.fkproduto
where produto_complemento.fkloja = 1