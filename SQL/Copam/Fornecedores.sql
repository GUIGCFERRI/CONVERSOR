SELECT 
       Codigo as codigo
      ,Descricao as nome
      ,Endereco as endereco
      ,Perimetro as complemento
      ,Bairro as bairro
      ,Cidade as cidade
      ,Estado as uf
      ,Cep as cep
      ,fone as telefone
      ,CpfCgc as cnpj_cnpf
      ,CliFor
      ,RgIe as ie_rg
      ,Numero as numero
      ,Fantasia as fantasia
      ,email as email
  FROM Copam.dbo.ClientForn
where CliFor = 'F'