 select SM_CD_MO_MOVIMENTADOR.cod as codigo,
 SM_CD_MO_MOVIMENTADOR.pd_nome as nome,
 SM_CD_MO_MOVIMENTADOR.pd_data as cadastro,
 SM_CD_MO_MOVIMENTADOR.pd_cnpj_cpf as cnpj_cnpf,
 SM_CD_MO_MOVIMENTADOR.pd_fantasia as fantasia,
 SM_CD_MO_MOVIMENTADOR.pd_endereco as endereco,
 SM_CD_MO_MOVIMENTADOR.pd_numero as numero,
 SM_CD_MO_MOVIMENTADOR.pd_bairro as bairro,
 SM_CD_MO_MOVIMENTADOR.pd_complemento as complemento,
 SM_CD_MO_MOVIMENTADOR.pd_cep as cep,
 ST_CD_CIDADES.nome as cidade,
 SM_CD_MO_MOVIMENTADOR.pd_movel as celular,
 SM_CD_MO_MOVIMENTADOR.pd_fone as telefone,
 SM_CD_MO_MOVIMENTADOR.pd_fax as fax,
 SM_CD_MO_MOVIMENTADOR.pd_dtanascconst as nascimento,
 SM_CD_MO_MOVIMENTADOR.pd_email as email,
 case when SM_CD_MO_MOVIMENTADOR.pd_cnpj_cpf_tipo = 0 then
 SM_CD_MO_MOVIMENTADOR.pd_ie else
 SM_CD_MO_MOVIMENTADOR.pd_rg end "IE_RG",
 SM_CD_MO_MOVIMENTADOR.ec_endereco as cob_endereco,
 SM_CD_MO_MOVIMENTADOR.ec_numero as cob_numero,
 SM_CD_MO_MOVIMENTADOR.ec_bairro as cob_bairro,
 SM_CD_MO_MOVIMENTADOR.ec_complemento cob_complemento,
 ST_CD_CIDADES.nome as cob_cidade,
 SM_CD_MO_MOVIMENTADOR.ec_cep as cob_cep,
 SM_CD_MO_MOVIMENTADOR.ob_observacao as observacoes,
 ST_CD_CIDADES.uf
 from  SM_CD_MO_MOVIMENTADOR
 left join st_cd_cidades on  SM_CD_MO_MOVIMENTADOR.pd_cidade = st_cd_cidades.codigo
 where SM_CD_MO_MOVIMENTADOR.tipo = 1

