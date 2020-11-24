
/* Endereço */

UPDATE "Pais" SET nome = 'brasil' WHERE id = 1;
UPDATE "Pais" SET nome = 'argentina' WHERE id = 2;
UPDATE "Pais" SET nome = 'méxico' WHERE id = 3;
UPDATE "Pais" SET nome = 'australia' WHERE id = 4;
UPDATE "Pais" SET nome = 'colombia' WHERE id = 5;

UPDATE "Estado" SET nome = 'paraiba' WHERE id = 1;
UPDATE "Estado" SET nome = 'bahia' WHERE id = 2;
UPDATE "Estado" SET nome = 'goias' WHERE id = 3;

UPDATE "Cidade" SET nome = 'campina grande' WHERE id = 1;
UPDATE "Cidade" SET nome = 'goiania' WHERE id = 2;
UPDATE "Cidade" SET nome = 'joao pessoa' WHERE id = 3;

UPDATE "Bairro" SET nome = 'vila brasilia' WHERE id = 1;
UPDATE "Bairro" SET nome = 'garavelo' WHERE id = 2;
UPDATE "Bairro" SET nome = 'parque amazonia' WHERE id = 3;

UPDATE "TipoEndereco" SET nome = 'residencial' WHERE id = 1;
UPDATE "TipoEndereco" SET nome = 'comercial' WHERE id = 2;
UPDATE "TipoEndereco" SET nome = 'fiscal' WHERE id = 3;

UPDATE "Endereco" SET cep = '74905921' WHERE id = 3;
UPDATE "Endereco" SET rua = 'rio verde' WHERE id = 3;
UPDATE "Endereco" SET tipo_id = 2 WHERE id = 2;

/* Usuário */

UPDATE "EstadoCivil" SET nome = 'casado(a)' WHERE id = 1;
UPDATE "EstadoCivil" SET nome = 'divorciado(a)' WHERE id = 2;
UPDATE "EstadoCivil" SET nome = 'uniao estavel' WHERE id = 3;

UPDATE "Escolaridade" SET nome = 'ensino fundamental' WHERE id = 1;
UPDATE "Escolaridade" SET nome = 'ensino medio' WHERE id = 2;
UPDATE "Escolaridade" SET nome = 'ensino superior' WHERE id = 3;

UPDATE "Genero" SET nome = 'masculino' WHERE id = 1;
UPDATE "Genero" SET nome = 'feminino' WHERE id = 2;
UPDATE "Genero" SET nome = 'outro' WHERE id = 5;

UPDATE "Cargo" SET nome = 'administrador' WHERE id = 1;
UPDATE "Cargo" SET is_admin = false WHERE id = 2;
UPDATE "Cargo" SET is_admin = false WHERE id = 3;

UPDATE "Usuario" SET nome = 'Edna' WHERE id = 1;
UPDATE "Usuario" SET data_nascimento = '1994-08-09' WHERE id = 5;
UPDATE "Usuario" SET senha = '4321' WHERE id = 1;

UPDATE "Filiacao" SET pais_id = 5 WHERE id = 1;

UPDATE "Telefone" SET ddd = '62' WHERE id = 1;
UPDATE "Telefone" SET numero = '280569200' WHERE id = 9;
UPDATE "Telefone" SET usuario_id = 3 WHERE id = 1;

/* Aplicação Financeira */

UPDATE "Indexador" SET nome = 'ipca' WHERE id = 1;
UPDATE "Indexador" SET nome = 'prefixado' WHERE id = 3;
UPDATE "Indexador" SET nome = 'selic' WHERE id = 2;

UPDATE "PrazoResgate" SET prazo = 'D + 1' WHERE id = 1;
UPDATE "PrazoResgate" SET prazo = 'D + 4' WHERE id = 2;
UPDATE "PrazoResgate" SET prazo = 'D + 30' WHERE id = 3;

UPDATE "Classe" SET nome = 'cdb' WHERE id = 1;
UPDATE "Classe" SET nome = 'lca' WHERE id = 2;
UPDATE "Classe" SET nome = 'lci' WHERE id = 3;

UPDATE "Emissora" SET nome = 'bb' WHERE id = 1;
UPDATE "Emissora" SET nome = 'SANTANDER' WHERE id = 3;
UPDATE "Emissora" SET nome = 'BC' WHERE id = 5;

UPDATE "FundoInvestimento" SET nome = 'Orama Ouro' WHERE id = 1;
UPDATE "FundoInvestimento" SET valor_minimo = 200 WHERE id = 4;
UPDATE "FundoInvestimento" SET nome = 'Votorantim' WHERE id = 4;

UPDATE "RendaFixa" SET nome = 'Itaú' WHERE id = 1;
UPDATE "RendaFixa" SET horario_limite = '18:00:00' WHERE id = 4;
UPDATE "RendaFixa" SET prazo_vencimento = 36 WHERE id = 3;

UPDATE "TesouroDireto" SET nome = 'BC' WHERE id = 1;
UPDATE "TesouroDireto" SET valor = 35 WHERE id = 4;
UPDATE "TesouroDireto" SET indexador_id = 2 WHERE id = 1;

UPDATE "AplicacaoTesouro" SET usuario_id = 4 WHERE id = 3;
UPDATE "AplicacaoTesouro" SET quantidade = 50 WHERE id = 5;
UPDATE "AplicacaoTesouro" SET quantidade = 2 WHERE id = 4;

UPDATE "AplicacaoFinanceira" SET valor = 500 WHERE id = 3;
UPDATE "AplicacaoFinanceira" SET fundo_investimento_id = 2 WHERE id = 1;
UPDATE "AplicacaoFinanceira" SET usuario_id = 3 WHERE id = 3;