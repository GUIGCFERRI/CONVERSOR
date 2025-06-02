SELECT 
       CAD_ParceiroNegocio.Id AS CODIGO
      ,CAD_ParceiroNegocio.NomeRazao AS NOME
      ,CAD_ParceiroNegocio.ApelidoFantasia AS FANTASIA
      ,CAD_ParceiroNegocio.CpfCnpj AS CNPJ_CNPF
      ,CAD_ParceiroNegocio.RgInscricaoEstadual AS IE_RG
      ,CAD_ParceiroNegocio.Email AS EMAIL
      ,CAD_ParceiroNegocio.Endereco AS ENDERECO
      ,CAD_ParceiroNegocio.Complemento AS COMPLEMENTO
      ,CAD_ParceiroNegocio.Numero AS NUMERO
      ,CAD_ParceiroNegocio.Bairro AS BAIRRO
      ,Cidade.nome as Cidade
      ,ESTADO.SIGLA AS UF
      ,Cidade.cep as CEP
      ,CAD_ParceiroNegocio.Telefone AS TELEFONE
      ,CAD_ParceiroNegocio.Fax AS FAX
      ,CAD_ParceiroNegocio.Observacao AS OBSERVACOES
  FROM METAPOSTO_GLOBAL.dbo.CAD_ParceiroNegocio
  LEFT JOIN METAPOSTO_GLOBAL.dbo.CAD_Cidade CIDADE ON CIDADE.ID = CAD_ParceiroNegocio.IdCidade
  LEFT JOIN METAPOSTO_GLOBAL.dbo.CAD_Estado ESTADO ON ESTADO.tipoestado = cidade.Estado
  WHERE CAD_ParceiroNegocio.TIPOPARCEIRO = '16' --FORNECEDORES