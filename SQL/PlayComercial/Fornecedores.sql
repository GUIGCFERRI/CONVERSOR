SELECT 
       Fornecedores.FornCodi as codigo
      ,Fornecedores.FornNome as nome
      ,Fornecedores.FornFant as fantasia
      ,Fornecedores.FornEnde as endereco
      ,Fornecedores.FornNume as numero
      ,Fornecedores.FornComp as complemento
      ,Fornecedores.FornBair as bairro
      ,Fornecedores.FornNCep as cep
      ,Municipios.MuniNome as Cidade
      ,Estados.EstaSigl as Uf
      ,Fornecedores.FornCnpj as cnpj_cnpf
      ,Fornecedores.FornInsc as ie_rg
      ,Fornecedores.FornFonp as telefone
      ,Fornecedores.FornFons as celular
      ,Fornecedores.FornMail as email
      ,Fornecedores.FornCont as contato
      ,Fornecedores.FornObse as observacoes
  FROM PlayComercial.dbo.Fornecedores
  left join PlayComercial.dbo.Municipios on Municipios.Mun_codi = Fornecedores.Mun_Codi
  Left join PlayComercial.dbo.Estados on Estados.EstaCodi = Municipios.EstaCodi
