select cadcli_lng_codigo AS CODIGO,
cadcli_str_cpf AS CNPJ_CNPF,
cadcli_str_nome AS NOME,
cadcli_str_apelido AS FANTASIA,
cadcli_str_logradouro AS ENDERECO,
cadcli_str_cidade AS CIDADE,
cadcli_str_bairro AS BAIRRO,
cadcli_str_cep AS CEP,
cadcli_str_uf AS UF,
cadcli_str_telefax AS TELEFONE,
cadcli_str_celular AS CELULAR,
cadcli_dtm_nascim AS NASCIMENTO,
cadcli_str_email AS EMAIL,
cadcli_str_pai AS PAI,
cadcli_str_mae AS MAE,
cadcli_lng_limitefiado AS LIMITE_CREDITO,
cadcli_str_contato AS CONTATO,
cadcli_str_obs AS OBSERVACOES
from dbo.Cadastro_Clientes
