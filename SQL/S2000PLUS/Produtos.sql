select produtos.PRD_CODIGO as codigo,
produtos.PRD_NOME as descricao,
produtos.PRD_DTCAD as data_cadastro,
produtos.PRD_CODFAB as cod_fabricante,
produtos.PRD_MARCA as caracteristicas,
produtos.PRD_UNIDADE as und,
produtos.PRD_SITRIBUTARIA as ST,
produtos.PRD_CLASFISC as cod_ncm,
produtos.PRD_VLRCUSTO as preco_custo,
produtos.PRD_CUSTMEDIO as custo_medio,
produtos.PRD_VLRVENDA as preco_venda,
fornecedor.FOR_NOME as fornecedor,
GRPRODUTOS.GRP_NOME as grupo,
produtos.PRD_CEST as personal6,
produtos.PRD_QTDUNIDADE as qtd,
min(codbarra.PRD_CODBARRA) as barras
from produtos
left join fornecedor on produtos.FOR_CODIGO=FORNECEDOR.FOR_CODIGO
left join GRPRODUTOS on (produtos.GRP_NIVEL=GRPRODUTOS.GRP_NIVEL) and (produtos.GRP_GRUPO=GRPRODUTOS.GRP_GRUPO)
left join codbarra on produtos.PRD_CODIGO=codbarra.PRD_CODIGO
group BY 
produtos.PRD_CODIGO,
produtos.PRD_NOME,
produtos.PRD_DTCAD,
produtos.PRD_CODFAB,
produtos.PRD_MARCA,
produtos.PRD_UNIDADE,
produtos.PRD_SITRIBUTARIA,
produtos.PRD_CLASFISC,
produtos.PRD_VLRCUSTO,
produtos.PRD_CUSTMEDIO,
produtos.PRD_VLRVENDA,
fornecedor.FOR_NOME,
GRPRODUTOS.GRP_NOME,
produtos.PRD_CEST,
produtos.PRD_QTDUNIDADE
