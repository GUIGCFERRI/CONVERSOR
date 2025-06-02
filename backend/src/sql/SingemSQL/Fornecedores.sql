SELECT 
       Fornecedor as Codigo
      ,RazaoSocial as Nome
      ,Endereco as Endereco
      ,Bairro as Bairro
      ,Cidade as Cidade
      ,UF as UF
      ,CEP as CEP
      ,Inscricao as IE_RG
      ,CGC as CNPJ_CNPF
      ,Fone as Telefone
      ,Fax as Fax
      ,Contato as Contato
      ,EMail as Email
      ,Fantasia as Fantasia
      ,InscricaoMunicipal as IM
      ,Observacoes as Observacoes
  FROM SingemSQL.dbo.Cad_Fornecedores
