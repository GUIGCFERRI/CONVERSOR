SELECT 
       Cliente.Apelido_Fantasia AS FANTASIA
      ,Cliente.Bairro AS BAIRRO
      ,Cliente.Cep AS CEP
      ,Cliente.Cidade AS CIDADE
      ,Cliente.Comp_Endereco AS COMPLEMENTO
      ,Cliente.Cpf_Cnpj AS CNPJ_CNPF
      ,Cliente.Dt_Cadastro AS CADASTRO
      ,Cliente.Email AS EMAIL
      ,Cliente.Empresa_Contato AS CONTATO
      ,Cliente.Endereco AS ENDERECO
      ,Cliente.Estado AS UF
      ,Cliente.Id_Cliente AS CODIGO
      ,Cliente.Insc_Municipal AS IM
      ,Cliente.Limite_Credito AS LIMITE_CREDITO
      ,Cliente.Nome_Razao AS NOME
      ,Cliente.Num_Endereco AS NUMERO
      ,Cliente.Obs AS OBSERVACOES
      ,Cliente.Rg_Inscricao AS IE_RG
  FROM Retaguarda.dbo.Cliente
