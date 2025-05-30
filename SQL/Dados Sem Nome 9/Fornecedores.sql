select
    pjuridica.pjcodigo AS CODIGO,
    pjuridica.pjnome AS NOME,
    pjuridica.pjfantasia AS FANTASIA,
    pjuridica.pjendereco AS ENDERECO,
    pjuridica.pjnrend AS NUMERO,
    pjuridica.pjcomplemento AS COMPLEMENTO,
    pjuridica.pjbairro AS BAIRRO,
    pjuridica.pjcep AS CEP,
    municipio.munnome as cidade,
    municipio.munuf as UF,
    pjuridica.pjnrfone AS TELEFONE,
    pjuridica.pjnrfax AS FAX,
    pjuridica.pjcnpj AS CNPJ_CNPF,
    pjuridica.pjie AS IE_RG
from pjuridica
left join municipio on (pjuridica.muncodigo = municipio.muncodigo)
where pjuridica.pjcodigo > 0
