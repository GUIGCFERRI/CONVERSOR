SELECT 
       Codigo as codigo
      ,RazaoSocial as nome
      ,NomeFantasia as fantasia
      ,CNPJ_CPF as cnpj_cnpf
      ,Inscricao_RG as ie_rg
      ,Contato as contato
      ,Endereco as endereco
      ,NumeroEnd as numero
      ,Complemento as complemento
      ,Bairro as bairro
      ,Cep as cep
      ,Cidade as cidade
      ,Estado as uf
      ,Telefone1 as telefone
      ,Telefone2 as celular
      ,EMail as email
      ,Observacao as observacoes
      ,InscricaoMunicipal as im
  FROM BDSantoPao_PD.dbo.CAD_Cliente --FORNECEDORES
  WHERE FornecedorSN = '1'
