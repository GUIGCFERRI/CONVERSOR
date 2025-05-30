SELECT 
       F.CodigoDoFornecedor as codigo
      ,F.RazaoSocialDoFornecedor as nome
      ,F.NomeDoFornecedor as fantasia
      ,F.ContatoDoFornecedor as contato
      ,case when replace(F.CnpjDoFornecedor,'.   .   /    -','') = '' or replace(F.CnpjDoFornecedor,'.   .   /    -','') is null then replace(F.CpfDoFornecedor,'.   .   /    -','') else replace(F.CnpjDoFornecedor,'.   .   /    -','') END as cnpj_cnpf
      ,F.InscricaoEstadualDoFornecedor as ie_rg
      ,F.EnderecoDoFornecedor as endereco
      ,F.Numero as mumero
      ,F.ComplementoDoEnderecoDoFornecedor as complemento
      ,F.BairroDoFornecedor as bairro
      ,F.CidadeDoFornecedor as cidade
      ,F.EstadoDoFornecedor as uf
      ,F.CepDoFornecedor as cep
      ,replace(F.TelefoneDoFornecedor,'(  )    -','') as telefone
      ,replace(F.CelularDoFornecedor,'(  )     -','') as celular
      ,F.EmailDoFornecedor as email
      ,F.ObservacaoDoFornecedor as observacoes
      ,case when F.FornecedorAtivo = '1' then 'Ativo' else 'Inativo' end as situacao
  FROM SMSControl.dbo.TB_FORNECEDORES as F
