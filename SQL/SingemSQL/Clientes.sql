SELECT 
       Cliente as Codigo
      ,Nome as Nome
      ,Endereco as Endereco
      ,Bairro as Bairro
      ,Cidade as Cidade
      ,UF as UF
      ,CEP as CEP
      ,Inscricao as IE_RG
      ,CGC as CNPJ_CNPF
      ,Fone as Telefone
      ,Contato as Contato
      ,Limite as Limite_Credito
      ,Nascimento as Nascimento
      ,Fantasia as Fantasia
      ,Aniversario as Aniversario
      ,Fax as Fax
      ,EMail as Email
      ,Observacoes as Observações
      ,PontoReferencia as Complemento
      ,Numero as Numero
      ,Celular as Celular
      ,EstCivil as Est_Civil
      ,Profissao as Profissao
  FROM SingemSQL.dbo.Cad_Clientes
  WHERE CLIENTE <> 'AUTO'