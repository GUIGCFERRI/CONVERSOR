select sdm201.`CFO_COD_CFO` as codigo,
sdm201.`CFO_NUM_INS` as CNPJ_CNPF,
sdm201.`CFO_IE_CFO` as IE_RG,
sdm201.`CFO_NOME_CFO` as nome,
sdm201.`CFO_APE_CFO` as fantasia,
sdm201.`CFO_END_CFO` as endereco,
sdm201.`CFO_NUM_END` as numero,
sdm201.`CFO_CPL_END` as complemento,
sdm201.`CFO_BAI_CFO` as bairro,
CONCAT(sdm201.`CFO_CEP_CFO`,sdm201.`CFO_CCEP_CFO`) as cep,
sdm201.`CFO_CID_CFO` as cidade,
sdm201.`CFO_EST_CFO` as uf,
CONCAT( sdm201.`CFO_DDD_FONE`, sdm201.`CFO_NUM_FONE`) as telefone,
CONCAT(sdm201.`CFO_DDD_FAX`, sdm201.`CFO_NUM_FAX`) as fax,
CONCAT(sdm201.`CFO_DDD_CEL`,sdm201.`CFO_NUM_CEL`) as celular,
sdm201.`CFO_EMAIL_CFO` as email
from sdm201
where sdm201.`CFO_TPO_CFO` <> 'C'
