SELECT 
  p.codigo
, p.razao_social as NOME
, p.fantasia
, p.cpf_cnpj as CNPJ_CNPF
, p.rg_ie as IE_RG
, p.insc_municipal as IM
, p.data_nasc as NASCIMENTO
, p.cep
, concat (p.tipo_logradouro ||' '|| p.logradouro) as ENDERECO
, p.bairro
, p.municipio as CIDADE
--, m.estado as UF
, p.estado as UF
, p.numero
, p.complemento
, p.telefone_residencial as TELEFONE
, p.telefone_celular as CELULAR
, p.data_cadastro as CADASTRO
, p.vendedor as PERSONAL1
, p.indledest as INDIEDEST
FROM pessoa p
--left join municipio m on m.codigo = p.cod_municipio_ibge
where p.tipo <> 1
