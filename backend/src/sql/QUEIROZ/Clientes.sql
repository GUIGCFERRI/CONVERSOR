SELECT 
       Clientes.CODIGO AS CODIGO
      ,Clientes.RAZAO_SOCIAL AS NOME
      ,Clientes.NOME_FANTASIA AS FANTASIA
      ,case when Clientes.RG = '' or Clientes.RG is null then Clientes.INSCRICAO_EST else Clientes.RG END AS IE_RG
      ,Clientes.CPF_CGC AS CNPJ_CNPF
      ,Clientes.Inscricao_Municipal AS IM
      ,Clientes.ENDERECO AS ENDERECO
      ,CIDADES.NOME AS CIDADE
      ,Bairros.BAIRRO AS BAIRRO
      ,Clientes.Numero AS NUMERO
      ,Clientes.Complemento AS COMPLEMENTO
      ,Clientes.ESTADO AS UF
      ,Clientes.CEP AS CEP
      ,Clientes.TELEFONERES AS TELEFONE
      ,Clientes.TELEFONECEL AS CELULAR
      ,Clientes.FAX AS FAX
      ,Clientes.EMAIL AS EMAIL
      ,Clientes.OBSERVACAO AS OBSERVACOES
      ,CAST (Clientes.DATA_CADASTRO AS DATE) AS CADASTRO
      ,Clientes.LIMITE_CREDITO AS LIMITE_CREDITO
      ,Clientes.NASCIMENTO AS NASCIMENTO
      ,Clientes.CONTATO AS CONTATO
      ,Clientes.ESTADO_CIVIL AS EST_CIVIL
      ,Clientes.CONJUGE AS CONJUGE
      ,Clientes.FILIACAO_PAI AS PAI
      ,FILIACAO_MAE AS MAE    
  FROM Queiroz.dbo.Clientes
  LEFT JOIN Queiroz.dbo.Cidades ON Cidades.CODIGO = Queiroz.dbo.Clientes.CIDADE
  LEFT JOIN Queiroz.dbo.Bairros ON Bairros.CodigoBairro = Cidades.CODIGO
