SELECT 
       fornecedor.codfornecedor AS CODIGO
      ,fornecedor.nome AS NOME
      ,fornecedor.cnpj AS CNPJ_CNPF
      ,fornecedor.ie AS IE_RG
      ,fornecedor.endereco AS ENDERECO
      ,fornecedor.bairro AS BAIRRO
      ,fornecedor.cidade AS CIDADE
      ,fornecedor.estado AS UF
      ,fornecedor.cep AS CEP
      ,fornecedor.tel1 AS TELEFONE
      ,fornecedor.tel2 AS CELULAR
      ,fornecedor.fax AS FAX
      ,fornecedor.representante AS CONTATO
      ,fornecedor.email AS EMAIL
      ,fornecedor.obs AS OBSERVACOES
  FROM Comercio.dbo.fornecedor