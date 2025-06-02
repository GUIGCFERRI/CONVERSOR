SELECT PRODUTOS.a37_cod AS CODIGO,
PRODUTOS.a37_ref AS COD_FABRICANTE,
PRODUTOS.a37_descr AS DESCRICAO,
PRODUTOS.a37_marca AS CARACTERISTICAS,
grupo.a02_nome AS GRUPO,
sgrupo.a03_nome AS FAMILIA,
cadastro.a06_nome AS FONERECEDOR,
PRODUTOS.a37_un AS UND,
tributa.a11_1csosn AS ST,
PRODUTOS.a37_barras AS BARRAS,
PRODUTOS.a37_ncm AS COD_NCM,
PRODUTOS.cest AS PERSONAL6,
saldo.a40_pcomp as preco_custo,
saldo.a40_cmedi as custo_medio,
saldo.a40_preco1 as preco_venda,
saldo.a40_saldo as qtd
from produtos 
left join grupo on produtos.a37_grupo=grupo.a02_codig
left join sgrupo on produtos.a37_sgrup=sgrupo.a03_codig
left join cadastro on produtos.a37_forne=cadastro.a06_codig
left join tributa on produtos.a37_trib1=tributa.a11_cod
left join saldo on produtos.a37_cod=saldo.a40_merca


