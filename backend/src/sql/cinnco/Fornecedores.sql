select tb_cadclientefornec.codigo as personal1,
tb_cadclientefornec.nome,
tb_cadclientefornec.fantasia,
tb_cadclientefornec.cgc as cnpj_cnpf,
tb_cadclientefornec.endereco,
tb_cadclientefornec.numero,
tb_cadclientefornec.bairro,
tb_cadclientefornec.complemento,
tb_cadclientefornec.cep,
tb_cadclientefornec.fone as telefone,
tb_cadclientefornec.celular,
tb_cadclientefornec.fax,
tb_cadclientefornec.email,
tb_cadclientefornec.empcomercial as loctra,
tb_cadclientefornec.ierg as ie_rg,
tb_cadclientefornec.ultimavenda as ultima_venda,
tb_cadmunicipio.descricao as cidade,
tb_cadmunicipio.uf,
tb_cadclientefornec.pai,
tb_cadclientefornec.mae
from tb_cadclientefornec
left join tb_cadmunicipio on tb_cadclientefornec.codcidade=tb_cadmunicipio.codigo
where tb_cadclientefornec.tipo=2

