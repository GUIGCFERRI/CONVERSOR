SELECT 
       Fornecedores.C�digo as codigo
      ,Fornecedores.Nome as nome
      ,Fornecedores.CEP as cep
      ,Fornecedores.Endere�o as endereco
      ,Fornecedores.N�mero as numero
      ,Fornecedores.Complemento as complemento
      ,Fornecedores.Bairro as bairro
      ,Fornecedores.Cidade as cidade
      ,Fornecedores.UF as uf
      ,Fornecedores.Telefones as telefone
      ,Fornecedores.FAX as fax
      ,Fornecedores.EMail as email
      ,Fornecedores.CNPJ as cnpj_cnpf
      ,Fornecedores.IE as ie_rg
      ,Fornecedores.Raz�oSocial as fantasia
      ,Fornecedores.Contato as contato
      ,Fornecedores.Observa��es as observa��es
      ,Fornecedores.Celulares as celular
  FROM PETISQUEIRA_DFE.dbo.Fornecedores
