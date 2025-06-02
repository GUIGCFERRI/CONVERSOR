select tb_cliente.CD_CLIENTE as codigo,
tb_cliente.DS_NOME_RAZAO_SOCIAL as nome,
tb_cliente.DS_FANTASIA as fantasia,
tb_cliente.NR_CGC_CPF as cnpj_cnpf,
tb_cliente.DS_CONTATO as contato,
tb_cliente.DS_ENDERECO as endereco,
tb_cliente.DS_BAIRRO as bairro,
tb_cidade.DS_CIDADE as cidade,
tb_uf.cd_UF as uf,
TB_CLIENTE.nr_cep as cep,
TB_CLIENTE.DS_FONE1 as telefone,
tb_cliente.ds_fone2 as celular,
tb_cliente.NR_INSC_ESTADUAL as ie_rg,
tb_cliente.DS_EMAIL as email
from tb_cliente 
left join tb_cidade on tb_cliente.CD_CIDADE=tb_cidade.CD_CIDADE
left join tb_uf on TB_CIDADE.CD_UF=tb_uf.CD_UF

