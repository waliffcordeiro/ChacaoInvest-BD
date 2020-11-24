CREATE TABLE "Usuario" (
  "id" SERIAL PRIMARY KEY,
  "cargo_id" integer NOT NULL,
  "escolaridade_id" integer,
  "estado_civil_id" integer,
  "genero_id" integer,
  "nacionalidade_id" integer NOT NULL,
  "endereco_id" int NOT NULL,
  "cpf" bigint UNIQUE NOT NULL,
  "rg" bigint UNIQUE NOT NULL,
  "senha" text NOT NULL,
  "nome" text NOT NULL,
  "data_nascimento" date NOT NULL
);

CREATE TABLE "Telefone" (
  "id" SERIAL PRIMARY KEY,
  "usuario_id" integer,
  "ddd" varchar(2) NOT NULL,
  "numero" varchar(10) NOT NULL
);

CREATE TABLE "Cargo" (
  "id" SERIAL PRIMARY KEY,
  "nome" text NOT NULL,
  "is_admin" boolean NOT NULL
);

CREATE TABLE "Endereco" (
  "id" SERIAL PRIMARY KEY,
  "tipo_id" integer,
  "bairro_id" integer NOT NULL,
  "cep" varchar(14) NOT NULL,
  "rua" varchar(20),
  "quadra" integer,
  "lote" integer,
  "numero" integer
);

CREATE TABLE "TipoEndereco" (
  "id" SERIAL PRIMARY KEY,
  "nome" text
);

CREATE TABLE "Estado" (
  "id" SERIAL PRIMARY KEY,
  "pais_id" integer NOT NULL,
  "nome" text NOT NULL
);

CREATE TABLE "Cidade" (
  "id" SERIAL PRIMARY KEY,
  "estado_id" integer NOT NULL,
  "nome" text NOT NULL
);

CREATE TABLE "Bairro" (
  "id" SERIAL PRIMARY KEY,
  "cidade_id" integer NOT NULL,
  "nome" text NOT NULL
);

CREATE TABLE "Pais" (
  "id" SERIAL PRIMARY KEY,
  "nome" text NOT NULL,
  "nacionalidade" text NOT NULL
);

CREATE TABLE "EstadoCivil" (
  "id" SERIAL PRIMARY KEY,
  "nome" text
);

CREATE TABLE "Escolaridade" (
  "id" SERIAL PRIMARY KEY,
  "nome" text NOT NULL,
  "curso" text
);

CREATE TABLE "Genero" (
  "id" SERIAL PRIMARY KEY,
  "nome" text
);

CREATE TABLE "TesouroDireto" (
  "id" SERIAL PRIMARY KEY,
  "indexador_id" integer,
  "nome" text UNIQUE NOT NULL,
  "data_vencimento" date NOT NULL,
  "taxa" float,
  "valor" float
);

CREATE TABLE "Indexador" (
  "id" SERIAL PRIMARY KEY,
  "nome" text
);

CREATE TABLE "FundoInvestimento" (
  "id" SERIAL PRIMARY KEY,
  "prazo_resgate_id" integer NOT NULL,
  "classe_id" integer NOT NULL,
  "nome" text NOT NULL,
  "valor_minimo" integer NOT NULL
);

CREATE TABLE "Classe" (
  "id" SERIAL PRIMARY KEY,
  "nome" text
);

CREATE TABLE "Filiacao" (
  "id" SERIAL PRIMARY KEY,
  "usuario_id" integer NOT NULL,
  "pais_id" integer NOT NULL
);

CREATE TABLE "PrazoResgate" (
  "id" SERIAL PRIMARY KEY,
  "prazo" text
);

CREATE TABLE "RendaFixa" (
  "id" SERIAL PRIMARY KEY,
  "classe_id" integer,
  "emissora_id" integer,
  "nome" text NOT NULL,
  "prazo_vencimento" integer NOT NULL,
  "horario_limite" time NOT NULL,
  "valor_minimo" float NOT NULL,
  "taxa_remuneracao" float
);

CREATE TABLE "Emissora" (
  "id" SERIAL PRIMARY KEY,
  "endereco_id" integer,
  "nome" text NOT NULL
);

CREATE TABLE "AplicacaoTesouro" (
  "id" SERIAL PRIMARY KEY,
  "usuario_id" integer NOT NULL,
  "tesouro_id" integer NOT NULL,
  "quantidade" integer NOT NULL
);

CREATE TABLE "AplicacaoFinanceira" (
  "id" SERIAL PRIMARY KEY,
  "usuario_id" integer NOT NULL,
  "fundo_investimento_id" integer,
  "renda_fixa_id" integer,
  "valor" float NOT NULL
);

ALTER TABLE "Usuario" ADD FOREIGN KEY ("cargo_id") REFERENCES "Cargo" ("id");

ALTER TABLE "Usuario" ADD FOREIGN KEY ("escolaridade_id") REFERENCES "Escolaridade" ("id");

ALTER TABLE "Usuario" ADD FOREIGN KEY ("estado_civil_id") REFERENCES "EstadoCivil" ("id");

ALTER TABLE "Usuario" ADD FOREIGN KEY ("genero_id") REFERENCES "Genero" ("id");

ALTER TABLE "Usuario" ADD FOREIGN KEY ("nacionalidade_id") REFERENCES "Pais" ("id");

ALTER TABLE "Usuario" ADD FOREIGN KEY ("endereco_id") REFERENCES "Endereco" ("id");

ALTER TABLE "Telefone" ADD FOREIGN KEY ("usuario_id") REFERENCES "Usuario" ("id");

ALTER TABLE "Endereco" ADD FOREIGN KEY ("tipo_id") REFERENCES "TipoEndereco" ("id");

ALTER TABLE "Endereco" ADD FOREIGN KEY ("bairro_id") REFERENCES "Bairro" ("id");

ALTER TABLE "Estado" ADD FOREIGN KEY ("pais_id") REFERENCES "Pais" ("id");

ALTER TABLE "Cidade" ADD FOREIGN KEY ("estado_id") REFERENCES "Estado" ("id");

ALTER TABLE "Bairro" ADD FOREIGN KEY ("cidade_id") REFERENCES "Cidade" ("id");

ALTER TABLE "TesouroDireto" ADD FOREIGN KEY ("indexador_id") REFERENCES "Indexador" ("id");

ALTER TABLE "FundoInvestimento" ADD FOREIGN KEY ("prazo_resgate_id") REFERENCES "PrazoResgate" ("id");

ALTER TABLE "FundoInvestimento" ADD FOREIGN KEY ("classe_id") REFERENCES "Classe" ("id");

ALTER TABLE "Filiacao" ADD FOREIGN KEY ("usuario_id") REFERENCES "Usuario" ("id");

ALTER TABLE "Filiacao" ADD FOREIGN KEY ("pais_id") REFERENCES "Usuario" ("id");

ALTER TABLE "RendaFixa" ADD FOREIGN KEY ("classe_id") REFERENCES "Classe" ("id");

ALTER TABLE "RendaFixa" ADD FOREIGN KEY ("emissora_id") REFERENCES "Emissora" ("id");

ALTER TABLE "Emissora" ADD FOREIGN KEY ("endereco_id") REFERENCES "Endereco" ("id");

ALTER TABLE "AplicacaoTesouro" ADD FOREIGN KEY ("usuario_id") REFERENCES "Usuario" ("id");

ALTER TABLE "AplicacaoTesouro" ADD FOREIGN KEY ("tesouro_id") REFERENCES "TesouroDireto" ("id");

ALTER TABLE "AplicacaoFinanceira" ADD FOREIGN KEY ("usuario_id") REFERENCES "Usuario" ("id");

ALTER TABLE "AplicacaoFinanceira" ADD FOREIGN KEY ("fundo_investimento_id") REFERENCES "FundoInvestimento" ("id");

ALTER TABLE "AplicacaoFinanceira" ADD FOREIGN KEY ("renda_fixa_id") REFERENCES "RendaFixa" ("id");
