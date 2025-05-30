
SELECT
  PESSOA.pes_cd_codigo_externo AS CODIGO,
  PESSOA.pes_ds_nome AS NOME,
  pessoa_JURIDICA.pJU_ds_CNPJ AS CNPJ_CNPF,
  pessoa_JURIDICA.pju_ds_inscricaoestadual AS IE_RG, 
  PESSOA.pes_ds_logradouro AS ENDERECO,
  PESSOA.pes_ds_complementoendereco AS COMPLEMENTO, 
  PESSOA.pes_ds_cep AS CEP, 
  PESSOA.pes_cd_numero AS NUMERO, 
  PESSOA.pes_ds_bairro AS BAIRRO, 
  municipio.mun_ds_municipio AS CIDADE,
  PESSOA.pes_ds_uf AS UF,
  PESSOA.pes_ds_telefone1 AS TELEFONE, 
  PESSOA.pes_ds_celular1 AS CELULAR, 
  PESSOA.pes_ds_email AS EMAIL,
  PESSOA.pes_dt_inclusao AS CADASTRO
  FROM PESSOA
  LEFT JOIN pessoa_JURIDICA ON PESSOA.pes_cd_pessoa = pessoa_JURIDICA.pJU_cd_pessoa
  LEFT JOIN MUNICIPIO ON pessoa.pes_cd_municipio = municipio.mun_cd_municipio
  WHERE PESSOA.pes_fl_tipopessoa = 'J'