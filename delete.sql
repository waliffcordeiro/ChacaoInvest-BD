/* Usuários */

DELETE
FROM "Filiacao"
WHERE id = 1;

DELETE
FROM "Telefone"
WHERE id = 2; /* Deleting Edna Cellphone */
DELETE
FROM "Telefone"
WHERE id = 5;

DELETE
FROM "AplicacaoFinanceira"
WHERE id = 4;

DELETE
FROM "Usuario"
WHERE id = 5; /* Deleting Juliana */
DELETE
FROM "Usuario"
WHERE id = 6; /* Deleting Enzo */

DELETE
FROM "Cargo"
WHERE id = 2; /* Deleting Gerente */
DELETE
FROM "Cargo"
WHERE id = 4; /* Deleting Analista */

DELETE
FROM "Genero"
WHERE id = 3; /* Deleting Bigênero */
DELETE
FROM "Genero"
WHERE id = 4; /* Deleting Prefiro não identificar */

DELETE
FROM "Escolaridade"
WHERE id = 1; /* Deleting Ensino Médio */
DELETE
FROM "Escolaridade"
WHERE id = 1; /* Deleting Ensino Fundamental*/

DELETE
FROM "EstadoCivil"
WHERE id = 3; /* Deleting Divorciado */
DELETE
FROM "EstadoCivil"
WHERE id = 6;
/* Deleting Viúvo */

/* Endereço */

DELETE
FROM "RendaFixa" /* Apagando Itaú para poder apagar a emissora BB */
where id = 1;

DELETE
FROM "Emissora" /* Deletando BB para poder apagar o endereço referenciado */
where id = 1;

DELETE
FROM "Endereco"
WHERE id = 1; /* Deleting Pedro Ludovico */
DELETE
FROM "Endereco"
WHERE id = 6; /* Deleting Ubirajara */

DELETE
FROM "TipoEndereco"
WHERE id = 4; /* Deleting Correspondência*/
DELETE
FROM "TipoEndereco"
WHERE id = 5; /* Deleting Cobrança */

DELETE
FROM "Bairro"
WHERE id = 3; /* Deleting Parque Amazônia*/
DELETE
FROM "Bairro"
WHERE id = 4; /* Deleting Parque Atheneu */

DELETE
FROM "Cidade"
WHERE id = 4; /* Deleting Salvador*/
DELETE
FROM "Cidade"
WHERE nome = 'Anápolis';

DELETE
FROM "Estado"
WHERE nome = 'Acre';
DELETE
FROM "Estado"
WHERE id = 5; /* Deleting Ceará */

DELETE
FROM "Pais"
WHERE nome = 'México';
DELETE
FROM "Pais"
WHERE id = 4;

/* Aplicações */

DELETE
FROM "AplicacaoFinanceira"
WHERE id = 1;
DELETE
FROM "AplicacaoFinanceira"
WHERE id = 2;

DELETE
FROM "AplicacaoTesouro"
WHERE id = 1;
DELETE
FROM "AplicacaoTesouro"
WHERE id = 2;

DELETE
FROM "TesouroDireto"
WHERE indexador_id = 1;
DELETE
FROM "TesouroDireto"
WHERE indexador_id = 2;

DELETE
FROM "Indexador"
WHERE id = 1;
DELETE
FROM "Indexador"
WHERE id = 2;

DELETE
FROM "RendaFixa"
WHERE emissora_id = 1;
DELETE
FROM "RendaFixa"
WHERE emissora_id = 4;

DELETE
FROM "Emissora"
WHERE id = 1;
DELETE
FROM "Emissora"
WHERE id = 4;

DELETE
FROM "FundoInvestimento"
WHERE id = 1;
DELETE
FROM "FundoInvestimento"
WHERE valor_minimo = 5;

DELETE
FROM "PrazoResgate"
WHERE id = 3;
DELETE
FROM "PrazoResgate"
WHERE id = 4;