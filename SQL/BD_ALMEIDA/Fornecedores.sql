SELECT 
       Pessoa.ID as codigo
      ,Pessoa.TipoPessoa
      ,Pessoa.CNPJ_CPF as cnpj_cnpf
      ,Pessoa.Nome_Razao as nome
      ,Pessoa.NomeFantasia as fantasia
      ,Pessoa.Contato as contato
      ,Pessoa.IE_RG as ie_rg
      ,Pessoa.IM as im
      ,CONCAT (PessoaTelefone.DDD , '' , PessoaTelefone.NumeroTelefone) as telefone
      ,PessoaEndereco.Logradouro as endereco
      ,PessoaEndereco.NumeroEndereco as numero
      ,PessoaEndereco.Complemento as complemento
      ,PessoaEndereco.Bairro as bairro
      ,Municipios.Descricao as cidade
      ,PessoaEndereco.CEP as cep
  FROM BD_ALMEIDA.dbo.Pessoa
left join BD_ALMEIDA.dbo.PessoaEndereco on PessoaEndereco.ID_endereco = Pessoa.ID
left join BD_ALMEIDA.dbo.PessoaTelefone on PessoaTelefone.ID_Telefone  = Pessoa.ID
left join BD_ALMEIDA.dbo.Municipios on Municipios.ID = PessoaEndereco.ID_Municipio
left join BD_ALMEIDA.dbo.UF on UF.ID_UF = municipios.ID_UF
where Pessoa.TipoPessoa = '3' --FORNECEDORES
