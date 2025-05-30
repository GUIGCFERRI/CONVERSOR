select
forneced.`CodFor` as codigo,
`forneced`.`NomFor` as nome,
forneced.`RazSoc` as fantasia,
forneced.`TelFor` as telefone,
forneced.`FaxFor` as fax,
forneced.`CelFor` as celular,
forneced.nomcon as contato,
forneced.rua as endereco,
forneced.`Numero`,
`forneced`.`Comple` as complemento,
`forneced`.bairro,
forneced.cidade,
forneced.`Estado` as uf,
forneced.cep,
forneced.`email`,
case when forneced.cpf is null or forneced.cpf='' then forneced.`Cnpj`
else forneced.cpf end as cnpj_cnpf,
forneced.`InscEst` as ie_rg,
forneced.`Observ` as observacoes
from forneced
