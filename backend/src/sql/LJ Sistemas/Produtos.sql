SELECT 
  EST004.CODPRODUTO AS CODIGO
, EST004.DESCPRODUTO AS DESCRICAO
, EST004.REFERENCIA4 AS BARRAS
, EST004.UNIDADE AS UND
, EST004.REFERENCIA AS COD_FABRICANTE
, EST004.PRECOCUSTO AS PRECO_CUSTO
, EST004.PVENDA1 AS PRECO_VENDA
, EST004.CUSTOMEDIO AS CUSTO_MEDIO
, EST004.MLUCRO1 AS MARGEM_LUCRO
, EST004.PRECOPROMO_ATACADO AS PRECO_ATACADO
, EST004.QTDE_ATACADO AS QTD_PRECO_ATACADO
, EST004.ESTOQUE AS QTD
, EST004.ESTMINIMO AS QTD_IDEAL
, EST004.NCM AS COD_NCM
, EST004.CEST AS PERSONAL6
, EST004.PESOPROD AS PESO
, EST004.EMB_QTDE AS FAT_CONV
, EST004.PORCTRIB AS ELO
, EST004.CFOPDENTRO AS CF
, EST004.OBSPRODUTO AS OBSERVACOES
, EST004.PORCCOMISSAO AS COMISSAO
, EST004.TAMANHO
--, EST004.CST AS ST
, EST004.CSOSNDENTRO AS ST
, EST004.IPI AS ALIQ_IPI
, EST004.IPIVENDA AS ALIQ_IPI_VENDA
, EST004.CSTIPI AS IPI_CODIGO
, EST004.CSTIPISAIDA AS IPI_CODIGO_VENDA
, EST004.DIASVALIDADE AS VALIDADE_DIAS
, EST004.CSTPIS AS PIS_CODIGO
, EST004.CSTCOFINS AS COFINS_CODIGO
, EST004.CSTPISENTRADA AS PISE_CODIGO
, EST004.CSTCOFINSENTRADA AS COFINSE_CODIGO
, EST004.ALIQUOTAPIS AS PIS_ALIQ_NOR
, EST004.ALIQUOTACOFINS AS COFINS_ALIQ_NOR
, CAST (EST004.DTULTCOMPRA AS DATE) AS ULTIMA_COMPRA
, CAST (EST004.DTULTVENDA AS DATE) AS ULTIMA_VENDA
, CAST (EST004.DTCADASTRO AS DATE) AS DATA_CADASTRO
, CASE EST004.INATIVO WHEN 'N' THEN 'Ativo' ELSE 'Inativo' END AS SITUACAO
, CP003.NOME AS FORNECEDOR
, EST017.DESCMARCA AS PERSONAL1
, EST002.DESCGRUPO AS GRUPO
, EST003.DESCSUBG AS FAMILIA
FROM EST004
LEFT JOIN EST002 ON EST002.GRUPOCONTADOR = EST004.GRUPO
LEFT JOIN EST003 ON EST003.SUBGCONTADOR = EST004.SUBGRUPO AND EST003.GRUPOCONTA = EST002.GRUPOCONTADOR
LEFT JOIN CP003 ON CP003.FCONTADOR = EST004.ULTFORNECEDOR 
LEFT JOIN EST017 ON EST017.MARCACONTADOR = EST004.MARCA 
