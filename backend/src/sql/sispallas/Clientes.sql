select
  cod_cli as CODIGO, 
  nome_cli AS NOME,
  rg_cli AS IE_RG, 
  cpf_cli AS CNPJ_CNPF,
  tel_cli AS TELEFONE, 
  email_cli AS EMAIL, 
  dt_cad_cli AS CADASTRO, 
  cep_cli AS CEP,
  endereco_cli AS ENDERECO, 
  num_end_cli AS NUMERO, 
  comp_cli AS COMPLEMENTO, 
  bairro_cli AS BAIRRO, 
  cidade_cli AS CIDADE, 
  estado_cli AS UF, 
  obs_cli AS OBSERVACOES, 
  im_cli AS IM, 
  nome_pai AS PAI, 
  nome_mae AS MAE


from cliente
