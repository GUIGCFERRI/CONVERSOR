SELECT 
       Pessoa.Pessoa_codigo AS CODIGO
      ,Pessoa.pessoa_nome AS NOME
      ,cliente.cliente_obs AS OBSERVACOES
      ,case when Fisica.fisica_RG = '' or Fisica.fisica_RG is null then Juridica.juridica_inscestadual else Fisica.fisica_RG END as IE_RG
      ,case when Fisica.fisica_cpf = '' or Fisica.fisica_cpf is null then Juridica.juridica_cnpj else Fisica.fisica_cpf END as CNPJ_CNPF
      ,Juridica.juridica_inscmunicipal AS IM
      ,Juridica.juridica_contato AS CONTATO
      ,case when Juridica.juridica_tel_contato = '' or Juridica.juridica_tel_contato is null then Dados_Comp.dados_tel1 else Juridica.juridica_tel_contato END as TELEFONE
      ,Juridica.juridica_nomefantasia AS FANTASIA
      ,Dados_Comp.dados_endereco AS ENDERECO
      ,Dados_Comp.dados_numero AS NUMERO
      ,Dados_Comp.dados_complemento AS COMPLEMENTO
      ,Dados_Comp.dados_bairro AS BAIRRO
      ,Dados_Comp.dados_cidade AS CIDADE
      ,Dados_Comp.dados_cep AS CEP
      ,Dados_Comp.dados_uf AS UF
      ,Dados_Comp.dados_tel2 AS CELULAR
      ,Dados_Comp.dados_fax AS FAX
      ,Dados_Comp.dados_email AS EMAIL
FROM TW2_DELI.dbo.Pessoa
LEFT JOIN TW2_DELI.dbo.cliente ON cliente.CLIENTE_CODIGO = PESSOA.PESSOA_CODIGO
LEFT JOIN TW2_DELI.dbo.Fisica on Fisica.FISICA_CODIGO = PESSOA.PESSOA_CODIGO
LEFT JOIN TW2_DELI.dbo.Juridica ON Juridica.juridica_codigo = PESSOA.PESSOA_CODIGO
LEFT JOIN TW2_DELI.dbo.Dados_Comp ON Dados_Comp.dados_codigo = PESSOA.PESSOA_CODIGO
where pessoa.pessoa_tipo = '2'
