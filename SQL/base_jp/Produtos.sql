select
    produtos.codigo as codigo,
    produtos.nome as descricao,
    fornecedores.nome as fornecedor,
    grupos.nome as grupo,
    produtos.unidade as und,
    produtos.peso as peso,
    produtos.qtdefiscal as qtd,
    produtos.qtdemin as qtd_ideal,
    produtos.custonota as preco_custo,
    produtos.margemlucro as margem_lucro,
    produtos.precovenda as preco_venda,
    produtos.codean as barras,
    produtos.referencia as observacoes,
    produtos.codfabricante as cod_fabricante,
    produtos.codncm as cod_ncm,
    produtos.cestcodigo as personal6
from produtos
left join fornecedores on fornecedores.codigo = produtos.codfornecedor 
left join grupos on grupos.codigo = produtos.codgrupo