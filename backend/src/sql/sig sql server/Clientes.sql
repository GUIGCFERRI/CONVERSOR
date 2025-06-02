SELECT tblClientes.[idCliente] as codigo
      ,tblClientes.[NomeCliente] as nome
      ,tblClientes.[RG] as ie_rg
      ,tblClientes.[CPF] as cnpj_cnpf
      ,tblClientes.[Endereco] 
      ,tblClientes.[Numero]
      ,tblClientes.[Bairro]
      ,tblClientes.[Cep]
      ,tblCidades.Municipio
	  ,tblCidades.UF
      ,tblClientes.[Email]
      ,tblClientes.[Tel_Fixo] as telefone
      ,tblClientes.[Tel_Cel] as celular
  FROM [SIG].[dbo].[tblClientes]
  left join [SIG].[dbo].[tblCidades] on tblClientes.idCidade = tblCidades.idCidade