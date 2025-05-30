select mercadoria_cad.Cod_Mercadoria as codigo,
mercadoria_cad.Descricao,
mercadoria_cad.Unidade as und,
mercadoria_cad.Preco_Venda_Varejo as preco_venda,
mercadoria_cad.Preco_Venda_Atacado as preco_atacado,
mercadoria_cad.Preco_Custo as preco_custo,
Grupos.Descricao as grupo,
mercadoria_cad.Referencia as cod_fabricante,
mercadoria_cad.Observacao as observacoes,
mercadoria_cad.Codigo_NCM as cod_ncm,
mercadoria_cad.Codigo_EAN as barras
from mercadoria_cad
left join grupos on mercadoria_cad.Cod_Grupo=grupos.Cod_Grupo


