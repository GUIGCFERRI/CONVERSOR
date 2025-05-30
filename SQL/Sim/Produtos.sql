select produtos.`CODIGO`,
produtos.`CODBARRA` as barras,
produtos.produto as descricao,
produtos.`UNIDADE` as und,
`fornecedores`.`NOME` as fornecedor,
produtos.`PRECOCUSTO` as preco_custo,
produtos.`PRECOVENDA` as preco_venda,
produtos.`ESTOQUE` as qtd,
produtos.csosn as st,
produtos.`CLASSIFICACAO_FISCAL` as cod_ncm,
case when `produtos`.`QTDE_EMBALAGEM` is null or produtos.`QTDE_EMBALAGEM`=0 then 1
else produtos.`QTDE_EMBALAGEM` end as fator_conversao,
`produtos`.`CODORIGINAL` as cod_fabricante,
produtos.`CEST` as personal6
from produtos
left join fornecedores on produtos.`CODFORNECEDOR`=fornecedores.codigo



