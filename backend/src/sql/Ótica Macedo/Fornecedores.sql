select
    f.codigo as codigo,
    f.nome as nome,
    f.contato as contato,
    f.cpfcnpj as cnpj_cnpf,
    case when f.ie = '' or f.ie is null then f.rg else f.ie END AS IE_RG,
    f.endereco as endereco,
    f.endereconumero as numero,
    f.complemento as complemento,
    f.bairro as bairro,
    m.nome as cidade,
    e.uf as uf,
    f.cep as cep,
    f.email as email,
    concat (ft.ddd, '' , ft.telefone) as celular,
    f.obs as observacoes
from fornecedores as f
left join fornecedores_telefones ft on f.codigo = ft.codfornecedor
left join municipios m on f.codmunicipio = m.codibge
left join estados e on m.codestado = e.codibge
