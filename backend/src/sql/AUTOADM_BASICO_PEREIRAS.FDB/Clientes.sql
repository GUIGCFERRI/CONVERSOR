SELECT
TB_PESSOA.nm_pessoa as nome,
TB_PESSOA.nm_fantasia as fantasia,
case when TB_PESSOA.fg_fisica_juridica = 'F' then
TB_PESSOA.nr_cpf else TB_PESSOA.nr_cnpj end "CNPJ_CNPF",
case when TB_PESSOA.fg_fisica_juridica = 'F' then
TB_PESSOA.nr_rg else TB_PESSOA.nr_ie end "IE_RG",
tb_cidade.nm_cidade as cidade,
tb_estado.sg_estado as uf,
TB_PESSOA.ds_logradouro as endereco,
TB_PESSOA.ds_bairro as bairro,
TB_PESSOA.ds_complemento AS COMPLEMENTO,
TB_PESSOA.ds_cep AS CEP,
TB_PESSOA.ds_email AS EMAIL,
TB_PESSOA.ds_telefone AS TELEFONE,
TB_PESSOA.ds_fax AS FAX,
TB_PESSOA.ds_celular AS CELULAR,
TB_PESSOA.nm_contato AS CONTATO,
TB_PESSOA.nm_mae AS MAE,
TB_PESSOA.nm_pai AS PAI,
TB_PESSOA.nm_conjuge AS CONJUGE,
TB_PESSOA.ds_observacao AS OBSERVACOES,
CAST (TB_PESSOA.dt_inclusao AS DATE)AS CADASTRO,
CAST(TB_PESSOA.dt_nascimento AS DATE) AS NASCIMENTO
FROM TB_PESSOA
LEFT JOIN TB_CIDADE ON TB_PESSOA.cd_cidade = TB_CIDADE.cd_cidade
LEFT JOIN TB_ESTADO ON TB_CIDADE.cd_estado = TB_ESTADO.cd_estado
WHERE TB_PESSOA.fg_cliente ='S'

