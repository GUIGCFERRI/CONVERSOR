SELECT 
WSHOP.DETALHE.cdprincipal as codigo,
wshop.produto.CDCHAMADA as cod_fabricante,
WSHOP.produto.nmproduto as descricao,
max (estoque.qtestoque) as qtd,
WSHOP.detalhe.cdsituacaooperacao as ST,
WSHOP.unidade.dssigla AS UND,
WSHOP.GRUPO.nmgrupo AS GRUPO,
WSHOP.Familia.dsfamilia as FAMILIA,
max (WSHOP.ESTOQUE.vlCUSTOMEDIO) AS CUSTO_MEDIO,
WSHOP.detalhe.vlprecocusto AS PRECO_CUSTO,
WSHOP.detalhe.vlprecovenda AS PRECO_VENDA,
WSHOP.detalhe.allucro AS MARGEM_LUCRO,
WSHOP.produto.cdipi AS COD_NCM,
WSHOP.pessoas.nmpessoa AS FORNECEDOR,
WSHOP.PRODUTO.cest AS PERSONAL6,
WSHOP.detalhe.OBS AS OBSERVACOES,
max (WSHOP.CODIGOS.dscodigo) AS BARRAS
FROM WSHOP.produto
LEFT JOIN WSHOP.unidade ON WSHOP.produto.idunidade=WSHOP.UNIDADE.idunidade
LEFT JOIN WSHOP.grupo ON wshop.produto.idgrupo=WSHOP.grupo.idgrupo
LEFT JOIN WSHOP.detalhe ON WSHOP.produto.idproduto=WSHOP.detalhe.idproduto
LEFT JOIN WSHOP.pessoas ON WSHOP.produto.idfornecprincipal=WSHOP.PESSOAS.idpessoa
LEFT JOIN WSHOP.familia ON WSHOP.detalhe.idfamilia = WSHOP.FAMILIA.idfamilia
LEFT JOIN WSHOP.CODIGOS ON (WSHOP.produto.idproduto=WSHOP.CODIGOS.idproduto)AND(WSHOP.codigos.tpcodigo LIKE 'EAN%')
--LEFT JOIN wshop.estoque ON wshop.estoque.IDDETALHE = WSHOP.PRODUTO.IDPRODUTO
LEFT JOIN wshop.estoque ON wshop.estoque.IDDETALHE = WSHOP.DETALHE.IDDETALHE
where estoque.cdempresa = '001'
group by 1,2,3,5,6,7,8,10,11,12,13,14,15,16
ORDER BY WSHOP.DETALHE.cdprincipal ASC