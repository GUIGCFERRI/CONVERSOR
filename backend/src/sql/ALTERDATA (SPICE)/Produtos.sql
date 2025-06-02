SELECT 
max (CD.dscodigo) as cod_fabricante,
WSHOP.produto.cdchamada as codigo,
WSHOP.produto.nmproduto as descricao,
wshop.produto.dsobservacao as observacoes,
wshop.produto.cdipi as cod_ncm,
WSHOP.PRODUTO.cest AS PERSONAL6,
case when wshop.produto.STATIVO = 'S' then 'Ativo' else 'Inativo' end as SITUACAO,
WSHOP.unidade.dssigla AS UND,
WSHOP.GRUPO.nmgrupo AS GRUPO,
wshop.Familia.dsfamilia as familia,
WSHOP.pessoas.nmpessoa AS FORNECEDOR,
max (cast (wshop.detalhe.dtaltvlprecovenda as date)) as alteracao_preco,
max ((select wshop.detalhe.vlprecovenda from wshop.detalhe where wshop.estoque.iddetalhe = wshop.detalhe.iddetalhe order by wshop.estoque.dtreferencia desc limit 1)) as preco_venda,
min ((select wshop.detalhe.cdsituacaooperacao from wshop.detalhe where wshop.estoque.iddetalhe = wshop.detalhe.iddetalhe order by wshop.estoque.dtreferencia asc limit 1)) as st,
max ((select wshop.detalhe.allucro from wshop.detalhe where wshop.estoque.iddetalhe = wshop.detalhe.iddetalhe order by wshop.estoque.dtreferencia desc limit 1)) as margem_lucro,
max ((select wshop.detalhe.vlprecocusto from wshop.detalhe where wshop.estoque.iddetalhe = wshop.detalhe.iddetalhe order by wshop.estoque.dtreferencia desc limit 1)) as preco_custo,
max ((select wshop.estoque.vlCUSTOMEDIO from wshop.estoque where wshop.estoque.iddetalhe = wshop.detalhe.iddetalhe order by wshop.estoque.dtreferencia desc limit 1)) as custo_medio,
max ((select wshop.estoque.qtestoque from wshop.estoque where wshop.estoque.iddetalhe = wshop.detalhe.iddetalhe order by wshop.estoque.dtreferencia desc limit 1)) as qtd,
max (WSHOP.CODIGOS.dscodigo) AS BARRAS
FROM WSHOP.produto
LEFT JOIN WSHOP.unidade ON WSHOP.produto.idunidade=WSHOP.UNIDADE.idunidade
LEFT JOIN WSHOP.grupo ON wshop.produto.idgrupo=WSHOP.grupo.idgrupo
LEFT JOIN WSHOP.CODIGOS ON (WSHOP.produto.idproduto=WSHOP.CODIGOS.idproduto)AND(WSHOP.codigos.tpcodigo LIKE 'EAN%')
LEFT JOIN WSHOP.CODIGOS CD ON (WSHOP.produto.idproduto = CD.idproduto)AND(CD.tpcodigo LIKE 'Chamada%')
LEFT JOIN WSHOP.pessoas ON WSHOP.produto.idfornecprincipal=WSHOP.PESSOAS.idpessoa
LEFT JOIN WSHOP.detalhe ON WSHOP.produto.idproduto=WSHOP.detalhe.idproduto
LEFT JOIN wshop.estoque ON wshop.estoque.IDDETALHE = WSHOP.DETALHE.IDDETALHE
LEFT JOIN WSHOP.familia ON WSHOP.detalhe.idfamilia = WSHOP.FAMILIA.idfamilia
--where wshop.estoque.iddetalhe = '01000MDH1K'
--where wshop.detalhe.iddetalhe = '01000L7YDT'
where wshop.produto.cdchamada <> '' and produto.cdchamada <> '00000000'
group by 2,3,4,5,6,7,8,9,10,11
--ORDER BY WSHOP.estoque.dtreferencia ASC