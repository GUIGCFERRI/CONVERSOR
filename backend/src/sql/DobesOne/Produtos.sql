SELECT
	p."PRODCod" AS CODIGO,
	p."PRODNome" AS DESCRICAO,
	p."PRODUnid" AS und,
	p."PRODRef" AS COD_FABRICANTE,
	COALESCE(p."PRODCadast", CURRENT_DATE) AS DATA_CADASTRO,
	p."PRODCusto" AS PRECO_CUSTO,
--	p.PRODCSTMEDIO AS CUSTO_MEDIO,	
	p."PRODMargem" AS MARGEM_LUCRO,
	p."PRODVenda" AS PRECO_VENDA,
	p.PRODVENDAVISTA AS personal1,
	p."PRODVendaPR" AS PRECO_ATACADO,
--	p."PRODSDOQtd" AS qtd,					------ Em futuras conversoes verificar se está correto, pode ter relação com a view VW_SALDO_ATUAL
	p.PRODSDO AS qtd,
	p."PRODSDOMin" AS QTD_IDEAL,
	CASE p.PRODAI WHEN 'A' THEN 'Ativo' ELSE 'Inativo' END AS situacao,
	p."PRODBARCod" AS barras,
	p."PRODUltimaVenda" AS ULTIMA_VENDA,
	p."PRODUltimaCompra" AS ULTIMA_COMPRA,
	p.PRODQTEMB AS FAT_CONV,
	p.PRODPESO AS peso,
	p.CLASFISCCOD AS COD_NCM,
	p."TABACod" as ost,
--	p."TABBCod" AS st,
	p.SNCOD AS st,	
	LEFT (p.NATCODIGO,3) AS elo,	
	p.PRODCFOP AS cf,	
	p.PRODOBS AS observacoes,
	p.PRODCOMISS AS comissao,
	p.PRODIPI AS ALIQ_IPI_VENDA,
	p.PRODMODIPI AS IPI_CODIGO_VENDA,
	p.PRODMODIPIENT AS IPI_CODIGO,	
	p.PRODSITPIS AS PIS_CODIGO,
	p.PRODPIS AS PIS_ALIQ_NOR,
	p.PRODSTCOFINS AS COFINS_CODIGO,
	p.PRODCOFINS AS COFINS_ALIQ_NOR,
	p.PRODSITPISENT AS PISE_CODIGO,
	p.PRODPISENT AS PISE_ALIQ_NOR,	
	p.PRODSTCOFINSENT AS COFINSE_CODIGO,
	p.PRODCOFINSENT AS COFINSE_ALIQ_NOR,
--	p."CESCod", 							------ Em futuras conversoes verificar se esse campo é o CEST, vinculado ao campo CESCod da tabela RET079
	tp.tipdesc AS personal5,
	f."FORRazao" AS fornecedor,
	al."ALIQNFPerc" AS personal2,
	gr."GRUDesc" AS grupo,
	sg."SUBGDesc" AS familia
FROM
	RET051 p
LEFT JOIN ret130 tp ON tp.tipcod = p.TIPCOD
LEFT JOIN ret007 f ON f."FORCod" = p."FORCod"
LEFT JOIN ret016 al ON al."ALIQCod" = p."ALIQCod"
LEFT JOIN ret019 gr ON gr."GRUCod" = p."GRUCod"
LEFT JOIN ret020 sg ON sg."SUBGCod" = p."SUBGCod" AND sg."GRUCod" = gr."GRUCod"
WHERE p."PRODCod" <> '000000' AND p."PRODCod" <> '999999';