select cadforne.nom_fornec as nome,
cadforne.num_cnpj as cnpj_cnpf,
cadforne.num_inscest as ie_rg,
cadforne.end_fornec as endereco,
cadforne.cid_fornec as cidade,
cadforne.est_fornec as uf,
cadforne.cep_fornec as cep,
cadforne.num_fone as telefone,
cadforne.num_fax as fax,
cadforne.bai_fornec as bairro,
cadforne.num_endereco as endereco,
cadforne.nom_email as email
from cadforne
