SELECT 
  C.Codigo as PERSONAL1
, C.Nome
, C.Fantasia
, C.Rg_Cgc as CNPJ_CNPF
, C.Cpf_Inscricao as IE_RG 
, C.Inscricao_Municipal as IM
, C.Rua as ENDERECO
, C.Compl as COMPLEMENTO
, C.Bairro
, C.Cidade
, C.UF
, C.Cep
, C.Fone1 as TELEFONE
, C.Fone2 as PERSONAL2
, C.Fax
, C.Celular
, C.Data_Nascimento as NASCIMENTO
, C.Data_Cadastro as CADASTRO
, C.Credito as LIMITE_CREDITO
, C.email1 as EMAIL
, C.Observacao as OBSERVACOES
, C.Numero
, CASE C.Consumidor_Final
        WHEN 'Sim' THEN '9'
        WHEN 'Não' THEN '1'
        END as INDIEDEST
FROM Cliente C