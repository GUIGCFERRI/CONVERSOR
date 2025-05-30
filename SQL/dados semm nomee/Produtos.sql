select
    CADASTRO as codigo,
    DESCRICAO,
    UNIDADE as und,
    substring (TRIBUTO_ICMS from 2 for 3) as st,
    REFERENCIA as cod_fabricante,
    PRECO_VENDA,
    PRECO_CUSTO,
    CUSTO_MEDIO,
    ESTOQUE as qtd,
    CLASSIFICACAO_FISCAL as cod_ncm,
    CEST as personal6
from cad_produto
