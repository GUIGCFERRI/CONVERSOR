SELECT 
       Fornecedores.Código as codigo
      ,Fornecedores.Nome as nome
      ,Fornecedores.CEP as cep
      ,Fornecedores.Endereço as endereco
      ,Fornecedores.Número as numero
      ,Fornecedores.Complemento as complemento
      ,Fornecedores.Bairro as bairro
      ,Fornecedores.Cidade as cidade
      ,Fornecedores.UF as uf
      ,Fornecedores.Telefones as telefone
      ,Fornecedores.FAX as fax
      ,Fornecedores.EMail as email
      ,Fornecedores.CNPJ as cnpj_cnpf
      ,Fornecedores.IE as ie_rg
      ,Fornecedores.RazãoSocial as fantasia
      ,Fornecedores.Contato as contato
      ,Fornecedores.Observações as observações
      ,Fornecedores.Celulares as celular
  FROM PETISQUEIRA_DFE.dbo.Fornecedores
