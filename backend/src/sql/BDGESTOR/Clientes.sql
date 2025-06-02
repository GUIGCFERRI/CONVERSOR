SELECT 
       ClienteFornecedor.idClienteFornecedor as codigo
       ,ClienteFornecedor.nomeClienteFornecedor as nome
      ,ClienteFornecedor.endereco as endereco
      ,ClienteFornecedor.numeroEndereco as numero
      ,ClienteFornecedor.nomeBairro as bairro
      ,ClienteFornecedor.complemento as complemento
      ,Cidade.nomecidade as cidade  
      ,Cidade.uf as uf
      ,case when ClienteFornecedor.cpf = '' or ClienteFornecedor.cpf is null then ClienteFornecedor.CpfCnpj else ClienteFornecedor.cpf END as CNPJ_CNPF
      ,case when ClienteFornecedor.rg = '' or ClienteFornecedor.rg is null then ClienteFornecedor.ie else ClienteFornecedor.rg END as IE_RG
      ,ClienteFornecedor.cep as cep
      ,cast (ClienteFornecedor.dataNascimento as date) as nascimento
      ,ClienteFornecedor.estadoCivil as est_civil
      ,ClienteFornecedor.sexo as sexo
      ,ClienteFornecedor.conjuge as conjuge
      ,ClienteFornecedor.nomePai as pai
      ,ClienteFornecedor.nomeMae as mae
      ,ClienteFornecedor.observacao as observacoes
      ,ClienteFornecedor.numeroTelefone as telefone
      ,ClienteFornecedor.numeroTelefoneCel as celular
  FROM BDGESTOR.dbo.ClienteFornecedor
left join BDGESTOR.dbo.Cidade on Cidade.idCidade = ClienteFornecedor.idCidade
where ClienteFornecedor.tipoClienteFornecedor = 'Cliente'
