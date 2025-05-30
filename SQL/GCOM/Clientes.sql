SELECT 
       MC_Clientes.Codigo as codigo
      ,MC_Clientes.Nome as nome
      ,MC_Clientes.DataNascimento as nascimento
      ,MC_Clientes.Endereco as endereco
      ,MC_Clientes.Bairro as bairro
      ,MC_Clientes.Cidade as cidade
      ,MC_Clientes.UF as uf
      ,MC_Clientes.Fone as telefone
      ,MC_Clientes.Limite as limite_credito
      ,MC_Clientes.RG as ie_rg
      ,MC_Clientes.CPF_CGC as cnpj_cnpf
      ,MC_Clientes.DataCadastro as cadastro
      ,MC_Clientes.EMail as email
      ,MC_Clientes.Obs1 as observacoes
      ,MC_Clientes.NomePai as pai
      ,MC_Clientes.NomeMae as mae
      ,MC_Clientes.Conjuge as conjuge
      ,MC_Clientes.CEP as cep
      ,MC_Clientes.RazaoSocial as fantasia
      ,MC_Clientes.Celular as celular
      ,MC_Clientes.Sexo as sexo
      ,MC_Clientes.EstadoCivil as est_civil
      ,MC_Clientes.Complemento  as complemento
      ,MC_Clientes.Contato as contato
      ,MC_Clientes.Numero as numero
  FROM GCOM.dbo.MC_Clientes