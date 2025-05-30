SELECT 
CD.dscodigo as CODIGO,
ishop.produto.nmproduto as descricao,
max (ishop.CODIGOS.dscodigo) AS BARRAS,
ishop.unidade.dssigla AS UND,
ishop.pessoas.nmpessoa AS FORNECEDOR,
ishop.GRUPO.nmgrupo AS GRUPO,
ishop.Familia.dsfamilia as familia,
(select ishop.estoque.qtestoque from ishop.estoque where ishop.estoque.iddetalhe = ishop.detalhe.iddetalhe order by ishop.estoque.dtreferencia desc limit 1) as qtd,
ishop.detalhe.vlprecocusto as preco_custo,
--(select ishop.estoque.vlCUSTO from ishop.estoque where ishop.estoque.iddetalhe = ishop.detalhe.iddetalhe order by ishop.estoque.dtreferencia desc limit 1) as preco_custo,
(select ishop.estoque.vlCUSTOMEDIO from ishop.estoque where ishop.estoque.iddetalhe = ishop.detalhe.iddetalhe order by ishop.estoque.dtreferencia desc limit 1) as custo_medio,
ishop.detalhe.allucro as margem_lucro,
ishop.detalhe.vlprecovenda AS PRECO_VENDA,
ishop.detalhe.cdsituacaooperacao as st,
ishop.produto.dsobservacao as observacoes,
ishop.produto.cdipi as cod_ncm,
ishop.PRODUTO.cest AS PERSONAL6,
ishop.produto.idproduto as caracteristicas,
ishop.detalhe.iddetalhe as cod_fabricante,
cast (ishop.detalhe.dtaltvlprecovenda as date) as alteracao_preco,
case when ishop.produto.STATIVO = 'S' then 'Ativo' else 'Inativo' end as SITUACAO
FROM ishop.produto
LEFT JOIN ishop.unidade ON ishop.produto.idunidade=ishop.UNIDADE.idunidade
LEFT JOIN ishop.grupo ON ishop.produto.idgrupo=ishop.grupo.idgrupo
LEFT JOIN ishop.detalhe ON ishop.produto.idproduto=ishop.detalhe.idproduto
LEFT JOIN ishop.pessoas ON ishop.produto.idfornecprincipal=ishop.PESSOAS.idpessoa
LEFT JOIN ishop.familia ON ishop.detalhe.idfamilia = ishop.FAMILIA.idfamilia
LEFT JOIN ishop.CODIGOS ON (ishop.produto.idproduto=ishop.CODIGOS.idproduto)AND(ishop.codigos.tpcodigo LIKE 'EAN%')
LEFT JOIN ishop.CODIGOS CD ON (ishop.produto.idproduto = CD.idproduto)AND(CD.tpcodigo LIKE 'Chamada%')
LEFT JOIN ishop.estoque ON ishop.estoque.IDDETALHE = ishop.DETALHE.IDDETALHE
--where ishop.estoque.iddetalhe = '01000MDH1K'
--where ishop.detalhe.iddetalhe = '01000MDH1K'
where ishop.produto.cdchamada <> '' and produto.cdchamada <> '00000000'
group by 1,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
ORDER BY ishop.produto.nmproduto ASC
