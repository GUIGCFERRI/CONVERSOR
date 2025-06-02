select
	C.codigo as CODIGO,
	C.nome_fantasia as NOME,
	C.nome as FANTASIA,
	C.endereco as ENDERECO,
	C.endereco_numero as NUMERO,
	C.complemento as COMPLEMENTO,
	C.bairro as BAIRRO,
	C.sigla_estado as UF,
	C.cep as CEP,
	C.telefone_fixo as TELEFONE,
	C.telefone_fixo_obs as FAX,
	C.telefone_movel as CELULAR,
	C.email as EMAIL,
	CD.NOME as CIDADE,
	case when C.cpf = '   .   .   -  ' or C.cpf is null then C.CNPJ else C.CPF end as CNPJ_CNPF,
	case when C.rg = '' or C.RG is null then C.inscricao_estadual else C.RG end as IE_RG,
	C.data_nascimento as NASCIMENTO,
	C.nome_pai as PAI,
	C.nome_mae as MAE
from maxctrl_empresa_000001.clientes C
left join maxctrl_empresa_000001.CIDADES CD on CD.codigo_cidade=C.codigo_cidade