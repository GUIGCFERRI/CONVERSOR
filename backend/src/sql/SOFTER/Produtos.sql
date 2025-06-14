SELECT
	CONTROLE AS CODIGO,
	PRODUTO AS DESCRICAO,
	CODBARRAS AS BARRAS,
	REFERENCIA AS COD_FABRICANTE,
	UNIDADE AS UND,
	PRECOCUSTO AS PRECO_CUSTO,
	PERCLUCRO AS MARGEM_LUCRO,
	CUSTOMEDIO AS CUSTO_MEDIO,
	PRECOVENDA AS PRECO_VENDA,
	GRUPO AS GRUPO,
	OBS AS OBSERVACOES,
	FORNECEDOR,
	TAMANHO,
	PESO,
	DATAULTIMACOMPRA AS ULTIMA_COMPRA,
	DATAULTIMAVENDA AS ULTIMA_VENDA,
	QTDEMINIMA AS QTD_IDEAL,
	QTDE AS QTD,
	NCM AS COD_NCM,
	CSOSN AS ST,
	CEST AS PERSONAL6,
	PERCCOMISSAO AS COMISSAO,
	CODTRIBUTACAOIPI AS IPI_CODIGO_VENDA,
	CODTRIBUTACAOPIS AS PIS_CODIGO,
	CODTRIBUTACAOCOFINS AS COFINS_CODIGO,
	PERCPIS AS PIS_ALIQ_NOR,
	PERCCOFINS AS COFINS_ALIQ_NOR,
	PERCIPI AS ALIQ_IPI_VENDA,
	CODIGOANP AS COD_ANP,
	MARCA AS FAMILIA,
	APLICACAOPRODUTO AS PERSONAL1,
	DIASVALIDADEPRODUTO AS VALIDADE_DIAS,
	CASE
		ATIVO WHEN 'SIM' THEN 'Ativo' ELSE 'Inativo'
	END AS SITUACAO
FROM
	TESTOQUE
