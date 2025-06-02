SELECT
       cliente.Codcliente AS CODIGO
      ,cliente.nomerazao AS NOME
      ,cliente.nomefantasia AS FANTASIA
      ,cliente.contato AS CONTATO
      ,cliente.ie AS IE_RG
      ,cliente.cnpj AS CNPJ_CNPF
      ,cliente.endereco AS ENDERECO
      ,cliente.Numero AS NUMERO
      ,cliente.bairro AS BAIRRO
      ,cliente.cidade AS CIDADE
      ,cliente.estado AS UF
      ,cliente.cep AS CEP
      ,cliente.tel AS TELEFONE
      ,cliente.fax AS FAX
      ,cliente.email AS EMAIL
      ,cliente.data_cad AS CADASTRO
      ,cliente.Limitecrediro AS LIMITE_CREDITO
      ,cliente.NomePai AS PAI
      ,cliente.NomeMae AS MAE
      ,cliente.data_nasc AS NASCIMENTO
      ,cliente.estadocivil AS EST_CIVIL
      ,cliente.conjuge AS CONJUGE  
      ,cliente.Obs AS OBSERVACOES
  FROM Comercio.dbo.cliente