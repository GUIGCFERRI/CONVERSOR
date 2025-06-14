SELECT 
       FORNECEDOR.CDFOR AS CODIGO
      ,FORNECEDOR.NOME AS NOME
      ,FORNECEDOR.FANTASIA AS FANTASIA
      ,FORNECEDOR.CONTATO AS CONTATO
      ,FORNECEDOR.CGC AS CNPJ_CNPF
      ,FORNECEDOR.IE AS IE_RG
      ,FORNECEDOR.ENDERECO AS ENDERECO
      ,FORNECEDOR.BAIRRO AS BAIRRO
      ,FORNECEDOR.CIDADE AS CIDADE
      ,FORNECEDOR.ESTADO AS UF
      ,FORNECEDOR.CEP AS CEP
      ,FORNECEDOR.FONE AS TELEFONE
      ,FORNECEDOR.FAX AS FAX
      ,FORNECEDOR.EMAIL AS EMAIL
      ,FORNECEDOR.OBS AS OBSERVACOES
  FROM FORNECEDOR
