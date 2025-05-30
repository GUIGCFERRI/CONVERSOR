select
    c.codigo as codigo,
    c.nome as nome,
    c.apelido as contato,
    c.cpfcnpj as cnpj_cnpf,
    case when c.ie = '' or c.ie is null then c.rg else c.ie END AS IE_RG,
    c.endereco as endereco,
    c.endereconumero as numero,
    c.complemento as complemento,
    c.bairro as bairro,
    m.nome as cidade,
    e.uf as uf,
    c.cep as cep,
    concat (ct.ddd, '' , ct.telefone) as celular,
    c.email as email,
    c.obs as observacoes,
    c.limitecredito as limite_credito,
    c.estcivil as est_civil,
    c.sexo as sexo,
    c.dtcadastro as cadastro,
    c.dtnascimento as nascimento
from clientes as c
left join clientes_telefones ct on c.codigo = ct.codcliente
left join municipios m on c.codmunicipio = m.codibge
left join estados e on m.codestado = e.codibge
