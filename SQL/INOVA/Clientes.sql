SELECT
    --CLI.clienteid as CODIGO , 
    CLI.clientenome as FANTASIA,
    CLI.clientedatanascimento as NASCIMENTO,
    CLI.clienteendereco as ENDERECO,
    CLI.clientebairro as BAIRRO,
    MUN.municipionome as CIDADE,
    UF.ufsigla as UF,
    CLI.clientecep as CEP,
    CLI.clienterg as IE_RG,
    CLI.clientecpf as CNPJ_CNPF,
    CLI.clientetelefone as TELEFONE,
    CLI.clientecelular as CELULAR,
    CLI.clienteobs as OBSERVACOES,
	case when CLI.clienterazaosocial = '' or CLI.clienterazaosocial is null then CLI.clientenome else CLI.clienterazaosocial END as NOME,
    --CLI.clienterazaosocial as NOME,
    CLI.clienteemail as EMAIL,
    CLI.clientenumero as NUMERO,
    CLI.clientecomplemento as COMPLEMENTO,
    CLI.clientelimitecredito as LIMITE_CREDITO,
    CLI.clientecontato as CONTATO,
    CLI.clientefax as FAX
    FROM CLIENTES as CLI
    left join municipio MUN on cast(CLI.clientecidade as integer) = cast( MUN.municipioid as integer)
    LEFT JOIN UF UF on cast (CLI.CLIENTEUF AS INTEGER) = cast  (UF.UFID as integer)
