SELECT
       teleentrega.id as codigo
      ,teleentrega.NomeCliente as nome
      ,teleentrega.CPF_CNPJ as cnpj_cnpf
      ,teleentrega.RG as ie_rg
      ,teleentrega.Email as email
      ,teleentrega.Rua as endereco
      ,teleentrega.Bairro as bairro
      ,teleentrega.NumeroEndereco as numero
      ,CONCAT (teleentrega.Complemento , '/' , teleentrega.Referencia) AS complemento
      ,teleentrega.CEP as cep
      ,Cidade.Nome as cidade
      ,uf.Sigla as uf
      ,teleentrega.NumeroTelefone as telefone
      ,cast (teleentrega.Data as date) as cadastro
      ,CONCAT (teleentrega.Observacao , '/' , teleentrega.ObservacaoCliente) AS observacoes 
  FROM teleentrega
  left join Cidade on Cidade.Id = TeleEntrega.IdCidade
  left join uf on uf.Id = cidade.IdUF