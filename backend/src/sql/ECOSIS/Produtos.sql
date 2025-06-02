select
	produto.cdproduto as codigo,
    codbarras.cdbarra as barras,
	produto.produto as descricao,
	produto.dtcadastro as data_cadastro,
	produto.referencia as cod_fabricante,
	convert (produto.und,varchar(5)) as und,
	produto.prodfabr as personal1,
	case produto.flgativo when 'S' then 'Ativo' ELSE 'Inativo' END AS SITUACAO, 
	grupopro.grupo,
	grupopre.grupo as familia,
	fabricante.fabricante as caracteristicas,
	-- MAX(codbarras.cdbarra) as barras,
                replace(produto_fiscal.ncm,'.','') as cod_ncm,
                replace(produto_fiscal.cest,'.','') as personal6,
	produto_fiscal.pis_cst as pis_codigo,
	produto_fiscal.cofins_cst as cofins_codigo,
	produto_fiscal.ipi_cst as ipi_codigo,
	produto_fiscal.icms_cst as st,
	estoqueloja.qtdestoque as qtd,
	estoqueloja.vlrcusto as preco_custo,
	estoqueloja.vlrcustomedio as custo_medio,
	estoqueloja.prclucro as margem_lucro,
    estoqueloja.vlrvenda as preco_venda
from produto
left join grupopro on produto.cdgrupo =.grupopro.cdgrupo 
left join grupopre on produto.cdgrupopreco =grupopre.cdgrupo 
left join fabricante on produto.cdfabricante =fabricante.cdfabricante 
left join codbarras on codbarras.cdproduto=produto.cdproduto
left join produto_fiscal on produto_fiscal.cdproduto=produto.cdproduto  
left join estoqueloja on estoqueloja.cdproduto=produto.cdproduto 
group by 1,2,3,4,5,6,7,8,9,10,11
