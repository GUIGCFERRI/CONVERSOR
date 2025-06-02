SELECT
       P.Cod_Pessoa AS CODIGO
      ,P.Nom_Pessoa AS NOME
      ,P.Nom_Reduzido AS FANTASIA
      ,P.Num_Cpf_Cnpj AS CNPJ_CNPF
      ,P.Num_IE AS IE_RG
      ,P.Num_IM AS IM
      ,LG.Des_Logradouro AS ENDERECO
      ,P.Idt_Numero AS NUMERO
      ,P.Des_Complemento AS COMPLEMENTO
      ,B.Nom_Bairro AS BAIRRO
      ,C.Nom_Cidade AS CIDADE
      ,P.Num_Cep AS CEP
      ,UF.Sgl_UF AS UF
      ,CONCAT (P.Num_DDD,'',P.Num_Telefone) AS TELEFONE
      ,P.Des_Email AS EMAIL
  FROM db_TopaTudo.dbo.tb_Pessoa as P
  LEFT JOIN db_TopaTudo.dbo.tb_Logradouro LG ON P.Cod_Logradouro = LG.Cod_Logradouro
  LEFT JOIN db_TopaTudo.dbo.tb_Cidade C ON P.Cod_Cidade = C.Cod_Cidade
  LEFT JOIN db_TopaTudo.dbo.tb_UF UF ON C.Cod_UF = UF.Cod_UF
  LEFT JOIN db_TopaTudo.dbo.tb_Bairro B ON P.Cod_Bairro = B.Cod_Bairro
  INNER JOIN db_TopaTudo.dbo.tb_Fornecedor F ON P.Cod_Pessoa = F.Cod_Pessoa ----FORNECEDORES
