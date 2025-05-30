select
	cliente.cdcliente as CODIGO,
	cliente.razao as NOME,
	cliente.fantasia as FANTASIA,
	cliente.dtnascto as NASCIMENTO,
	cliente.cpf_cnpj as CNPJ_CNPF,
	cliente.rg_ie as IE_RG,
	cliente.endereco as ENDERECO,
	cliente.endnum as NUMERO,
	cliente.endcompl as COMPLEMENTO,
	cliente.bairro as BAIRRO,
	cliente.cep as CEP,
	cidades.cidade as CIDADE,
	-- cliente.dtcadastro as CADASTRO,
	cliente.observacao as OBSERVACOES,
	cliente.nomemae as MAE,
	cliente.nomepai as PAI,
	MAX(cliente_fone.fone) as TELEFONE
from cliente
	left join cidades on cliente.cdcidade=cidades.cdcidade
    left join cliente_fone on cliente_fone.cdcliente=cliente.cdcliente 
     group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
