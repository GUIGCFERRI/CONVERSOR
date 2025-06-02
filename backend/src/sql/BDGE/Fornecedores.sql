select TB_FORNECEDOR.CD_FORNECEDOR as codigo,
tb_fornecedor.DS_RAZAO_SOCIAL as nome,
tb_fornecedor.DS_FANTASIA as fantasia,
TB_FORNECEDOR.NR_CGC_CPF as cnpj_cnpf,
TB_FORNECEDOR.DS_ENDERECO as endereco,
tb_fornecedor.DS_BAIRRO as bairro,
tb_cidade.DS_CIDADE as cidade,
tb_uf.cd_UF as uf,
tb_fornecedor.DS_FONE1 as telefone,
tb_fornecedor.DS_FONE2 as celular,
tb_fornecedor.ds_contato as contato,
tb_fornecedor.DS_EMAIL as email,
tb_fornecedor.DS_OBSERVACAO as observacoes,
tb_fornecedor.NR_INSC_ESTADUAL as ie_rg
from tb_fornecedor
left join tb_cidade on tb_fornecedor.CD_CIDADE=TB_CIDADE.CD_CIDADE
left join tb_uf on tb_cidade.CD_UF=tb_uf.CD_UF

