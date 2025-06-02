SELECT 
       Clientes.Cli_Codi as Codigo
      ,Clientes.Cli_Nome as Nome
      ,Clientes.Cli_Fant as Fantasia
      ,Clientes.Cli_Ende as Endereco
      ,Clientes.Cli_Nume as Numero
      ,Clientes.Cli_Comp as Complemento
      ,Clientes.Cli_Bair as Bairro
      ,Clientes.Cli_NCep as CEP
      ,Municipios.MuniNome as Cidade
      ,Estados.EstaSigl as Uf
      ,Clientes.Cli_NCpf as CNPJ_CNPF
      ,Clientes.Cli_NrRg AS IE_RG
      ,Clientes.Cli_Fonp as Telefone
      ,Clientes.Cli_Fons as Celular
      ,Clientes.Fax as Fax
      ,Clientes.Cli_Mail as Email
      ,Clientes.Cli_Cont as Contato
      ,Clientes.Cli_DtCa as Cadastro
      ,Clientes.Cli_DtNa as Nascimento
      ,Clientes.Cli_Obse as Observacoes
      ,Clientes.Cli_LimD as Limite_Credito
      ,Clientes.Cli_UltiComp as ultima_compra
      ,Clientes.Cli_Nome_Conj as Conjuge
      ,Clientes.Cli_Nome_Pai as Pai
      ,Clientes.Cli_Nome_Mae as Mae
  FROM PlayComercial.dbo.Clientes
  left join PlayComercial.dbo.Municipios on Municipios.Mun_codi = Clientes.Mun_Codi
  Left join PlayComercial.dbo.Estados on Estados.EstaCodi = Municipios.EstaCodi
