select 
produto.codigo as COD_FABRICANTE,
produto.codigo AS codigo,
PRODUTO.ean AS BARRAS,
PRODUTO.NOME AS DESCRICAO,
ENTIDADE.nome AS FORNECEDOR,
PRODUTO.unidademedida AS UND,
PRODUTO.PRECO AS PRECO_VENDA,
PRODUTO.precocusto AS PRECO_CUSTO,
PRODUTO.customedio AS CUSTO_MEDIO,
PRODUTO.situacaotributaria AS ST,
--PRODUTO.tributacao AS ST,
PRODUTO.observacao AS OBSERVACOES,
hierarquia.nome AS GRUPO,
familiaproduto.nome as familia,
cast (PRODUTO.datacadastro as date) AS DATA_CADASTRO,
PRODUTO.dataultimavenda AS ULTIMA_VENDA,
PRODUTO.dataultimacompra AS ULTIMA_COMPRA,
PRODUTO.NCM AS COD_NCM,
PRODUTO.referencia AS cod_fabricante,
--PRODUTO.referencia AS Personal2,
PRODUTO.CEST AS PERSONAL6,
saldoestoque.quantidade as qtd
FROM PRODUTO
LEFT JOIN ENTIDADE ON PRODUTO.idfornecedor=entidade.ID
LEFT JOIN hierarquia ON PRODUTO.idhierarquia=hierarquia.ID
left join saldoestoque on produto.id=saldoestoque.idproduto
left join familiaproduto on familiaproduto.id = idfamilia
order by produto.codigo asc
