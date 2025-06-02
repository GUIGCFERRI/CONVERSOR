select cadclien.nom_cliente as nome,
cadclien.num_cnpj as cnpj_cnpf,
cadclien.num_ident as ie_rg,
cadclien.end_cliente as endereco,
cadclien.cid_cliente as cidade,
cadclien.cep_cliente as cep,
cadclien.num_fone as telefone,
cadclien.nom_observacao as observacoes,
cadclien.bai_cliente as bairro,
cadclien.est_cliente as uf,
cadclien.cmp_endereco as complemento,
cadclien.dat_cadastro as cadastro,
cadclien.nom_email as email
from cadclien
