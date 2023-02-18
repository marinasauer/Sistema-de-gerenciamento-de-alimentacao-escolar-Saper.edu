--------------------------------------------------------
--  Arquivo criado - sábado-fevereiro-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMINISTRADOR
--------------------------------------------------------

  CREATE TABLE "ADMINISTRADOR" 
   (	"ID_ADMIN" NUMBER, 
	"NOME" VARCHAR2(25 BYTE), 
	"CNPJ" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AVALIACAO
--------------------------------------------------------

  CREATE TABLE "AVALIACAO" 
   (	"ID_AVALIACAO" NUMBER, 
	"NOTA" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CARDAPIO
--------------------------------------------------------

  CREATE TABLE "CARDAPIO" 
   (	"ID_REFEICAO" NUMBER, 
	"DATA" DATE, 
	"PRECO" BINARY_DOUBLE, 
	"DESCRICAO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CARTAO_ACESSO
--------------------------------------------------------

  CREATE TABLE "CARTAO_ACESSO" 
   (	"ID_CARTAO" NUMBER, 
	"SALDO" BINARY_DOUBLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHECKIN
--------------------------------------------------------

  CREATE TABLE "CHECKIN" 
   (	"ID_CHECKIN" NUMBER, 
	"DATA" DATE, 
	"HORA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMENSAL
--------------------------------------------------------

  CREATE TABLE "COMENSAL" 
   (	"ID_COMENSAL" NUMBER, 
	"NOME_COMENSAL" VARCHAR2(25 BYTE), 
	"MATRICULA" VARCHAR2(20 BYTE), 
	"CPF" VARCHAR2(11 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMUNICADO
--------------------------------------------------------

  CREATE TABLE "COMUNICADO" 
   (	"ID_COMUNICADO" NUMBER, 
	"DATA" VARCHAR2(20 BYTE), 
	"MENSAGEM" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECARGA
--------------------------------------------------------

  CREATE TABLE "RECARGA" 
   (	"ID_RECARGA" VARCHAR2(20 BYTE), 
	"DATA" DATE, 
	"VALOR" BINARY_DOUBLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RELATORIO
--------------------------------------------------------

  CREATE TABLE "RELATORIO" 
   (	"ID_RELATORIO" NUMBER, 
	"DATA" DATE, 
	"CONSUMO" BINARY_DOUBLE, 
	"DEMANDA" BINARY_DOUBLE, 
	"NUM_COMENSAIS" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SUGESTOES
--------------------------------------------------------

  CREATE TABLE "SUGESTOES" 
   (	"ID_SUGESTAO" NUMBER, 
	"MENSAGEM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into ADMINISTRADOR
SET DEFINE OFF;
REM INSERTING into AVALIACAO
SET DEFINE OFF;
REM INSERTING into CARDAPIO
SET DEFINE OFF;
REM INSERTING into CARTAO_ACESSO
SET DEFINE OFF;
REM INSERTING into CHECKIN
SET DEFINE OFF;
REM INSERTING into COMENSAL
SET DEFINE OFF;
REM INSERTING into COMUNICADO
SET DEFINE OFF;
REM INSERTING into RECARGA
SET DEFINE OFF;
REM INSERTING into RELATORIO
SET DEFINE OFF;
REM INSERTING into SUGESTOES
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index COMENSAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMENSAL_PK" ON "COMENSAL" ("ID_COMENSAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CHECKIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHECKIN_PK" ON "CHECKIN" ("ID_CHECKIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RECARGA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RECARGA_PK" ON "RECARGA" ("ID_RECARGA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CARTAO_ACESSO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CARTAO_ACESSO_PK" ON "CARTAO_ACESSO" ("ID_CARTAO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COMUNICADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMUNICADO_PK" ON "COMUNICADO" ("ID_COMUNICADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ADMINISTRADOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMINISTRADOR_PK" ON "ADMINISTRADOR" ("ID_ADMIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SUGESTOES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUGESTOES_PK" ON "SUGESTOES" ("ID_SUGESTAO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RELATORIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RELATORIO_PK" ON "RELATORIO" ("ID_RELATORIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AVALIACAO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AVALIACAO_PK" ON "CARDAPIO" ("ID_REFEICAO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CARDAPIO
--------------------------------------------------------

  ALTER TABLE "CARDAPIO" MODIFY ("ID_REFEICAO" NOT NULL ENABLE);
  ALTER TABLE "CARDAPIO" MODIFY ("DATA" NOT NULL ENABLE);
  ALTER TABLE "CARDAPIO" MODIFY ("PRECO" NOT NULL ENABLE);
  ALTER TABLE "CARDAPIO" MODIFY ("DESCRICAO" NOT NULL ENABLE);
  ALTER TABLE "CARDAPIO" ADD CONSTRAINT "AVALIACAO_PK" PRIMARY KEY ("ID_REFEICAO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHECKIN
--------------------------------------------------------

  ALTER TABLE "CHECKIN" MODIFY ("ID_CHECKIN" NOT NULL ENABLE);
  ALTER TABLE "CHECKIN" MODIFY ("DATA" NOT NULL ENABLE);
  ALTER TABLE "CHECKIN" MODIFY ("HORA" NOT NULL ENABLE);
  ALTER TABLE "CHECKIN" ADD CONSTRAINT "CHECKIN_PK" PRIMARY KEY ("ID_CHECKIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMENSAL
--------------------------------------------------------

  ALTER TABLE "COMENSAL" MODIFY ("ID_COMENSAL" NOT NULL ENABLE);
  ALTER TABLE "COMENSAL" MODIFY ("NOME_COMENSAL" NOT NULL ENABLE);
  ALTER TABLE "COMENSAL" MODIFY ("CPF" NOT NULL ENABLE);
  ALTER TABLE "COMENSAL" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "COMENSAL" ADD CONSTRAINT "COMENSAL_PK" PRIMARY KEY ("ID_COMENSAL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMUNICADO
--------------------------------------------------------

  ALTER TABLE "COMUNICADO" MODIFY ("ID_COMUNICADO" NOT NULL ENABLE);
  ALTER TABLE "COMUNICADO" ADD CONSTRAINT "COMUNICADO_PK" PRIMARY KEY ("ID_COMUNICADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMINISTRADOR
--------------------------------------------------------

  ALTER TABLE "ADMINISTRADOR" MODIFY ("ID_ADMIN" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR" MODIFY ("CNPJ" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRADOR" ADD CONSTRAINT "ADMINISTRADOR_PK" PRIMARY KEY ("ID_ADMIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECARGA
--------------------------------------------------------

  ALTER TABLE "RECARGA" MODIFY ("ID_RECARGA" NOT NULL ENABLE);
  ALTER TABLE "RECARGA" MODIFY ("VALOR" NOT NULL ENABLE);
  ALTER TABLE "RECARGA" ADD CONSTRAINT "RECARGA_PK" PRIMARY KEY ("ID_RECARGA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AVALIACAO
--------------------------------------------------------

  ALTER TABLE "AVALIACAO" MODIFY ("ID_AVALIACAO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CARTAO_ACESSO
--------------------------------------------------------

  ALTER TABLE "CARTAO_ACESSO" MODIFY ("ID_CARTAO" NOT NULL ENABLE);
  ALTER TABLE "CARTAO_ACESSO" MODIFY ("SALDO" NOT NULL ENABLE);
  ALTER TABLE "CARTAO_ACESSO" ADD CONSTRAINT "CARTAO_ACESSO_PK" PRIMARY KEY ("ID_CARTAO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RELATORIO
--------------------------------------------------------

  ALTER TABLE "RELATORIO" MODIFY ("ID_RELATORIO" NOT NULL ENABLE);
  ALTER TABLE "RELATORIO" MODIFY ("DATA" NOT NULL ENABLE);
  ALTER TABLE "RELATORIO" ADD CONSTRAINT "RELATORIO_PK" PRIMARY KEY ("ID_RELATORIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SUGESTOES
--------------------------------------------------------

  ALTER TABLE "SUGESTOES" MODIFY ("ID_SUGESTAO" NOT NULL ENABLE);
  ALTER TABLE "SUGESTOES" ADD CONSTRAINT "SUGESTOES_PK" PRIMARY KEY ("ID_SUGESTAO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
