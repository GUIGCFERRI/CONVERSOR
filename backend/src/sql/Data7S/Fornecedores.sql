SELECT
       Fornecedor.CodFornecedor as codigo
      ,Fornecedor.RazaoSocial as nome
      ,Fornecedor.NomeFantasia as fantasia
      ,Fornecedor.Contato as contato
      ,Fornecedor.cnpj_cpf as cnpj_cnpf
      ,case when Fornecedor.RG = '' or Fornecedor.RG is null then Fornecedor.InscricaoEstadual else Fornecedor.RG END AS IE_RG
      ,Fornecedor.InscricaoMunicipal as im
      ,Fornecedor.Endereco as endereco
      ,Fornecedor.Numero as numero
      ,Fornecedor.Complemento as complemento
      ,Fornecedor.Bairro as bairro
      ,Fornecedor.CEP as cep
      ,Municipio.NomeCompleto as cidade
      ,Municipio.UF as uf
      ,Fornecedor.Telefone as telefone
      ,Fornecedor.Fax as fax
      ,Fornecedor.EMail as email
      ,Fornecedor.Observacao as observacoes
  FROM Data_Se7e_FRANGO.dbo.Fornecedor
left join Data_Se7e_FRANGO.dbo.Municipio on Municipio.codmunicipio = Fornecedor.CodMunicipio
