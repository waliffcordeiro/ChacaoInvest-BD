
/* Endereço */

INSERT INTO "Pais" (id, nome, nacionalidade) VALUES (DEFAULT, 'Brasil', 'Brasileiro(a)');
INSERT INTO "Pais" (id, nome, nacionalidade) VALUES (DEFAULT, 'Argentina', 'Argentino(a)');
INSERT INTO "Pais" (id, nome, nacionalidade) VALUES (DEFAULT, 'México', 'Mexicano(a)');
INSERT INTO "Pais" (id, nome, nacionalidade) VALUES (DEFAULT, 'Australia', 'Australiano(a)');
INSERT INTO "Pais" (id, nome, nacionalidade) VALUES (DEFAULT, 'Colômbia', 'Colombiano(a)')

INSERT INTO "Estado" (id, pais_id, nome) VALUES (DEFAULT, 1, 'Paraíba');
INSERT INTO "Estado" (id, pais_id, nome) VALUES (DEFAULT, 1, 'Goiás');
INSERT INTO "Estado" (id, pais_id, nome) VALUES (DEFAULT, 1, 'Bahia');
INSERT INTO "Estado" (id, pais_id, nome) VALUES (DEFAULT, 1, 'Acre');
INSERT INTO "Estado" (id, pais_id, nome) VALUES (DEFAULT, 1, 'Ceará');

INSERT INTO "Cidade" (id, estado_id, nome) VALUES (DEFAULT, 1, 'Campina Grande');
INSERT INTO "Cidade" (id, estado_id, nome) VALUES (DEFAULT, 3, 'Goiânia');
INSERT INTO "Cidade" (id, estado_id, nome) VALUES (DEFAULT, 1, 'João Pessoa');
INSERT INTO "Cidade" (id, estado_id, nome) VALUES (DEFAULT, 2, 'Salvador');
INSERT INTO "Cidade" (id, estado_id, nome) VALUES (DEFAULT, 3, 'Anápolis');

INSERT INTO "Bairro" (id, cidade_id, nome) VALUES (DEFAULT, 2, 'Vila Brasília');
INSERT INTO "Bairro" (id, cidade_id, nome) VALUES (DEFAULT, 2, 'Garavelo');
INSERT INTO "Bairro" (id, cidade_id, nome) VALUES (DEFAULT, 2, 'Parque Amazônia');
INSERT INTO "Bairro" (id, cidade_id, nome) VALUES (DEFAULT, 2, 'Parque Atheneu');
INSERT INTO "Bairro" (id, cidade_id, nome) VALUES (DEFAULT, 2, 'Jardim América');
INSERT INTO "Bairro" (id, cidade_id, nome) VALUES (DEFAULT, 1, 'Conceição');

INSERT INTO "TipoEndereco" (id, nome) VALUES (DEFAULT, 'Residencial');
INSERT INTO "TipoEndereco" (id, nome) VALUES (DEFAULT, 'Comercial');
INSERT INTO "TipoEndereco" (id, nome) VALUES (DEFAULT, 'Fiscal');
INSERT INTO "TipoEndereco" (id, nome) VALUES (DEFAULT, 'Correspondência');
INSERT INTO "TipoEndereco" (id, nome) VALUES (DEFAULT, 'Cobrança');

INSERT INTO "Endereco" (id, tipo_id, bairro_id, cep, rua, quadra, lote, numero) VALUES (DEFAULT, 1, 1, '74905650', 'Paraguaçu', 136, 14, 0);
INSERT INTO "Endereco" (id, tipo_id, bairro_id, cep, rua, quadra, lote, numero) VALUES (DEFAULT, 1, 1, '74905100', 'Ubirajara', 112, 10, 7);
INSERT INTO "Endereco" (id, tipo_id, bairro_id, cep, rua, quadra, lote, numero) VALUES (DEFAULT, 1, 1, '74905920', 'Rio Verde', 75, 22, 5);
INSERT INTO "Endereco" (id, tipo_id, bairro_id, cep, rua, quadra, lote, numero) VALUES (DEFAULT, 1, 2, '74205135', 'Pedro Ludovico', 112, 10, 7);
INSERT INTO "Endereco" (id, tipo_id, bairro_id, cep, rua, quadra, lote, numero) VALUES (DEFAULT, 1, 1, '74905100', 'Ubirajara', 112, 10, 7);
INSERT INTO "Endereco" (id, tipo_id, bairro_id, cep, rua, quadra, lote, numero) VALUES (DEFAULT, 1, 6, '55401311', 'Vigolvino Vanderlei', NULL, NULL, 291);

/* Usuário */

INSERT INTO "EstadoCivil" (id, nome) VALUES (DEFAULT,  'Casado(a)');
INSERT INTO "EstadoCivil" (id, nome) VALUES (DEFAULT,  'Solteiro(a)');
INSERT INTO "EstadoCivil" (id, nome) VALUES (DEFAULT,  'Divorciado(a)');
INSERT INTO "EstadoCivil" (id, nome) VALUES (DEFAULT,  'União estável');
INSERT INTO "EstadoCivil" (id, nome) VALUES (DEFAULT,  'Separado(a)');
INSERT INTO "EstadoCivil" (id, nome) VALUES (DEFAULT,  'Viúvo(a)');

INSERT INTO "Escolaridade" (id, nome) VALUES (DEFAULT,  'Ensino Fundamental');
INSERT INTO "Escolaridade" (id, nome) VALUES (DEFAULT,  'Ensino Médio');
INSERT INTO "Escolaridade" (id, nome, curso) VALUES (DEFAULT,  'Ensino Superior',  'Medicina');
INSERT INTO "Escolaridade" (id, nome, curso) VALUES (DEFAULT,  'Ensino Superior',  'Engenharia da Computação');
INSERT INTO "Escolaridade" (id, nome, curso) VALUES (DEFAULT,  'Ensino Superior',  'Ciência da Computação');

INSERT INTO "Genero" (id, nome) VALUES (DEFAULT, 'Masculino');
INSERT INTO "Genero" (id, nome) VALUES (DEFAULT, 'Feminino');
INSERT INTO "Genero" (id, nome) VALUES (DEFAULT, 'Bigênero');
INSERT INTO "Genero" (id, nome) VALUES (DEFAULT, 'Prefiro não identificar');
INSERT INTO "Genero" (id, nome) VALUES (DEFAULT, 'Outro');

INSERT INTO "Cargo" (id, nome, is_admin) VALUES (DEFAULT,  'Administrador', TRUE);
INSERT INTO "Cargo" (id, nome, is_admin) VALUES (DEFAULT,  'Gerente', TRUE);
INSERT INTO "Cargo" (id, nome, is_admin) VALUES (DEFAULT,  'Coordenador', TRUE);
INSERT INTO "Cargo" (id, nome, is_admin) VALUES (DEFAULT,  'Analista', FALSE);
INSERT INTO "Cargo" (id, nome, is_admin) VALUES (DEFAULT,  'Cliente', FALSE);

INSERT INTO "Usuario" (id, cargo_id, escolaridade_id, estado_civil_id, genero_id, nacionalidade_id, endereco_id, cpf, rg, senha, nome, data_nascimento) VALUES (DEFAULT, 1, 4, 2, 2, 1, 5, 37426268098, 271181606, '1234', 'Edna Model', '1992-11-28');
INSERT INTO "Usuario" (id, cargo_id, escolaridade_id, estado_civil_id, genero_id, nacionalidade_id, endereco_id, cpf, rg, senha, nome, data_nascimento) VALUES (DEFAULT, 3, 5, 1, 1, 1, 4, 91582026092, 219406352, '1234', 'Roberto Cardoso', '1994-11-28');
INSERT INTO "Usuario" (id, cargo_id, escolaridade_id, estado_civil_id, genero_id, nacionalidade_id, endereco_id, cpf, rg, senha, nome, data_nascimento) VALUES (DEFAULT, 5, 3, 4, 5, 1, 3, 48160929005, 498346547, '1234', 'Ariel Silva', '1996-11-09');
INSERT INTO "Usuario" (id, cargo_id, escolaridade_id, estado_civil_id, genero_id, nacionalidade_id, endereco_id, cpf, rg, senha, nome, data_nascimento) VALUES (DEFAULT, 5, 5, 5, 1, 1, 2, 40555696022, 422639588, '1234', 'Felipe Oliveira', '1994-08-10');
INSERT INTO "Usuario" (id, cargo_id, escolaridade_id, estado_civil_id, genero_id, nacionalidade_id, endereco_id, cpf, rg, senha, nome, data_nascimento) VALUES (DEFAULT, 4, 4, 2, 2, 1, 1, 59877424045, 298186561, '1234', 'Juliana Freitas', '1990-02-08');
INSERT INTO "Usuario" (id, cargo_id, escolaridade_id, estado_civil_id, genero_id, nacionalidade_id, endereco_id, cpf, rg, senha, nome, data_nascimento) VALUES (DEFAULT, 5, 1, 2, 1, 1, 1, 08870621057, 493760283, '1234', 'Enzo Júnior', '2007-01-09');

INSERT INTO "Filiacao" (id, usuario_id, pais_id) VALUES (DEFAULT, 6, 5); /* Juliana mãe do Enzo */

INSERT INTO "Telefone" (id, usuario_id, ddd,  numero) VALUES (DEFAULT,  1, 61, 990509229);
INSERT INTO "Telefone" (id, usuario_id, ddd,  numero) VALUES (DEFAULT,  5, 61, 990409229);
INSERT INTO "Telefone" (id, usuario_id, ddd,  numero) VALUES (DEFAULT,  3, 61, 980509229);
INSERT INTO "Telefone" (id, usuario_id, ddd,  numero) VALUES (DEFAULT,  4, 61, 982508227);
INSERT INTO "Telefone" (id, usuario_id, ddd,  numero) VALUES (DEFAULT,  1, 61, 280569229);

/* Aplicação Financeira */

INSERT INTO "Indexador" (id, nome) VALUES (DEFAULT, 'IPCA');
INSERT INTO "Indexador" (id, nome) VALUES (DEFAULT, 'SELIC');
INSERT INTO "Indexador" (id, nome) VALUES (DEFAULT, 'Prefixado');

INSERT INTO "PrazoResgate" (id, prazo) VALUES (DEFAULT, 'D+1');
INSERT INTO "PrazoResgate" (id, prazo) VALUES (DEFAULT, 'D+4');
INSERT INTO "PrazoResgate" (id, prazo) VALUES (DEFAULT, 'D+30');
INSERT INTO "PrazoResgate" (id, prazo) VALUES (DEFAULT, 'D+60');

INSERT INTO "Classe" (id, nome) VALUES (DEFAULT, 'CDB');
INSERT INTO "Classe" (id, nome) VALUES (DEFAULT, 'LCA');
INSERT INTO "Classe" (id, nome) VALUES (DEFAULT, 'LCI');
INSERT INTO "Classe" (id, nome) VALUES (DEFAULT, 'LF');
INSERT INTO "Classe" (id, nome) VALUES (DEFAULT, 'LC');
INSERT INTO "Classe" (id, nome) VALUES (DEFAULT, 'Ação');
INSERT INTO "Classe" (id, nome) VALUES (DEFAULT, 'Cambial');
INSERT INTO "Classe" (id, nome) VALUES (DEFAULT, 'Multimercado');
INSERT INTO "Classe" (id, nome) VALUES (DEFAULT, 'Renda fixa');

INSERT INTO "Emissora" (id, endereco_id, nome) VALUES (DEFAULT,  1,  'Banco do Brasil');
INSERT INTO "Emissora" (id, endereco_id, nome) VALUES (DEFAULT,  2,  'Nubank');
INSERT INTO "Emissora" (id, endereco_id, nome) VALUES (DEFAULT,  3,  'Santander');
INSERT INTO "Emissora" (id, endereco_id, nome) VALUES (DEFAULT,  4,  'Caixa');
INSERT INTO "Emissora" (id, endereco_id, nome) VALUES (DEFAULT,  5,  'Banco Central');

INSERT INTO "FundoInvestimento" (id, prazo_resgate_id, classe_id, nome, valor_minimo) VALUES (DEFAULT, 3, 8, 'Orama Ouro FIM', 1000);
INSERT INTO "FundoInvestimento" (id, prazo_resgate_id, classe_id, nome, valor_minimo) VALUES (DEFAULT, 3, 8, 'BTG Pactual Dólar FI Cambial', 5);
INSERT INTO "FundoInvestimento" (id, prazo_resgate_id, classe_id, nome, valor_minimo) VALUES (DEFAULT, 3, 8, 'Trend Dólar FI Cambial', 6);
INSERT INTO "FundoInvestimento" (id, prazo_resgate_id, classe_id, nome, valor_minimo) VALUES (DEFAULT, 3, 8, 'Votorantim FIC de FI Cambial', 800);
INSERT INTO "FundoInvestimento" (id, prazo_resgate_id, classe_id, nome, valor_minimo) VALUES (DEFAULT, 3, 9, 'XP Inflação Referenciado IPCA FI Renda Fixa LP', 2215);

INSERT INTO "RendaFixa" (id, classe_id, emissora_id, nome, prazo_vencimento, horario_limite, valor_minimo, taxa_remuneracao) VALUES (DEFAULT, 1, 1, 'Itaú Legend FIC FI RF LP', 12, '20:00:00', 500, 0.01);
INSERT INTO "RendaFixa" (id, classe_id, emissora_id, nome, prazo_vencimento, horario_limite, valor_minimo, taxa_remuneracao) VALUES (DEFAULT, 1, 2, 'Caixa Objetivo Pré FIC FI RF LP', 24, '20:00:00', 1000, 0.02);
INSERT INTO "RendaFixa" (id, classe_id, emissora_id, nome, prazo_vencimento, horario_limite, valor_minimo, taxa_remuneracao) VALUES (DEFAULT, 1, 2, 'BB Pré IRF-M Priv FIC FI RF LP', 24, '20:00:00', 750, 0.01);
INSERT INTO "RendaFixa" (id, classe_id, emissora_id, nome, prazo_vencimento, horario_limite, valor_minimo, taxa_remuneracao) VALUES (DEFAULT, 1, 4, 'Itaú Pré FIC FI RF LP', 12, '20:00:00', 1200, 0.02);
INSERT INTO "RendaFixa" (id, classe_id, emissora_id, nome, prazo_vencimento, horario_limite, valor_minimo, taxa_remuneracao) VALUES (DEFAULT, 1, 2, 'Itaú FIC FI RF LP', 24, '20:00:00', 600, 0.01);

INSERT INTO "TesouroDireto" (id, indexador_id, nome, data_vencimento, taxa, valor) VALUES (DEFAULT, 1, 'Banco Central', '2021-11-25', 0.01, 12);
INSERT INTO "TesouroDireto" (id, indexador_id, nome, data_vencimento, taxa, valor) VALUES (DEFAULT, 2, 'XP', '2021-11-25', 0.01, 24);
INSERT INTO "TesouroDireto" (id, indexador_id, nome, data_vencimento, taxa, valor) VALUES (DEFAULT, 3, 'Clear', '2021-11-25', 0.01, 15);
INSERT INTO "TesouroDireto" (id, indexador_id, nome, data_vencimento, taxa, valor) VALUES (DEFAULT, 3, 'Warren', '2021-11-25', 0.02, 33);
INSERT INTO "TesouroDireto" (id, indexador_id, nome, data_vencimento, taxa, valor) VALUES (DEFAULT, 1, 'Orama', '2021-11-25', 0.02, 55);

INSERT INTO "AplicacaoTesouro" (id, usuario_id, tesouro_id, quantidade) VALUES (DEFAULT,  1,  1, 30);
INSERT INTO "AplicacaoTesouro" (id, usuario_id, tesouro_id, quantidade) VALUES (DEFAULT,  3,  1, 12);
INSERT INTO "AplicacaoTesouro" (id, usuario_id, tesouro_id, quantidade) VALUES (DEFAULT,  5, 1, 1);
INSERT INTO "AplicacaoTesouro" (id, usuario_id, tesouro_id, quantidade) VALUES (DEFAULT,  4, 4, 1);
INSERT INTO "AplicacaoTesouro" (id, usuario_id, tesouro_id, quantidade) VALUES (DEFAULT,  1, 1, 100);

INSERT INTO "AplicacaoFinanceira" (id, usuario_id, fundo_investimento_id, valor) VALUES (DEFAULT,  1, 1, 1000);
INSERT INTO "AplicacaoFinanceira" (id, usuario_id, fundo_investimento_id, valor) VALUES (DEFAULT,  3, 2, 1000);
INSERT INTO "AplicacaoFinanceira" (id, usuario_id, fundo_investimento_id, valor) VALUES (DEFAULT,  5, 3, 1000);
INSERT INTO "AplicacaoFinanceira" (id, usuario_id, renda_fixa_id, valor) VALUES (DEFAULT,  5, 3, 1000);
INSERT INTO "AplicacaoFinanceira" (id, usuario_id, renda_fixa_id, valor) VALUES (DEFAULT,  4, 4, 1000);