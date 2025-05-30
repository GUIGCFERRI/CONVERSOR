SELECT 
  COD_Aluno as CODIGO
, Nome
, Nome_Fantasia as FANTASIA
, data_Nascimento as NASCIMENTO
, case when cadastro.CPF = '' or cadastro.CPF is null or cadastro.CPF = '000.000.000-00' then cadastro.CNPJ else cadastro.CPF END AS CNPJ_CNPF
, case when RG = '' or RG is null then Insc_Estadual else RG END AS IE_RG
, Endereco
, Num as NUMERO
, complemento
, Bairro
, Cidade
, UF
, CEP
, Telefone
, Telefone2 as CELULAR
, Telefone3 as FAX
, Obs as OBSERVACOES
, Email
, Profissao
, Nome_Pai as PAI
, Nome_Mae as MAE
, Conjugue
, Limitecredito as LIMITE_CREDITO
, data_ultima_compra as ULTIMA_VENDA
FROM cadastro
