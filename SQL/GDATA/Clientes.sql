select tbl_clientes.CodEmp as codigo,
tbl_clientes.RAZAO as nome,
concat(tbl_clientes.DescTipoLogradouro,' ',tbl_clientes.LOGRADOURO) as endereco,
tbl_clientes.NUMERO,
tbl_clientes.COMPLEMENTO,
tbl_clientes.CEP,
tbl_clientes.TELEFONE,
tbl_clientes.fax,
tbl_clientes.EMAIL,
tbl_clientes.DTCADASTRO as cadstro,
coalesce(tbl_clientes.CNPJ,tbl_clientes.CPF) as cnpj_cnpf,
tbl_clientes.CodEstado as uf,
TBL_CIDADES.DESCCID as cidade,
tbl_clientes.OBSERVACAO as observacoes
from tbl_clientes
left join TBL_CIDADES on tbl_clientes.CodCid=tbl_cidades.CodCid


