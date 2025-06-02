select
	fornecedores.codigofornecedor as CODIGO,
	fornecedores.cnpj as CNPJ_CNPF,
	fornecedores.inscricaoestadual as IE_RG,
	fornecedores.razaosocial as NOME,
	fornecedores.nomefantasia as FANTASIA,
	fornecedores.cep as CEP,
	fornecedores.estado as UF,
	fornecedores.endereco as ENDERECO,
	fornecedores.numero as NUMERO,
	fornecedores.cidade as CIDADE,
	fornecedores.bairro as BAIRRO,
	fornecedores.observacoes as OBSERVACOES,
	fornecedores.email as EMAIL,
	fornecedores.complemento as COMPLEMENTO,
	fornecedores.contato as CONTATO
from fornecedores
