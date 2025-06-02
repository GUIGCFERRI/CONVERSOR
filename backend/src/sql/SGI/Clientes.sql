SELECT 
       Pessoas.codigo as codigo
      ,Pessoas.nome as nome
      ,Pessoas.fantasia as fantasia
      ,CEP.numero as cep
      ,Cidade.estado as uf
      ,Cidade.nome as cidade
      ,Bairro.nome as bairro
      ,Logradouro.nome as endereco
      ,Pessoas.numero as numero
      ,Pessoas.complemento as complemento
      ,Telefone.telefone as telefone
      ,Pessoas.email as email
      ,Pessoas.cpf_cnpj as cnpj_cnpf
      ,Pessoas.rg_insc_est as ie_rg
      ,cast (Pessoas.nascimento as date) as nascimento
      ,Pessoas.observacao as observacoes
      ,Pessoas.insc_municipal as im
      ,cast (Pessoas.data_cadastro as date) as cadastro
  FROM SGI.dbo.Pessoas
  left join SGI.dbo.CEP on CEP.codigo = Pessoas.cep
  left join SGI.dbo.Cidade on Cidade.codigo = Cep.cidade
  left join SGI.dbo.Bairro on Bairro.codigo = Cep.bairro
  left join SGI.dbo.Logradouro on Logradouro.codigo = cep.logradouro
  left join SGI.dbo.Telefone on TElefone.pessoa = Pessoas.codigo
  where Pessoas.tipocli = 'C' --CLIENTES
