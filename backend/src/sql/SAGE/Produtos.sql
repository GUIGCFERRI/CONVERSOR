select produto.CODIGO as cod_fabricante,
produto.DESCRICAO,
GRUPO.DESCRICAO AS GRUPO,
SUBGRUPO.DESCRICAO AS FAMILIA,
produto.descricao as observacoes,
PRODUTO.UNID as und,
produto.sittri2 as st,
produto.valuni as preco_venda,
PRODUTO.DATACAD AS DATA_CADASTRO,
PRODUTO.EAN AS BARRAS,
produto.quant as qtd,
produto.ULTENT as ultima_compra,
produto.ULTSAI as ultima_venda,
produto.precocus as preco_custo,
produto.CLAFIS as cod_ncm,
produto.UNIDENTRADA as und_compra,
produto.CEST as personal6
from produto
LEFT JOIN GRUPO ON PRODUTO.GRUPO=GRUPO.CODIGO
LEFT JOIN SUBGRUPO ON PRODUTO.SUBGRUPO=SUBGRUPO.CODIGO

