select
	cdforn as CODIGO,
	razao as NOME,
	fantasia as FANTASIA,
	cnpj as CNPJ_CNPF,
	ie as IE_RG,
	im as IM,
	endereco as ENDERECO,
	endnum as NUMERO,
	endcompl as COMPLEMENTO,
	bairro as BAIRRO,
	ecosis.cidades.cidade as CIDADE,
	cep as CEP,
	fone1 as TELEFONE,
	fone2 as FAX,
	celular as CELULAR,
	email as EMAIL,
	observacao as OBSERVACOES
from fornecedor
 left join cidades on fornecedor.cdcidade=cidades.cdcidade
