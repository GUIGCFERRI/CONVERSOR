SELECT
       Codigo as codigo
      ,Descricao as nome
      ,Contato as contato
      ,[Cpf ou Cgc] as cnpj_cnpf
      ,[Rg ou Inscricao Estadual] as ie_rg
      ,Endereco as endereco
      ,Bairro as bairro
      ,Cep as cep
      ,Cidade as cidade
      ,Estado as uf
      ,Fone as telefone
      ,Fax as fax
      ,Celular as celular
      ,Email as email
      ,[Estado Civil] as est_civil
      ,Observacao as observacoes
      ,[Data Nascimento] as nascimento
      ,[Filiacao Pai] as pai
      ,[Filiacao Mae] as mae
      ,[Nome Conjuje] as conjuge
      ,Observacoes as observacoes
  FROM BD_LOJA_SP.dbo.Clientes
