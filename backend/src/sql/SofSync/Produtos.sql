select [Cadastro de Mercadorias].[C�digo da Mercadoria] as codigo,
[Cadastro de Mercadorias].Mercadoria as descricao,
[Cadastro de Mercadorias].Fabricante as caracteristicas,
[Cadastro de Mercadorias].[Pre�o C] as preco_custo,
[Cadastro de Mercadorias].[Pre�o de Venda] as preco_venda,
[Cadastro de Mercadorias].Fornecedor,
[Cadastro de Mercadorias].[Unidades em Estoque] as qtd,
[Cadastro de Mercadorias].Medida as und,
[Cadastro de Mercadorias].Grupo,
[Cadastro de Mercadorias].[C�d Barra] as barras,
[Cadastro de Mercadorias].[C�d Fabricante] as cod_fabricante,
[Cadastro de Mercadorias].[Ultima Entrada] as ultima_compra,
[Cadastro de Mercadorias].DataAlteracaoPreco as alteracao_preco,
[Cadastro de Mercadorias].Observacao as observacoes,
[Cadastro de Mercadorias].NCM as cod_ncm,
[Cadastro de Mercadorias].cCEST as personal6
from [Cadastro de Mercadorias]





