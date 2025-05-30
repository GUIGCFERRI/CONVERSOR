select pessoas.codigo,
pessoas.nome,
pessoas.nomefantasia as fantasia,
pessoas.endereco,
pessoas.bairro,
pessoas.cidade,
pessoas.estado as uf,
pessoas.cep,
concat(pessoas.ddd,pessoas.telefone1) as telefone,
pessoas.fax,
pessoas.email,
pessoas.contato,
pessoas.cpfcgc as cnpj_cnpf,
pessoas.inscricaoidentidade as ie_rg,
pessoas.complemento,
CAST(pessoas.datacriado as date)as cadastro
from pessoas
where pessoas.codigo>0


