SELECT * FROM "Pais" where nacionalidade='Brasileiro(a)';
SELECT * FROM "Estado" where id=3;
SELECT * FROM "Cidade" where nome='Salvador';
SELECT * FROM "Bairro" where nome='Conceição';

SELECT * FROM "Cargo" where nome='Analista';

SELECT * FROM "AplicacaoFinanceira" where valor=1000;
SELECT * FROM "AplicacaoTesouro" where usuario_id=1;

SELECT * FROM "Classe" where nome='Cambial';

SELECT * FROM "Emissora" where nome='Nubank';

SELECT * FROM "Endereco" where rua='Ubirajara';

SELECT * FROM "Escolaridade" where id=1;

SELECT * FROM "EstadoCivil" where id=2;

SELECT * FROM "Filiacao" where id=1;

SELECT nome FROM "FundoInvestimento" where classe_id=8;

SELECT * FROM "Genero" where id=1;

SELECT * FROM "Indexador" where id=2;

SELECT prazo FROM "PrazoResgate" where id=1;

SELECT nome, horario_limite FROM "RendaFixa" where valor_minimo < 1000;

SELECT * FROM "Telefone" where id=1;

SELECT nome, taxa FROM "TesouroDireto" where valor < 30;

SELECT * FROM "TipoEndereco" where id=1;

SELECT * FROM "Usuario" where estado_civil_id=1;