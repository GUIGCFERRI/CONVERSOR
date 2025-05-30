select
	P.codigo as CODIGO,
	P.codigo_ncm as COD_NCM,
	P.descricao as DESCRICAO,
	P.marca as FAMILIA,
	P.unidade as UND,
	G.descricao as GRUPO,
	P.data_cadastro as DATA_CADASTRO,
	P.codigo_fabricacao as COD_FABRICANTE,
	P.codigo_fabricacao as BARRAS,
	PP.valor as PRECO_VENDA,
	PS.saldo_fisico as QTD, 
	P.codigo_cest as PERSONAL6,
	case when P.situacao = 'A' then 'Ativo' else 'Inativo' end as SITUACAO
from maxctrl_empresa_000001.produtos p
left join maxctrl_empresa_000001.grupos_produtos G on G.codigo=P.codigo_grupo 
left join maxctrl_empresa_000001.produtos_precos PP on PP.codigo_produto=P.codigo 
left join maxctrl_empresa_000001.produtos_saldos PS on PS.codigo_produto =P.codigo