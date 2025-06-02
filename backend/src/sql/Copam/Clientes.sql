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
      ,RgIe as ie_rg
      ,Numero as numero
      ,Fantasia as fantasia
      ,cast (DataNasc as date) as nascimento
      ,SEXO as sexo
      ,Profissao as profissao
      ,NomeConjuje as conjuge
      ,NomePai as pai
      ,NomeMae as mae
      ,LimiteMes as limite_credito
      ,email as email
      ,EstadoCivil as est_civil
  FROM Copam.dbo.ClientForn
where CliFor <> 'F'