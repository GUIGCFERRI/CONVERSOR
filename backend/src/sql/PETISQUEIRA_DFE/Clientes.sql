SELECT
       Clientes.C�digo as codigo
      ,Clientes.Nome as Nome
      ,Clientes.DataDaInclus�o as cadastro
      ,Clientes.CEP as cep
      ,Clientes.Endere�o as endereco
      ,Clientes.N�mero as numero
      ,Clientes.Complemento as complemento
      ,Clientes.Bairro as bairro
      ,Clientes.Cidade as cidade
      ,Clientes.UF as uf
      ,Clientes.Refer�ncia as observacoes
      ,Clientes.Telefones as telefone
      ,Clientes.FAX as fax
      ,Clientes.EMail as email
      ,Clientes.CNPJ
      ,Clientes.IE
      ,Clientes.Raz�oSocial
      ,Clientes.Contato as contato
      ,Clientes.RG
      ,Clientes.CPF
      ,Clientes.DataDeNascimento as data_nascimento
      ,Clientes.Sexo as sexo
      ,Clientes.Cr�dito as limite_credito
      --,Clientes.Observa��es as obsevacoes
  FROM PETISQUEIRA_DFE.dbo.Clientes
