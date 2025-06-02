SELECT
       Clientes.Código as codigo
      ,Clientes.Nome as Nome
      ,Clientes.DataDaInclusão as cadastro
      ,Clientes.CEP as cep
      ,Clientes.Endereço as endereco
      ,Clientes.Número as numero
      ,Clientes.Complemento as complemento
      ,Clientes.Bairro as bairro
      ,Clientes.Cidade as cidade
      ,Clientes.UF as uf
      ,Clientes.Referência as observacoes
      ,Clientes.Telefones as telefone
      ,Clientes.FAX as fax
      ,Clientes.EMail as email
      ,Clientes.CNPJ
      ,Clientes.IE
      ,Clientes.RazãoSocial
      ,Clientes.Contato as contato
      ,Clientes.RG
      ,Clientes.CPF
      ,Clientes.DataDeNascimento as data_nascimento
      ,Clientes.Sexo as sexo
      ,Clientes.Crédito as limite_credito
      --,Clientes.Observações as obsevacoes
  FROM PETISQUEIRA_DFE.dbo.Clientes
