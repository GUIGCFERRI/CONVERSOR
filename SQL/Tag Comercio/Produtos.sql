SELECT `cad_produtos`.id AS CODIGO,
CAD_PRODUTOS.`nome_produto` AS DESCRICAO,
`cad_produtos`.`cod_barra` AS BARRAS,
`cad_produtos`.`unidade` AS UND,
`cad_produtos`.`inf_adicional` AS OBSERVACOES,
`cad_produtos`.estoque AS QTD,
`cad_produtos`.`vr_compra` AS PRECO_CUSTO,
CAD_PRODUTOS.`vr_venda` AS PRECO_VENDA,
CAD_PRODUTOS.`vr_venda_2` AS PRECO_ATACADO,
cad_produtos_tipo.`nome_tipo` as grupo,
`cad_produtos`.`inf_adicional` as cod_fabricante
from cad_produtos
left join cad_produtos_tipo on cad_produtos.`id_tipo`=`cad_produtos_tipo`.id