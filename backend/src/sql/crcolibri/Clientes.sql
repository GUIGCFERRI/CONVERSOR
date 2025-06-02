SELECT
       cliente.nome AS NOME
      ,cliente.sexo AS SEXO
      ,cliente.cnpj_cpf AS CNPJ_CNPF
      ,cliente.ie_rg AS IE_RG
      ,cliente.endereco AS ENDERECO
      ,cliente.numero AS NUMERO
      ,cliente.complemento AS COMPLEMENTO
      ,cliente.bairro AS BAIRRO
      ,cliente.referencia AS OBSERVACOES
      ,cliente.cep AS CEP
      ,cliente.cidade AS CIDADE
      ,cliente.estado AS UF
      ,cliente.telefone AS TELEFONE
      ,cliente.email AS EMAIL
      ,cliente.fax AS FAX
      ,cliente.dt_cadastro AS CADASTRO
      ,cliente.limite_conta AS LIMITE_CREDITO
      ,cliente.dt_nascimento AS NASCIMENTO
  FROM colibri8.dbo.cliente
