SELECT E01_FON.E01_ID AS CODIGO,
E01_FON.E01_PRODUTO AS COD_FABRICANTE,
E01_FON.E01_DESCRICAO AS DESCRICAO,
E01_FON.E01_UNIDADESIGLA AS UND,
E01_FON.E01_ESTOQUEFILIAIS AS QTD,
E01_FON.E01_NCM AS COD_NCM,
E01_FON.E01_DATACADASTRO AS DATA_CADASTRO,
E01_FON.E01_CEST AS PERSONAL6,
E02_FON.E02_CUSTOCONTABIL AS PRECO_CUSTO,
E02_FON.E02_CUSTOMEDIO AS CUSTO_MEDIO,
E02_FON.E02_VENDA AS PRECO_VENDA,
E02_FON.E02_DATAALTERACAO AS ALTERACAO_PRECO,
TRB_FON.TRB_CSOSN AS ST
FROM E01_FON
LEFT JOIN E02_FON ON E01_FON.E01_ID=E02_FON.E01_ID
LEFT JOIN TRB_FON ON E02_FON.TRB_CODIGO=TRB_FON.TRB_CODIGO


