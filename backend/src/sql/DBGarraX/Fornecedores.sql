SELECT
       Fornecedor.Codigo AS CODIGO
      ,Fornecedor.Descricao AS FANTASIA
      ,Fornecedor.RazaoSocial AS NOME
      ,Fornecedor.Contato AS CONTATO
      ,Fornecedor.CNPJ_CPF AS CNPJ_CNPF
      ,Fornecedor.Ie AS IE_RG
      ,Fornecedor.Rua AS ENDERECO
      ,Fornecedor.Numero AS NUMERO
      ,Fornecedor.Complemento AS COMPLEMENTO
      ,Fornecedor.Bairro AS BAIRRO
      ,Fornecedor.Cidade AS CIDADE
      ,Fornecedor.UF AS UF
      ,Fornecedor.Cep AS CEP
      ,Fornecedor.Fone AS TELEFONE
      ,Fornecedor.Celular AS CELULAR
      ,Fornecedor.Fax AS FAX
      ,Fornecedor.Email AS EMAIL
      ,Fornecedor.Obs AS OBSERVACOES
  FROM DBGarraX.dbo.Fornecedor
  WHERE Fornecedor.Codigo > '0'
