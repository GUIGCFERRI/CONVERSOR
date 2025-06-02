select
  forneced.CODFOR as codigo,
  forneced.NOMFOR as nome,
  forneced.FANTASIA as fantasia,
  forneced.CGCFOR as cnpj_cnpf,
  forneced.INSFOR as ie_rg,
  forneced.ENDFOR as endereco,
  forneced.NUMERO_ENDERECO as numero,
  forneced.COMPLEMENTO_ENDERECO as complemento,
  forneced.BAIFOR as bairro,
  forneced.CEPFOR as cep,
  forneced.CIDFOR as cidade,
  forneced.ESTFOR as uf,
  forneced.FONFOR as telefone,
  forneced.FAXFOR as fax,
  forneced.E_MAIL as email,
  forneced.HISTORIC as observacoes
from forneced