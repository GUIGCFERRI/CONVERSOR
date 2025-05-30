SELECT 
 p.pessoas_codigo as PERSONAL1
, p.pessoas_razaosocial as NOME
, pj.juridicas_fantasia as FANTASIA
, case when pf.fisicas_cpf = '' or pf.fisicas_cpf is null then pj.juridicas_cnpj else pf.fisicas_cpf END AS CNPJ_CNPF
, case when pf.fisicas_rg  = '' or pf.fisicas_rg  is null then pj.juridicas_rg  else pf.fisicas_rg END AS IE_RG
, pj.juridicas_inscricaomunicipal as IM
, pf.fisicas_nascimento as NASCIMENTO
, p.pessoas_endereco as ENDERECO
, p.pessoas_bairro as BAIRRO
, p.pessoas_email as EMAIL
, p.pessoas_cep as CEP
, c.cidades_nome as CIDADE
, c.cidades_uf  as UF
, p.pessoas_telefone as TELEFONE 
, p.pessoas_telefone2 as FAX
--, p.pessoas_datacadastro as CADASTRO
FROM pessoas p
left join cidades c on c.cidades_codigo = p.cidades_codigo 
left join pessoasfisicas pf on pf.pessoas_codigo = p.pessoas_codigo and pf.empresa_codigo = '1' -- <<< AJUSTAR AQUI QUANDO TIVER MULTILOJAS
left join pessoasjuridicas pj on pj.pessoas_codigo = p.pessoas_codigo and pj.empresa_codigo = '1' -- <<< AJUSTAR AQUI QUANDO TIVER MULTILOJAS
where p.pessoas_tipo = 'C' 
