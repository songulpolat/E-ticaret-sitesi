--------------------------------------------------------
--  File created - Cuma-May�s-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table �NTEL_TABLE
--------------------------------------------------------

  CREATE TABLE "HR"."�NTEL_TABLE" 
   (	"�D" VARCHAR2(20 BYTE), 
	"�SLEMC�" VARCHAR2(20 BYTE), 
	"�NBELLEK" VARCHAR2(20 BYTE), 
	"H�Z" VARCHAR2(20 BYTE), 
	"SOKET" VARCHAR2(20 BYTE), 
	"NES�L" VARCHAR2(20 BYTE), 
	"RES�M" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.�NTEL_TABLE
SET DEFINE OFF;
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i9','xeon','8GB','3.54GHz','2000','4.nesil','~/resimler/xeon_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i20','Altera','4GB','2.4GHz','2000','5.nesil','~/resimler/Altera_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i21','Altera','4GB','3.54GHz','2222','5.nesil','~/resimler/Altera_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i5','corei5','4GB','3.54GHz','2222','4.nesil','~/resimler/corei5_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i11','inteli3','4GB','2.4GHz','2222','5.nesil','~/resimler/inteli3_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i1','celeron','2GB','2.4GHz','2250','3.nesil','~/resimler/celeron_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i2','core2quad','4GB','2.4GHz','1120','4.nesil','~/resimler/core2quad_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i6','corei7','4GB','3.54GHz','3333','4.nesil','~/resimler/corei7_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i10','x-seriesi9','16GB','3.54GHz','2500','6.nesil','~/resimler/x-seriesi9_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i22','pentium','4GB','2.4GHz','2000','5.nesil','~/resimler/pentium_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i3','coreduo','4GB','3.54GHz','5100','5.nesil','~/resimler/coreduo_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i4','corei3','4GB','3.54GHz','5100','5.nesil','~/resimler/corei3_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i7','pentium','8GB','3.54GHz','2000','4.nesil','~/resimler/pentium_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i8','skylake','8GB','3.54GHz','2000','4.nesil','~/resimler/skylake_urunler_.jpg');
Insert into HR.�NTEL_TABLE (�D,�SLEMC�,�NBELLEK,H�Z,SOKET,NES�L,RES�M) values ('i35','pentium','8GB','3.54GHz','2000','5.nesil','~/resimler/pentium_urunler_.jpg');
--------------------------------------------------------
--  DDL for Index �NTEL_TABLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."�NTEL_TABLE_PK" ON "HR"."�NTEL_TABLE" ("�D") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table �NTEL_TABLE
--------------------------------------------------------

  ALTER TABLE "HR"."�NTEL_TABLE" ADD CONSTRAINT "�NTEL_TABLE_PK" PRIMARY KEY ("�D")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."�NTEL_TABLE" MODIFY ("RES�M" NOT NULL ENABLE);
  ALTER TABLE "HR"."�NTEL_TABLE" MODIFY ("NES�L" NOT NULL ENABLE);
  ALTER TABLE "HR"."�NTEL_TABLE" MODIFY ("SOKET" NOT NULL ENABLE);
  ALTER TABLE "HR"."�NTEL_TABLE" MODIFY ("H�Z" NOT NULL ENABLE);
  ALTER TABLE "HR"."�NTEL_TABLE" MODIFY ("�NBELLEK" NOT NULL ENABLE);
  ALTER TABLE "HR"."�NTEL_TABLE" MODIFY ("�SLEMC�" NOT NULL ENABLE);
  ALTER TABLE "HR"."�NTEL_TABLE" MODIFY ("�D" NOT NULL ENABLE);
