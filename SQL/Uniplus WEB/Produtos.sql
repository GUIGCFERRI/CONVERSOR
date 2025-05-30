select 
produto.codigo as codigo,
PRODUTO.referencia AS Personal2,
PRODUTO.ean AS BARRAS,
PRODUTO.NOME AS DESCRICAO,
ENTIDADE.nome AS FORNECEDOR,
PRODUTO.unidademedida AS UND,
PRODUTO.PRECO AS PRECO_VENDA,
PRODUTO.precopauta1 AS PRECO_ATACADO,
PRODUTO.quantidadepauta1 AS QTD_PRECO_ATACADO,
PRODUTO.precocusto AS PRECO_CUSTO,
PRODUTO.customedio AS CUSTO_MEDIO,
--PRODUTO.situacaotributaria AS ST,
PRODUTO.situacaotributariasn AS ST,
PRODUTO.observacao AS OBSERVACOES,
hierarquia.nome AS GRUPO,
familiaproduto.nome as familia,
cast (PRODUTO.datacadastro as date) AS DATA_CADASTRO,
PRODUTO.dataultimavenda AS ULTIMA_VENDA,
PRODUTO.dataultimacompra AS ULTIMA_COMPRA,
PRODUTO.NCM AS COD_NCM,
PRODUTO.referencia AS cod_fabricante,
PRODUTO.CEST AS PERSONAL6,
PRODUTO.origem as ost,
PRODUTO.tipoproduto AS PERSONAL1,
produto.ippt,
max (saldoestoque.quantidade) as qtd
FROM PRODUTO
LEFT JOIN ENTIDADE ON PRODUTO.idfornecedor=entidade.ID
LEFT JOIN hierarquia ON PRODUTO.idhierarquia=hierarquia.ID
left join saldoestoque on produto.id=saldoestoque.idproduto and saldoestoque.idfilial = '3' -- AJUSTAR A EMPRESA
left join familiaproduto on familiaproduto.id = idfamilia
where produto.codigo <> '01'
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
order by produto.codigo asc
