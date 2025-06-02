SELECT 
       ParceiroNegocio.Id AS CODIGO
      ,ParceiroNegocio.NomeRazao AS NOME
      ,ParceiroNegocio.ApelidoFantasia AS FANTASIA
      ,ParceiroNegocio.CpfCnpj AS CNPJ_CNPF
      ,ParceiroNegocio.RgInscricaoEstadual AS IE_RG
      ,ParceiroNegocio.Email AS EMAIL
      ,ParceiroNegocio.Endereco AS ENDERECO
      ,ParceiroNegocio.Complemento AS COMPLEMENTO
      ,ParceiroNegocio.Numero AS NUMERO
      ,ParceiroNegocio.Bairro AS BAIRRO
      ,Cidade.nome as Cidade
      ,ESTADO.SIGLA AS UF
      ,Cidade.cep as CEP
      ,ParceiroNegocio.Telefone AS TELEFONE
      ,ParceiroNegocio.Fax AS FAX
      ,ParceiroNegocio.Observacao AS OBSERVACOES
      ,CAST (ParceiroNegocio.DataCadastro AS DATE) AS CADASTRO
      ,CAST (ParceiroNegocio.DataNascimento AS DATE) AS NASCIMENTO  
  FROM CAD_ParceiroNegocio ParceiroNegocio
  LEFT JOIN CAD_Cidade CIDADE ON CIDADE.ID = ParceiroNegocio.IdCidade
  LEFT JOIN CAD_Estado ESTADO ON ESTADO.tipoestado = cidade.Estado
where ParceiroNegocio.TipoParceiro = 16
