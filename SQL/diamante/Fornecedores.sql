SELECT 
       pessoa.pessoa_id as codigo
	  ,pessoa.razao_social as nome
      ,pessoa.nome_pessoa as fantasia
      ,pessoa_contato.nome_contato as contato
      ,pessoa_documento.cpfcnpj as cnpj_cnpf
      ,case when pessoa_documento.rg = '' or pessoa_documento.rg is null then pessoa_documento.ie else pessoa_documento.rg END AS IE_RG
      ,pessoa_documento.im as im
      ,pessoa_endereco.logradouro as endereco
      ,pessoa_endereco.numero as numero
      ,concat (pessoa_endereco.referencia, ' - ' ,pessoa_endereco.complemento) as complemento
      ,pessoa_endereco.bairro as bairro
      ,pessoa_endereco.cep as cep
      ,cidade.nome_cidade as cidade
      ,cidade.estado as uf
      ,pessoa_contato.telefone_celular as celular
      ,pessoa_contato.telefone_residencial as telefone
      ,pessoa_contato.email as email
  FROM diamante.dbo.pessoa
left join diamante.dbo.pessoa_contato on pessoa_contato.pessoa_id = pessoa.pessoa_id
left join diamante.dbo.pessoa_documento on pessoa_documento.pessoa_id = pessoa.pessoa_id
left join diamante.dbo.pessoa_endereco on pessoa_endereco.pessoa_id = pessoa.pessoa_id
left join diamante.dbo.cidade on cidade.cod_cidade = pessoa_endereco.codibge
where pessoa.tipo_fornecedor = 'S' and pessoa.tipo_cliente = 'N' --FORNECEDORES
and pessoa.pessoa_id <> '0'
