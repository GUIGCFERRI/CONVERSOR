select profilia.`DESCRICAO`,
profilia.`CODBARRAS` as barras,
`depar`.`NOMEDEP` as grupo,
profilia.`PRVENDA` as preco_venda,
profilia.`CUSTOMEDIO` as custo_medio,
profilia.`UNIDADE` as und,
profilia.`OBS` as observacoes,
profilia.cf as cod_ncm,
profilia.cest as personal6,
profilia.`CUSTODECOMPRA` as preco_custo
from profilia
left join depar on profilia.coddep=depar.`CODDEP`



