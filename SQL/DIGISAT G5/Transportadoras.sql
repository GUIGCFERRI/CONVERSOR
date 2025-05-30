select
                           pessoa.id as codigo
                         , substring(pessoa.nome from 1 for 60) as razao_social
                         , substring(endereco.logradouro from 1 for 60) as endereco
                         , substring(municipio.nome from 1 for 35) as cidade
                         , substring(uf.sigla from 1 for 2) as uf
                         , substring(telefone.numero from 1 for 16) as telefone
                         , substring(enderecoeletronico.endereco from 1 for 60) as email
                         , substring(doc.numero from 1 for 19) as cnpj
                         , substring(doc_ie.numero from 1 for 19) as ie
                         , substring(veiculo.placa from 1 for 8) as placa
                         , substring(veiculo.antt from 1 for 20) as rntrc
                         from pessoa
                         left join endereco on endereco.pessoaid = pessoa.id and endereco.tipo = 'Principal'
                         left join municipio on municipio.id = endereco.municipioid
                         left join uf on endereco.pessoaid = pessoa.id and endereco.municipioid = municipio.id and municipio.ufid = uf.id
                         left join telefone on telefone.pessoaid = pessoa.id and telefone.tipo = 'Principal'
                         left join enderecoeletronico on enderecoeletronico.pessoaid = pessoa.id
                         left join documento doc on doc.pessoaid = pessoa.id and doc.tipo = 'Cnpj'
                         left join documento doc_ie on doc_ie.pessoaid = pessoa.id and doc_ie.tipo = 'Ie'
                         left join veiculo on veiculo.pessoaid = pessoa.id
                         where
                          pessoa.tipocadastro = '8'
                         order by 1
