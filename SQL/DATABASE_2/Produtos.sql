SELECT
  produotos.id AS CODIGO,
  produotos.codigoCEST AS PERSONAL6,
  produotos.codigoNCM AS COD_NCM,
  produotos.dataUltimaCompra AS ULTIMA_COMPRA,
  produotos.descricaoPDV AS DESCRICAO,
  produotos.estoqueAtual AS QTD,
  produotos.estoqueMinimo AS QTD_IDEAL,
  produotos.gtin AS BARRAS,
  produotos.observacao AS OBSERVACOES,
  produotos.pesoLiquido AS PESO,
  produotos.referencia AS COD_FABRICANTE,
  produotos.valorCusto AS PRECO_CUSTO,
  produotos.valorVenda AS PRECO_VENDA,
  PESSOAS.NOME AS FORNECEDOR,
  SETORES.NOME AS GRUPO,
  UNIDADEMEDIDA.DESCRICAO AS UND,
  UNIDADEMEDIDA.DESCRICAO AS UND_COMPRA,
  produotos.valorVendaAtacado AS PRECO_ATACADO
FROM produotos
LEFT JOIN GRUPOS ON GRUPOS.ID = PRODUOTOS.idGrupo
LEFT JOIN UNIDADEMEDIDA ON UNIDADEMEDIDA.ID = PRODUOTOS.idUnidade
LEFT JOIN PESSOAS ON PESSOAS.ID = PRODUOTOS.idFornecedor
LEFT JOIN SETORES ON SETORES.ID = PRODUOTOS.IDSETOR
