select cadastroclientes.codcadastroclientes as codigo,
cadastroclientes.nome,
cadastroclientes.nascimento,
cadastroclientes.endereco,
cadastroclientes.numero,
cadastroclientes.bairro,
cadastroclientes.cidade,
cadastroclientes.estado as uf,
cadastroclientes.cep,
cadastroclientes.telefone,
cadastroclientes.celular,
case when cpf='' then cnpj 
else cpf end as cnpj_cnpf,
cadastroclientes.datacadastro as cadastro,
cadastroclientes.nomefantasia as fantasia
from cadastroclientes


