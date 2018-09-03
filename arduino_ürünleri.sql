--------------------------------------------------------
--  File created - Cuma-May�s-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARDU�NO_URUNLER
--------------------------------------------------------

  CREATE TABLE "HR"."ARDU�NO_URUNLER" 
   (	"ARDU�NO_�D" NUMBER(*,0), 
	"�D" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.ARDU�NO_URUNLER
SET DEFINE OFF;
Insert into HR.ARDU�NO_URUNLER (ARDU�NO_�D,�D) values ('25','r7');
Insert into HR.ARDU�NO_URUNLER (ARDU�NO_�D,�D) values ('23','r5');
--------------------------------------------------------
--  DDL for Index ARDU�NO_URUNLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ARDU�NO_URUNLER_PK" ON "HR"."ARDU�NO_URUNLER" ("ARDU�NO_�D") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ARDU�NO_URUNLER
--------------------------------------------------------

  ALTER TABLE "HR"."ARDU�NO_URUNLER" ADD CONSTRAINT "ARDU�NO_URUNLER_PK" PRIMARY KEY ("ARDU�NO_�D")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."ARDU�NO_URUNLER" MODIFY ("�D" NOT NULL ENABLE);
  ALTER TABLE "HR"."ARDU�NO_URUNLER" MODIFY ("ARDU�NO_�D" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ARDU�NO_URUNLER
--------------------------------------------------------

  ALTER TABLE "HR"."ARDU�NO_URUNLER" ADD CONSTRAINT "ARDU�NO_URUNLER_FK1" FOREIGN KEY ("�D")
	  REFERENCES "HR"."ARDU�NO_TABLE" ("�D") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR2
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TR2" 
before insert
on ARDU�NO_URUNLER
referencing new as new
for each row
begin select SQ.NEXTVAL into :new.ARDU�NO_�D from dual;
end;
/
ALTER TRIGGER "HR"."TR2" ENABLE;
