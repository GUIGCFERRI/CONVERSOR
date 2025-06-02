select
  p.CODPRODUTO as codigo
, p.DESC_COMPLETA as descricao
, p.ORIGEM_MERCADORIA as ost
--, p.REFERENCIA as  cod_fabricante
, cast (p.CAD_DATA as date) as data_cadastro
, p.TIPOPRODUTO  as tipo_item
, p.ESTQMINIMO as   qtd_ideal
, g.desc_grupo as grupo
, s.desc_subgrupo as familia
, PP.perc_margem as margem_lucro
, PC.valor_ultima_compra as preco_custo
, PC.custo_medio as custo_medio
, E.qtdestoque as qtd
, pu.pesobruto as peso
, u.sigla as und
, ti.ncm as COD_NCM
, ti.cest as PERSONAL6
, pcf.cst_ipi as IPI_CODIGO_VENDA
, pcf.perc_ipi as ALIQ_IPI_VENDA
, pcf.cst_icms AS ST
, SUBSTRING (pcf.perc_icms from 1 for 3) AS ELO
, pcf.cfop AS CF
, pcf.cst_pis AS PIS_CODIGO
, pcf.cst_cofins AS COFINS_CODIGO
, pcf.perc_pis AS PIS_ALIQ_NOR
, pcf.perc_cofins AS COFINS_ALIQ_NOR
, PP.preco as preco_venda
,  max (pfc.cod_fornecedor) as COD_FABRICANTE
,  max (cb.codbarras) as barras
from produto p
join SUBGRUPO  S on S.IDSUBGRUPO = P.IDSUBGRUPO
left join GRUPO g on g.idgrupo = s.idgrupo
join PRODUTO_UNIDADE PU on PU.CODPRODUTO = P.CODPRODUTO and PU.FLAG_PRINCIPAL = 1
--join PRODUTO_PRECO PP on PP.IDPRODUTOUNIDADE = PU.IDPRODUTOUNIDADE
join PRODUTO_PRECO PP on PP.IDPRODUTOUNIDADE = PU.IDPRODUTOUNIDADE
--left join PRODUTO_CUSTOCOMPRA PC on PC.CODPRODUTO = P.CODPRODUTO
left join PRODUTO_CUSTOCOMPRA PC on PC.CODPRODUTO = P.CODPRODUTO
--left join ESTOQUE E on E.CODPRODUTO =  P.CODPRODUTO
left join ESTOQUE E on E.CODPRODUTO =  P.CODPRODUTO
left join produto_codbarras cb on cb.idprodutounidade = pu.idprodutounidade
left join unidade u on u.idunidade = pu.idunidade
left join produto_fornecedor pf on pf.codproduto = p.codproduto
left join produto_fornecedor_codigos pfc on pfc.idprodutofornecedor = pf.idprodutofornecedor
left join produto_custofaturamento pcf on pcf.codproduto = p.codproduto
left join tipoimposto ti on ti.idtipoimposto = p.idtipoimposto
GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16 ,17,18,19,20,21,22,23,24,25,26
