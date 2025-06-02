select
produtos.CodPro as cod_fabricante,
cdgrupos.DesGru as grupo,
produtos.DesPro as descricao,
min(codbarra.CodBar) as barras,
forneced.nomfor as fornecedor,
produtos.PcoCus as preco_custo,
produtos.PcoVen as preco_venda,
produtos.PcoAta as preco_atacado,
produtos.DtUCom as ultima_compra,
produtos.DtUVen as ultima_venda,
produtos.DataCadastro as data_cadastro,
produtos.EstAtu as qtd,
produtos.Observ as observacoes,
produtos.NCM_SH as cod_ncm,
produtos.Unidade as und,
max(fi_cest.cest) as personal6
from produtos
left join cdgrupos on produtos.CodGru = cdgrupos.CodGru
left join codbarra on produtos.CodPro =codbarra.CodPro
left join forneced on produtos.codfor = forneced.codfor
left join fi_cest on produtos.NCM_SH = fi_cest.ncm
group by 1,2,3,5,6,7,8,9,10,11,12,13,14,15
