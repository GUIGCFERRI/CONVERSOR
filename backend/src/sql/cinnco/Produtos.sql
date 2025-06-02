SELECT tb_cadestoque.CODIGO,
tb_cadncm.ncm as cod_ncm,
tb_cadestoque.codbarras as barras,
tb_cadestoque.descricao,
tb_cadgrupoproduto.descricao as grupo,
tb_cadestoque.medida as und,
tb_cadestoque.datacadastro as data_cadastro,
tb_csosn.codcsosn as st,
tb_estoque_filial.qtd,
tb_estoque_info.preco_custo,
tb_cadestoque.referencia as cod_fabricante,
tb_estoque_info.preco_custo as preco_venda,
tb_cadestoque.ultimacompra as ultima_compra,
tb_cadestoque.ultimavenda as ultima_venda,
tb_cadestoque.customedio as custo_medio,
tb_cadcest.cest as personal6
FROM TB_CADESTOQUE
LEFT JOIN tb_cadncm ON tb_cadestoque.ncm=tb_cadncm.codigo
left join tb_cadgrupoproduto on tb_cadestoque.grupo=tb_cadgrupoproduto.codigo
left join tb_csosn on tb_cadestoque.cstcsosn=tb_csosn.codigo
left join tb_cadcest on tb_cadestoque.codigocest=tb_cadcest.codigo
left join tb_estoque_filial on tb_cadestoque.codigo=tb_estoque_filial.cod_produto
left join tb_estoque_info on tb_cadestoque.codigo=tb_estoque_info.cod_produto
