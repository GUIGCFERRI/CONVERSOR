select   
    pessoa.nome,
    coalesce (pessoa.inscricaoestadual,'') || coalesce(pessoa.rg,'') as ie_rg,
    pessoa.telefoneprincipal as telefone,
    pessoa.celularprincipal as celular,
    pessoa.nomefantasia as fantasia,
    pessoa.emailprincipal as email,  
    coalesce(pessoa.cpf,'') || coalesce (pessoa.cnpj,'') as cnpj_cnpf,
    pessoa.inscricaomunicipal as im,
    pessoa.logradouro as endereco,
    pessoa.numerologradouro as numero,
    pessoa.complemento,
    pessoa.bairro,
    pessoa.nomemunicipio as cidade,
    ufestado.sigla as uf,
    pessoa.cep,
    pessoa.nomedopai as pai,
    pessoa.nomedamae as mae
from dbo.pessoa
left join dbo.ufestado on pessoa.iduf = ufestado.id
where pessoa.tipodepessoa = '1'
