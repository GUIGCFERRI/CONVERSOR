SELECT
  pessoa.PessoaId as codigo,
  pessoa.Nome as nome,
  pessoa.RazaoSocial as fantasia,
  pessoa.CNPJ_CPF as cnpj_cnpf,
  pessoa.IE_RG as ie_rg,
  pessoa.IM as im,
  endereco.Logradouro as endereco,
  endereco.Numero as numero,
  endereco.Complemento as complemento,
  endereco.Bairro as bairro,
  endereco.Cidade as cidade,
  endereco.Uf as uf, 
  endereco.CEP as cep,
  pessoa.Telefone as telefone,
  pessoa.Celular as celular,
  pessoa.Email as email,
  pessoa.Observacao as observacoes
FROM pessoa
left join endereco on endereco.pessoaid = pessoa.PessoaId
left join pessoatipo on pessoatipo.pessoaid = pessoa.PessoaId
where pessoatipo.Tipofornecedor = '1'