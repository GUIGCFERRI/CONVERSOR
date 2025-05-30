SELECT 
  M.Codigo as COD_FABRICANTE
, M.Nome_Longo as DESCRICAO
, M.Estado as SITUACAO
, M.Comissao
, M.Peso
, RIGHT (M.Situacao_Tributaria, 3) as ST 
, LEFT (M.Situacao_Tributaria, 1) as OST 
, M.Observacao as OBSERVACOES
, LEFT (M.CFOP_Venda, 3) as ELO
, M.CFOP_Venda as CF
, M.Data_Criacao as DATA_CADASTRO
, M.Unidade as UND
, GTIN_Trib as BARRAS
, M.Classif_Fiscal as COD_NCM
, M.CEST as PERSONAL6
, M.Cor
, F.NOME AS FORNECEDOR
--, ml.ESTOQUE AS QTD
--, ml.PRECO_VENDA
, gm.Nome as GRUPO
FROM Mercadoria M
LEFT JOIN Grupo_Mercadoria gm on gm.Codigo = M.IdGrupo 
LEFT JOIN Dados_Merc_Loja ml ON M.CODIGO = ml.IDMERCADORIA
LEFT JOIN Fornecedor f ON M.IDFORNECEDOR_PADRAO = F.CODIGO
WHERE ML.IdLoja = '1' -- >>> AQUI AJUSTA O ID DA LOJA CONFORME O CNPJ QUE SOLICITOU CONVERSÃO
