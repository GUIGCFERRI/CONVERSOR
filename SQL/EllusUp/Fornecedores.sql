SELECT
       Fornecedores.ID AS CODIGO
      ,Fornecedores.CNPJ AS CNPJ_CNPF
      ,Fornecedores.IE AS IE_RG
      ,Fornecedores.RazaoSocial AS NOME
      ,Fornecedores.NomeFantasia AS FANTASIA
      ,Fornecedores.Observacoes AS OBSERVACOES
      ,Enderecos.Endereco AS ENDERECO
      ,Enderecos.Numero AS NUMERO
      ,Enderecos.Complemento AS COMPLEMENTO
      ,Enderecos.Bairro AS BAIRRO
      ,Enderecos.nmMunicipio AS CIDADE
      ,Enderecos.UF AS UF
      ,Enderecos.CEP AS CEP
      ,Enderecos.Fone AS TELEFONE
      ,Enderecos.Celular AS CELULAR
      ,Enderecos.Fax AS FAX
      ,Enderecos.PessoaContato AS CONTATO
      ,Enderecos.Email AS EMAIL
  FROM EllusUp.dbo.Fornecedores
  LEFT JOIN EllusUp.dbo.Enderecos ON Enderecos.IdEntidade = Fornecedores.Id
