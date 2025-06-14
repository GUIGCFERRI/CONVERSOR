select 
cadcli.cliente as codigo,
cadcli.nome,
cadcli.fantasia,
cadcli.conjuge,
cadcli.nascimento,
cadcli.endereco,
cadcli.numero,
cadcli.bairro,
cadcli.cidade,
cadcli.estado as uf,
cadcli.referencia as complemento,
cadcli.cep,
cadcli.ddd || cadcli.fone as telefone,
cadcli.fax,
cadcli.ddd_celular || cadcli.celular as celular,
cadcli.identidade as IE_RG,
cadcli.cpf as CNPJ_CNPF,
cadcli.conjuge,
cadcli.dtabertura as cadastro,
cadcli.pai as pai,
cadcli.mae as mae,
cadcli.e_mail as email,
cadcli.texto as observacoes,
cadcli.endereco_cob as COD_ENDERECO,
cadcli.numero_cob as cob_numero,
cadcli.bairro_cob as cob_bairro,
cadcli.cidade_cob as cob_cidade,
cadcli.estado_cob as cob_uf,
cadcli.cep_cob as cob_cep
from cadcli
