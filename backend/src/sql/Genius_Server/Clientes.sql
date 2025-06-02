SELECT 
       Pessoa.pesid as codigo
      ,Pessoa.pesdesc as nome
      ,Pessoa.pesfantasia as fantasia
      ,case when Pessoa_Juridica.pesjurcnpj = '' or Pessoa_Juridica.pesjurcnpj is null then Pessoa_Fisica.pesfiscpf else Pessoa_Juridica.pesjurcnpj END AS CNPJ_CNPF
      ,case when Pessoa_Juridica.pesjurie = '' or Pessoa_Juridica.pesjurie is null then Pessoa_Fisica.pesfisrg else Pessoa_Juridica.pesjurie END AS IE_RG
      ,Pessoa.peslogradouro as endereco
      ,Pessoa.pescomplemento as complemento
      ,Pessoa.pesnum as numero
      ,Pessoa.pesbairro as bairro
      ,Pessoa.pescep as cep
      ,Cidade.ciddesc as cidade
      ,Cidade.ciduf as uf
      ,Pessoa.pesfone1 as telefone
      ,Pessoa.pesfone2 as celular
      ,Pessoa.pesobs as observacoes
      ,cast (Pessoa.pesdtahracad as date) as cadastro
      ,Pessoa.peslimitecredito as limite_credito
      ,Pessoa.pesfuncionario
      ,Pessoa.pesfornecedor
      ,Pessoa.pescliente
  FROM Genius_Server.dbo.Pessoa
  left join Genius_Server.dbo.Cidade on Cidade.cidid = Pessoa.pescid
  left join Genius_Server.dbo.Pessoa_Fisica on Pessoa_Fisica.pesfisid = Pessoa.pesid
  left join Genius_Server.dbo.Pessoa_Juridica on Pessoa_Juridica.pesjurid = Pessoa.pesid
  where Pessoa.pescliente = '1' and Pessoa.pesfornecedor <> '1'
