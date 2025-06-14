SELECT 
PRODUTO_COMPLEMENTO.IDPRODUTO_COMPLEMENTO  AS CODIGO, 
CONCAT (PRODUTO.NOME,'-',TAMANHO.NOME, '-',COR.NOME) AS DESCRICAO, 
PRODUTO_COMPLEMENTO.CODIGO_BARRAS AS BARRAS,
PRODUTO_COMPLEMENTO.DATA_ULTIMA_COMPRA AS ULTIMA_COMPRA,
PRODUTO_COMPLEMENTO.DATA_ULTIMA_VENDA AS ULTIMA_VENDA,
PRODUTO_COMPLEMENTO.ESTOQUE AS QTD,
PRODUTO_COMPLEMENTO.FKPRODUTO  AS COD_FABRICANTE,
PRODUTO_COMPLEMENTO.CUSTO_COM_IMPOSTO AS PRECO_CUSTO,
PRODUTO_COMPLEMENTO.PRECO_VENDA AS PRECO_VENDA,
PRODUTO_COMPLEMENTO.FKSITUACAO_TRIBUTARIA_SIMPLES_NACIONAL AS ST,
CASE PRODUTO_COMPLEMENTO.ATIVO WHEN TRUE THEN 'ATIVO' ELSE 'INATIVO' END AS SITUACAO,
SUBGRUPO.NOME AS FAMILIA,
DEPARTAMENTO.NOME AS PERSONAL1, 
UNIDADE.SIGLA AS UND,
CLASSIFICACAO_FISCAL.CODIGO AS NCM,
CLASSIFICACAO_FISCAL.FKSITUACAO_TRIBUTARIA_IPI  AS IPI_CODIGO,
CLASSIFICACAO_FISCAL.FKSITUACAO_TRIBUTARIA_COFINS  AS COFINS_CODIGO,
CLASSIFICACAO_FISCAL.FKSITUACAO_TRIBUTARIA_PIS  AS PIS_CODIGO,
LEFT (REPLACE (CAST(ALIQUOTA.PERCENTUAL AS VARCHAR),'.', ''),3) AS ELO,    
PRODUTO.OBSERVACAO AS OBSERVACOES, 
PRODUTO.DATA_CADASTRO AS DATA_CADASTRO,  
MARCAS.NOME AS CARACTERISTICAS,
GRUPO.NOME AS GRUPO,
CEST.IDCEST AS PERSONAL6,
FORNECEDOR.NOME AS FORNECEDOR, 
TAMANHO.NOME AS PERSONAL2,
LEFT (COR.NOME  ,15) AS COR,
COR.NOME AS PERSONAL5
FROM PUBLIC.PRODUTO_COMPLEMENTO
LEFT JOIN PRODUTO ON PRODUTO.IDPRODUTO = PRODUTO_COMPLEMENTO.FKPRODUTO
LEFT JOIN SUBGRUPO ON PRODUTO.FKSUBGRUPO=SUBGRUPO.IDSUBGRUPO 
LEFT JOIN DEPARTAMENTO ON PRODUTO.FKDEPARTAMENTO=DEPARTAMENTO.IDDEPARTAMENTO 
LEFT JOIN UNIDADE ON PRODUTO.FKUNIDADE=UNIDADE.IDUNIDADE 
LEFT JOIN ALIQUOTA ON PRODUTO.FKICMS=ALIQUOTA.IDALIQUOTA 
LEFT JOIN MARCAS ON PRODUTO.FKMARCA=MARCAS.IDMARCA
LEFT JOIN GRUPO ON PRODUTO.FKGRUPO=GRUPO.IDGRUPO
LEFT JOIN FORNECEDOR ON PRODUTO.FKFORNECEDOR=FORNECEDOR.IDFORNECEDOR 
LEFT JOIN CEST ON PRODUTO.FKCEST=CEST.IDCEST 
LEFT JOIN TAMANHO ON TAMANHO.IDTAMANHO = PRODUTO_COMPLEMENTO.FKTAMANHO
LEFT JOIN COR ON COR.IDCOR = PRODUTO_COMPLEMENTO.FKCOR 
LEFT JOIN CLASSIFICACAO_FISCAL ON PRODUTO.FKCLASSIFICACAO_FISCAL=CLASSIFICACAO_FISCAL.IDCLASSIFICACAO_FISCAL