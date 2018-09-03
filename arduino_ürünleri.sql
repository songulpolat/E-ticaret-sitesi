--------------------------------------------------------
--  File created - Cuma-Mayýs-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARDUÝNO_URUNLER
--------------------------------------------------------

  CREATE TABLE "HR"."ARDUÝNO_URUNLER" 
   (	"ARDUÝNO_ÝD" NUMBER(*,0), 
	"ÝD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.ARDUÝNO_URUNLER
SET DEFINE OFF;
Insert into HR.ARDUÝNO_URUNLER (ARDUÝNO_ÝD,ÝD) values ('25','r7');
Insert into HR.ARDUÝNO_URUNLER (ARDUÝNO_ÝD,ÝD) values ('23','r5');
--------------------------------------------------------
--  DDL for Index ARDUÝNO_URUNLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ARDUÝNO_URUNLER_PK" ON "HR"."ARDUÝNO_URUNLER" ("ARDUÝNO_ÝD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ARDUÝNO_URUNLER
--------------------------------------------------------

  ALTER TABLE "HR"."ARDUÝNO_URUNLER" ADD CONSTRAINT "ARDUÝNO_URUNLER_PK" PRIMARY KEY ("ARDUÝNO_ÝD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."ARDUÝNO_URUNLER" MODIFY ("ÝD" NOT NULL ENABLE);
  ALTER TABLE "HR"."ARDUÝNO_URUNLER" MODIFY ("ARDUÝNO_ÝD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ARDUÝNO_URUNLER
--------------------------------------------------------

  ALTER TABLE "HR"."ARDUÝNO_URUNLER" ADD CONSTRAINT "ARDUÝNO_URUNLER_FK1" FOREIGN KEY ("ÝD")
	  REFERENCES "HR"."ARDUÝNO_TABLE" ("ÝD") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR2
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TR2" 
before insert
on ARDUÝNO_URUNLER
referencing new as new
for each row
begin select SQ.NEXTVAL into :new.ARDUÝNO_ÝD from dual;
end;
/
ALTER TRIGGER "HR"."TR2" ENABLE;
