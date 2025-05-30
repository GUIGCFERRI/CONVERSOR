SELECT
       TOTAL_CLIENTE.idCliente as codigo
      ,case when TOTAL_CLIENTE.nomeCompleto = '' or TOTAL_CLIENTE.nomeCompleto is null then TOTAL_CLIENTE.razaoSocial else TOTAL_CLIENTE.nomeCompleto END AS nome
      ,case when TOTAL_CLIENTE.nomeCompleto = '' or TOTAL_CLIENTE.nomeCompleto is null then TOTAL_CLIENTE.nomeFantasia else TOTAL_CLIENTE.nomeCompleto END AS fantasia
      ,case when TOTAL_CLIENTE.cpf = '' or TOTAL_CLIENTE.cpf is null then TOTAL_CLIENTE.cnpj else TOTAL_CLIENTE.cpf END AS CNPJ_CNPF
      ,case when TOTAL_CLIENTE.rg = '' or TOTAL_CLIENTE.rg is null then TOTAL_CLIENTE.inscricaoEstadual else TOTAL_CLIENTE.rg END AS IE_RG
      ,TOTAL_CLIENTE.inscricaoMunicipal as im
      ,TOTAL_CLIENTE.endereco
      ,TOTAL_CLIENTE.complemento
      ,TOTAL_CLIENTE.bairro
      ,TOTAL_CLIENTE.cep
      ,TOTAL_CIDADE.NOME as cidade
      ,TOTAL_ESTADO.uf as uf
      ,T.numero as telefone
      ,C.numero as celular
      ,TOTAL_CLIENTE.fax
      ,TOTAL_CLIENTE.email
      ,TOTAL_CLIENTE.observacoes
      ,TOTAL_CLIENTE.limite as limite_credito
      ,cast (TOTAL_CLIENTE.dataCadastro as date) as cadastro
      ,TOTAL_CLIENTE.dataNascimento as nascimento
      ,TOTAL_CLIENTE.sexo as sexo
  FROM food.dbo.TOTAL_CLIENTE
left join food.dbo.TOTAL_CIDADE on TOTAL_CIDADE.idcidade = TOTAL_CLIENTE.idCidade
left join food.dbo.TOTAL_ESTADO on TOTAL_ESTADO.idestado = TOTAL_CIDADE.idestado
left join food.dbo.TOTAL_TELEFONES T ON T.idcliente = TOTAL_CLIENTE.idCliente and T.tipo <> 'Celular'
left join food.dbo.TOTAL_TELEFONES C ON C.idcliente = TOTAL_CLIENTE.idCliente and C.tipo = 'Celular'