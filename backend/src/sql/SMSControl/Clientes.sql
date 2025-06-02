SELECT 
       TC.CodigoDoCliente as codigo
      ,TC.RazaoSocialDoCliente as nome
      ,TC.NomeFantasiaDoCliente as fantasia
      ,TC.ContatoDoCliente as contato
      ,case when replace(TC.CnpjDoCliente,'.   .   /    -','') = '' or replace(TC.CnpjDoCliente,'.   .   /    -','') is null then replace(TC.CpfDoCliente,'.   .   /    -','') else replace(TC.CnpjDoCliente,'.   .   /    -','') END as cnpj_cnpf
      ,TC.InscricaoEstadualDoCliente as ie_rg
      ,max (TEC.LogradouroNome) as endereco
      ,TEC.Numero as numero
      ,TEC.Complemento as complemento
      ,TEC.Bairro as bairro
      ,TEC.Cep as cep
      ,TEC.Cidade as cidade
      ,TEC.Estado as uf
      ,replace(TC.TelefoneFixoDoCliente,'(  )    -','') as telefone
      ,replace(TC.TelefoneCelularDoCliente,'(  )     -','') as celular
      ,TC.EmailContatoDoCliente as email
      ,concat (TEC.Observacao, ' / ', TC.ObservacaoDoCliente) as observacoes
      --,TC.DataDeNascimento as nascimento
      ,TC.LimiteDeCredito as limite_credito
      ,TC.DataDaInclusao as cadastro
      ,case when TC.ClienteAtivo = '1' then 'Ativo' else 'Inativo' end as situacao
  FROM SMSControl.dbo.TB_CLIENTES AS TC
  LEFT JOIN SMSControl.dbo.TB_ENDERECOS_CLIENTES TEC ON TC.CodigoDoCliente = TEC.CodigoDoCliente
  where TC.CodigoDoCliente > '0' and TEC.CodigoDoEndereco = '1'
group by 
       TC.CodigoDoCliente
      ,TC.RazaoSocialDoCliente
      ,TC.NomeFantasiaDoCliente
      ,TC.ContatoDoCliente
      ,TC.CnpjDoCliente
      ,TC.CpfDoCliente
      ,TC.InscricaoEstadualDoCliente
      ,TEC.Numero
      ,TEC.Complemento
      ,TEC.Bairro
      ,TEC.Cep
      ,TEC.Cidade
      ,TEC.Estado
      ,TC.TelefoneFixoDoCliente
      ,TC.TelefoneCelularDoCliente
      ,TC.EmailContatoDoCliente
      ,TEC.Observacao
      ,TC.ObservacaoDoCliente
      ,TC.LimiteDeCredito
      ,TC.DataDaInclusao
      ,TC.ClienteAtivo