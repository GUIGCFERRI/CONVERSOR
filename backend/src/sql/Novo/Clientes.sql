SELECT 
       Cliente.cli_codigo AS CODIGO
      ,Cliente.cli_nome AS NOME
      ,Cliente.cli_data_nascimento AS NASCIMENTO
      ,Cliente.cli_rg AS IE_RG
      ,Cliente.cli_cpf AS CNPJ_CNPF
      ,Cliente.cli_logradouro AS ENDERECO
      ,Cliente.cli_numero AS NUMERO
      ,Cliente.cli_complemento AS COMPLEMENTO
      ,Cliente.cli_bairro AS BAIRRO
      ,Cidade.cid_NOME AS CIDADE
      ,Estado.est_sigla as UF
      ,Cliente.cli_telefone AS TELEFONE
      ,Cliente.cli_celular AS CELULAR
      ,Cliente.cli_cep AS CEP
  FROM novo .dbo.Cliente
  LEFT JOIN novo .dbo.Cidade ON Cliente.CID_CODIGO = Cidade.CID_CODIGO
  LEFT JOIN novo .dbo.Estado on Cidade.cid_estado = Estado.est_codigo