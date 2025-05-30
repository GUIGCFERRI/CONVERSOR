select `tec_products`.id as codigo,
`tec_products`.`name` as descricao,
`tec_products`.`price` as preco_venda,
`tec_products`.cost as preco_custo,
`tec_products`.`quantity` as qtd,
`tec_products`.`cProd` as cod_fabricante,
`tec_products`.`cEAN` as barras,
`tec_products`.`uCom` as und
from tec_products


