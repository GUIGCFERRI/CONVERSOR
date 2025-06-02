select 
cadprodu.cod_reduzido as codigo,
cadprodu.nom_produto as descricao,
cadgrpro.nom_grupo as grupo,
cadprodu.cod_unidade as und,
cadprodu.vlr_custo as preco_custo,
cadprodu.vlr_venda as preco_venda,
cadprodu.dat_cadastro as data_cadastro,
cadprodu.cod_tribut as st,
cadprodu.cod_clafiscal as cod_ncm,
cadprodu.cod_cest as personal6,
cadprodu.nom_descapresentacao as observacoes,
cadestoq.qtd_estoque as qtd,
dm_produto.nom_codigo_barras as barras
from cadprodu
left join cadgrpro on cadprodu.cod_grupo=cadgrpro.cod_grupo
--left join cadcdbar on cadprodu.cod_reduzido=cadcdbar.cod_reduzido
left join cadestoq on cadprodu.cod_reduzido=cadestoq.cod_reduzido
left join dm_produto on dm_produto.cod_reduzido_equivalente = cadprodu.cod_reduzido
--where cadprodu.cod_reduzido = '24950'
--group by 1,2,3,4,5,6,7,8,9,10,11,12
