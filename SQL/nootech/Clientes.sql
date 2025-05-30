select
    pessoa.idpessoa as codigo,
    pessoa.nome as nome,
    pessoa.sobrenome as fantasia,
    pessoa.cnpjcpf as cnpj_cnpf,
    pessoa.ie as ie_rg,
    pessoa.logradouro as endereco,
    pessoa.numero as numero,
    pessoa.complemento as complemento,
    pessoa.bairro as bairro,
    pessoa.municipio as cidade,
    pessoa.uf as uf,
    pessoa.cep as cep,
    pessoa_contato.fone as telefone,
    pessoa_contato.celular as celular,
    pessoa_contato.email as email,
    pessoa.observacao as observacoes,
    pessoa.datacadastro as cadastro,
    pessoa.idusuariocadastro
from pessoa
left join pessoa_contato on pessoa_contato.idpessoa = pessoa.idpessoa
where pessoa.tipo <> 'F' -----CLIENTES
