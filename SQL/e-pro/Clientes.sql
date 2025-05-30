SELECT
       cli_nome as nome
      ,cli_rg as ie_rg
      ,cli_cpf as cnpj_cnpf
      ,cli_logradouro as endereco
      ,cli_numero as numero
      ,cli_complemento as complemento
      ,cli_bairro as bairro
      ,Cidade.cid_nome as cidade
      ,Estado.est_sigla as uf
      ,cli_telefone as telefone
      ,cli_celular as celular
      ,cli_cep as cep
  FROM [BKP2605203].dbo.Cliente
  left join [BKP2605203].dbo.cidade on Cliente.cid_codigo = Cidade.cid_codigo
  left join [BKP2605203].dbo.Estado on Cidade.cid_estado = Estado.est_codigo
