select fornec.recno as codigo,
fornec.fantasia,
fornec.nome,
fornec.contato,
`fornec`.cgc as cnpj_cnpf,
fornec.`inscricaoestadual` as ie_rg,
fornec.`endereco`,
fornec.numero,
fornec.bairro,
fornec.cidade,
fornec.uf,
fornec.cep,
fornec.email
from fornec
