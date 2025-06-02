SELECT
    t.transportadora_codigo AS codigo,
    t.razao_social as razao_social,
    t.logradouro AS endereco,
    t.numero as numero,
    t.complemento as complemento,
    t.bairro as bairro,
    t.cep as cep,
    c.descricao AS cidade,
    c.sigla_estado as uf,
    t.fone[1] AS telefone,
    t.email as email,
    t.cpf_cnpj AS cnpj,
    t.insc_estadual AS ie,
    NULL AS placa,  -- especifique a origem se existir
    NULL AS ufv,    -- especifique a origem se existir
    t.rntrc
FROM
    transportadora t
LEFT JOIN
    cidade c ON c.id_cidade = t.id_cidade;