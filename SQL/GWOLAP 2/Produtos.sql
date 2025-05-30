 select produtos.CODPROD as codigo,
produtos.CODTRIB as st,
grupo.DESCRICAO as grupo,
produtos.BARRA as barras,
produtos.UNIDADE as und,
produtos.DESCRICAO,
produtos.ESTOQUE as qtd,
produtos.PRECO_CUST as preco_custo,
produtos.PRECO_UNIT as preco_venda,
produtos.PRECO_MED as custo_medio,
produtos.CODFABRICANTE as cod_fabricante,
familia.DESCRICAO as familia
from produtos
left join grupo on produtos.CODGRUPO = grupo.CODGRUPO
left join PROD_FAMILIA on PRODUTOS.CODPROD = PROD_FAMILIA.CODPROD
left join familia on PROD_FAMILIA.CODFAMILIA = familia.CODFAMILIA 
