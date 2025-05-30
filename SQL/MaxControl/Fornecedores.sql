select
	F.codigo as CODIGO,
	F.nome_fantasia as NOME,
	F.nome as FANTASIA,
	F.endereco as ENDERECO,
	F.endereco_numero as NUMERO,
	F.complemento as COMPLEMENTO,
	F.bairro as BAIRRO,
	F.sigla_estado as UF,
	CD.nome as CIDADE,
	F.cep as CEP,
	F.telefone_fixo as TELEFONE,
	F.telefone_fax as FAX,
	F.email as EMAIL,
	F.cnpj as CNPJ_CNPF,
	F.inscricao_estadual as IE_RG
from maxctrl_empresa_000001.fornecedores F
left join maxctrl_empresa_000001.CIDADES CD on CD.codigo_cidade=F.codigo_cidade 