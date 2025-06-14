SELECT 
       FORNECEDORES.COD_FORNECEDOR AS CODIGO
      ,FORNECEDORES.CODIGO_FORNECEDOR AS OBSERVACOES
      ,PESSOAS_ENDERECOS.NUMERO AS NUMERO
      ,PESSOAS_ENDERECOS.COMPLEMENTO AS COMPLEMENTO
      ,LOCALIZACAO.CEP AS CEP
      ,LOCALIZACAO.RUA AS ENDERECO
      ,LOCALIZACAO.BAIRRO AS BAIRRO
      ,LOCALIZACAO.UF AS UF
      ,MUNICIPIOS.DESCRICAO_MUNICIPIO AS CIDADE
      ,PESSOAS.NOME AS FANTASIA
      ,PESSOAS.RAZAO_SOCIAL AS NOME
      ,PESSOAS.EMAIL1 AS EMAIL
      ,PESSOAS.INSCRICAO_MUNICIPAL AS IM
      ,PESSOAS.INSCRICAO_ESTADUAL AS IE_RG
      ,PESSOAS.CPF_CNPJ AS CNPJ_CNPF
      ,PESSOAS_TELEFONES.TELEFONE AS TELEFONE
  FROM DBPacWin32.dbo.FORNECEDORES
LEFT JOIN DBPacWin32.dbo.PESSOAS_ENDERECOS ON PESSOAS_ENDERECOS.COD_PESSOA = FORNECEDORES.COD_FORNECEDOR
LEFT JOIN DBPacWin32.dbo.LOCALIZACAO ON LOCALIZACAO.COD_LOCALIZACAO = PESSOAS_ENDERECOS.COD_LOCALIZACAO
LEFT JOIN DBPacWin32.dbo.MUNICIPIOS ON MUNICIPIOS.COD_MUNICIPIO = LOCALIZACAO.COD_MUNICIPIO
LEFT JOIN DBPacWin32.dbo.PESSOAS ON PESSOAS.COD_PESSOA = FORNECEDORES.COD_FORNECEDOR
LEFT JOIN DBPacWin32.dbo.PESSOAS_TELEFONES ON PESSOAS_TELEFONES.COD_PESSOA = PESSOAS.COD_PESSOA
WHERE DBPacWin32.dbo.PESSOAS.RAZAO_SOCIAL <> '' 
