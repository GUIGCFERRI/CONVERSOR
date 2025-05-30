SELECT
       TbCliente.Codigo as codigo
      ,TbCliente.NomeRazao as nome
      ,TbCliente.ApelidoFantasia as fantasia
      ,TbCliente.DataNascFundacao as nascimento
      ,case when TbCliente.CPF = ' ' or TbCliente.CPF is null then TbCliente.CNPJ else TbCliente.CPF END as CNPJ_CNPF
      --,case when TbCliente.RG = ' ' or TbCliente.RG is null then TbCliente.InscEst else TbCliente.RG END as IE_RG
      ,TbTipoSexo.Nome as sexo
      ,TbTipoEstadoCivil.Nome as est_civil
      ,TbCliente.Endereco as endereco
      ,TbCliente.RefEndereco as complemento
      ,TbCliente.Bairro as bairro
      ,TbCliente.Cidade as cidade
      ,TbCliente.Estado as uf
      ,TbCliente.CEP as cep
      ,TbCliente.Fone as telefone
      ,TbCliente.Celular as celular
      ,TbCliente.Fax as fax
      ,TbCliente.EMail as email
      ,cast (TbCliente.DataCadastro as date) as cadastro
      ,TbCliente.Numero as numero
      ,TbCliente.CreditoCliente as limite_credito
  FROM DBPaneto.dbo.TbCliente
  left join DBPaneto.dbo.TbTipoSexo on TbTipoSexo.Codigo = TbCliente.Sexo
  left join DBPaneto.dbo.TbTipoEstadoCivil on TbTipoEstadoCivil.Codigo = TbCliente.EstCivil
