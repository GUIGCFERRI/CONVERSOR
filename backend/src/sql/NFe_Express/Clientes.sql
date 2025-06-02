SELECT 
      -- Pessoa.codigopessoa as codigo
       Pessoa.nomepessoa as nome
      ,Pessoa.cpfcnpj as cnpj_cnpf
      ,Pessoa.inscricaoestadual as ie_rg
      ,Pessoa.inscricaomunicipal as im
      ,MunicIBGE.nome as cidade
      ,UfIBGE.SgEstado as uf
      ,PessoaEndereco.logradouro as endereco
      ,PessoaEndereco.numero as numero
      ,PessoaEndereco.complemento as complemento
      ,PessoaEndereco.bairro as bairro
      ,PessoaEndereco.cep as cep
      ,Pessoa.telefone as telefone
      ,Pessoa.email as email
  FROM NFe_Express.dbo.Pessoa
left join NFe_Express.dbo.PessoaEndereco on PessoaEndereco.idpessoa = Pessoa.idpessoa
left join NFe_Express.dbo.MunicIBGE on MunicIBGE.cdMunic = PessoaEndereco.cdMunic
left join NFe_Express.dbo.UfIBGE on UfIBGE.cdUF = MunicIBGE.cdUF
where idtipopessoacadastro = '2' and Pessoa.idempresa = '1'   -----CLIENTES
