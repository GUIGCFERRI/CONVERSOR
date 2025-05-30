select cadastroclientes.codcadastroclientes as codigo,
cadastroclientes.nome,
cadastroclientes.nomefantasia as fantasia,
cadastroclientes.nascimento,
cadastroclientes.endereco,
cadastroclientes.numero,
cadastroclientes.bairro,
cadastroclientes.bairro,
cadastroclientes.cidade,
cadastroclientes.estado as uf,
cadastroclientes.complemento,
cadastroclientes.cep,
cadastroclientes.email,
cadastroclientes.celular,
cadastroclientes.telefone,
cadastroclientes.fax,
cadastroclientes.totalfaturas as observacoes,
case when cadastroclientes.cpf='' or null then
cadastroclientes.cnpj else cadastroclientes.cpf end as "CNPJ_CNPF",
case when cadastroclientes.rg = '' or null then
cadastroclientes.inscricaoestadual else cadastroclientes.rg end as "IE_RG",
cadastroclientes.datacadastro as cadastro
from cadastroclientes
