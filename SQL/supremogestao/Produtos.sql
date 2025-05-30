SELECT 
artigo1.codart AS CODIGO,
artigo1.CODBARRA AS BARRAS,
ARTIGO1.descricao,
u.abreviacao as und,
g.descricao as grupo,
f.razao as fornecedor,
artigo2.estoque as qtd,
artprecos.custo as preco_custo,
artprecos.customedio as custo_medio,
artprecos.preco1 as preco_venda,
ARTIGO1.observacao AS observacoes,
ARTIGO1.codfab AS COD_FABRICANTE,
ncm.ncm as cod_ncm,
CEST.cest AS PERSONAL6
from artigo1
left join cest on artigo1.codcest=cest.codcest
left join artigo2 on artigo1.codart=artigo2.codart
left join artprecos on artigo1.codart=artprecos.codart and artprecos.codfilial = '1'
left join ncm on ncm.codncm = artigo1.codncm
left join tabunidade u on artigo1.codunidade = u.codunidade
left join fornec f on artigo1.codfor = f.codfor
left join grupo g on artigo1.codgrupo = g.codgrupo
where artigo1.codart>0 and artigo2.codfilial = '1' 