SELECT 
CD.dscodigo as cod_fabricante,
WSHOP.produto.nmproduto as descricao,
max (WSHOP.CODIGOS.dscodigo) AS BARRAS,
WSHOP.unidade.dssigla AS UND,
WSHOP.pessoas.nmpessoa AS FORNECEDOR,
WSHOP.GRUPO.nmgrupo AS GRUPO,
wshop.Familia.dsfamilia as familia,
(select wshop.estoque.qtestoque from wshop.estoque where wshop.estoque.iddetalhe = wshop.detalhe.iddetalhe order by wshop.estoque.dtreferencia desc limit 1) as qtd,
wshop.detalhe.vlprecocusto as preco_custo,
--(select wshop.estoque.vlCUSTO from wshop.estoque where wshop.estoque.iddetalhe = wshop.detalhe.iddetalhe order by wshop.estoque.dtreferencia desc limit 1) as preco_custo,
(select wshop.estoque.vlCUSTOMEDIO from wshop.estoque where wshop.estoque.iddetalhe = wshop.detalhe.iddetalhe order by wshop.estoque.dtreferencia desc limit 1) as custo_medio,
wshop.detalhe.allucro as margem_lucro,
WSHOP.detalhe.vlprecovenda AS PRECO_VENDA,
wshop.detalhe.cdsituacaooperacao as st,
wshop.produto.dsobservacao as observacoes,
wshop.produto.cdipi as cod_ncm,
WSHOP.PRODUTO.cest AS PERSONAL6,
WSHOP.produto.idproduto as personal4,
wshop.detalhe.iddetalhe as personal5,
cast (wshop.detalhe.dtaltvlprecovenda as date) as alteracao_preco,
case when wshop.produto.STATIVO = 'S' then 'Ativo' else 'Inativo' end as SITUACAO
FROM WSHOP.produto
LEFT JOIN WSHOP.unidade ON WSHOP.produto.idunidade=WSHOP.UNIDADE.idunidade
LEFT JOIN WSHOP.grupo ON wshop.produto.idgrupo=WSHOP.grupo.idgrupo
LEFT JOIN WSHOP.detalhe ON WSHOP.produto.idproduto=WSHOP.detalhe.idproduto
LEFT JOIN WSHOP.pessoas ON WSHOP.produto.idfornecprincipal=WSHOP.PESSOAS.idpessoa
LEFT JOIN WSHOP.familia ON WSHOP.detalhe.idfamilia = WSHOP.FAMILIA.idfamilia
LEFT JOIN WSHOP.CODIGOS ON (WSHOP.produto.idproduto=WSHOP.CODIGOS.idproduto)AND(WSHOP.codigos.tpcodigo LIKE 'EAN%')
LEFT JOIN WSHOP.CODIGOS CD ON (WSHOP.produto.idproduto = CD.idproduto)AND(CD.tpcodigo LIKE 'Chamada%')
LEFT JOIN wshop.estoque ON wshop.estoque.IDDETALHE = WSHOP.DETALHE.IDDETALHE
--where wshop.estoque.iddetalhe = '01000MDH1K'
--where wshop.detalhe.iddetalhe = '01000MDH1K'
where wshop.produto.cdchamada <> '' and produto.cdchamada <> '00000000'
group by 1,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
ORDER BY CD.dscodigo ASC
