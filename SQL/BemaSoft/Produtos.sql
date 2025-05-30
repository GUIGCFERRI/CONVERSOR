select produto."idProduto" as codigo,
produto.nome as descricao,
substring (produto.codigo,2 ,14) as barras,
-- produto.codigo as barras,
produto."precoCompra" as preco_custo,
produto."precoVenda" as preco_venda,
sit_trib.nome as st,
grupo.nome as grupo,
unidade.sigla as und,
produto."estAtual" as qtd,
produto.cod_ncm,
produto.obs as observacoes,
cest.codigo as personal6
from produto
left join sit_trib on produto."idSitTrib"=sit_trib."idSitTrib"
left join grupo on produto."idGrupo"=grupo."idGrupo"
left join unidade on produto."idUnidade"=unidade."idUnidade"
left join cest on produto."idCEST"=cest."idCEST"
