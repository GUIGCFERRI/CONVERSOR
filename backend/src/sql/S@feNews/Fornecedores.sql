SELECT
  F.CODIGO,
  F.RAZAO AS NOME,              -- Usando RAZAO para campo NOME
  F.FANTASIA,
  F.CONTATO,
  F.CNPJ AS CNPJ_CNPF,
  F.INSCRICAO AS IE_RG,
  '' AS IM,                     -- Campo não existe na tabela, deixei vazio
  F.ENDERECO,
  F.NUMERO,
  '' AS COMPLEMENTO,            -- Campo não existe na tabela
  F.BAIRRO,
  CID.NOME AS CIDADE,
  CID.UF AS UF,
  REPLACE(F.CEP, '-', '') AS CEP,
  REPLACE(REPLACE(REPLACE(F.TELEFONE, '(', ''), ')', ''), '-', '') AS TELEFONE,
  '' AS CELULAR,                -- Campo não existe na tabela
  REPLACE(REPLACE(REPLACE(F.FAX, '(', ''), ')', ''), '-', '') AS FAX,
  F.EMAIL,
  NULL AS OBSERVACOES          -- Campo não existe na tabela
FROM FORNECEDOR F
LEFT JOIN CIDADES CID ON CID.CODIGO = F.CODCIDADE;
