SELECT 
    PRODUTO.idproduto AS CODIGO,
    PRODUTO.nome AS DESCRICAO,
    GRUPO.NOME AS GRUPO,
    SUBGRUPO.NOME AS FAMILIA,
    DEPARTAMENTO.NOME AS CARACTERISTICAS,
    MARCAS.NOME AS PERSONAL2,
    UNIDADE.SIGLA AS UND,
    PRODUTO_COMPLEMENTO.CODIGO_BARRAS AS BARRAS,
    PRODUTO_COMPLEMENTO.ESTOQUE AS QTD,
    PRODUTO_COMPLEMENTO.REFERENCIA AS COD_FABRICANTE,
    PRODUTO_COMPLEMENTO.PRECO_VENDA AS PRECO_VENDA,
    PRODUTO_COMPLEMENTO.CUSTO_COM_IMPOSTO AS PRECO_CUSTO,
    PRODUTO_COMPLEMENTO.CUSTO_MEDIO AS CUSTO_MEDIO,
    PRODUTO.observacao AS OBSERVACOES,
    PRODUTO.data_cadastro AS DATA_CADASTRO,
    PRODUTO.data_alteracao AS ALTERACAO_PRECO,
    PRODUTO.fksituacao_tributaria AS ST,
    NCM.NCM AS COD_NCM,
    FORNECEDOR.NOME AS FORNECEDOR,
    CEST.IDCEST AS PERSONAL6
FROM PRODUTO
LEFT JOIN GRUPO ON GRUPO.IDGRUPO = PRODUTO.FKGRUPO
LEFT JOIN SUBGRUPO ON SUBGRUPO.IDSUBGRUPO = PRODUTO.FKSUBGRUPO
LEFT JOIN DEPARTAMENTO ON DEPARTAMENTO.IDDEPARTAMENTO = PRODUTO.FKDEPARTAMENTO
LEFT JOIN UNIDADE ON UNIDADE.IDUNIDADE = PRODUTO.FKUNIDADE
LEFT JOIN MARCAS ON MARCAS.IDMARCA = PRODUTO.FKMARCA
LEFT JOIN FORNECEDOR ON FORNECEDOR.IDFORNECEDOR = PRODUTO.FKFORNECEDOR
LEFT JOIN NCM ON NCM.IDNCM = PRODUTO.FKNCM
LEFT JOIN CEST ON CEST.IDCEST = PRODUTO.FKCEST
LEFT JOIN PRODUTO_COMPLEMENTO ON PRODUTO_COMPLEMENTO.IDPRODUTO_COMPLEMENTO = PRODUTO.IDPRODUTO
