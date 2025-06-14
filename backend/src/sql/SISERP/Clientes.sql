 select BCOCLI.codigo,
 BCOCLI.razao as nome,
 BCOCLI.fantasia,
 BCOCLI.endereco,
 BCOCLI.bairro,
 BCOCLI.cep,
 BCOCLI.cidade,
 BCOCLI.uf, 
 BCOCLI.fax, 
 BCOCLI.fone as telefone,
 BCOCLI.celular,
 case when BCOCLI.tipodoc=1 then
 BCOCLI.inscricaoest else BCOCLI.rg end "IE_RG",
 BCOCLI.contato,
 BCOCLI.documento as cnpj_cnpf,
 cast(BCOCLI.datacad as date) as cadastro,
 cast(BCOCLI.nascimento as date) as nascimento,
 bcocli.obs as observacoes,
 BCOCLI.complementoendereco as complemento,
 BCOCLI.numero
 from BCOCLI
