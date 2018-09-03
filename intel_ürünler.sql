--------------------------------------------------------
--  File created - Cuma-Mayýs-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ÝNTEL_URUNLER
--------------------------------------------------------

  CREATE TABLE "HR"."ÝNTEL_URUNLER" 
   (	"ÝNTEL_ÝD" NUMBER(*,0), 
	"ÝD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.ÝNTEL_URUNLER
SET DEFINE OFF;
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('9','i2');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('12','i3');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('41','i9');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('42','i9');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('61','i2');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('8','i1');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('11','i10');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('14','i7');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('1','i7');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('3','i8');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('4','i10');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('5','i3');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('10','i6');
Insert into HR.ÝNTEL_URUNLER (ÝNTEL_ÝD,ÝD) values ('13','i4');
--------------------------------------------------------
--  DDL for Index ÝNTEL_URUNLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ÝNTEL_URUNLER_PK" ON "HR"."ÝNTEL_URUNLER" ("ÝNTEL_ÝD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ÝNTEL_URUNLER
--------------------------------------------------------

  ALTER TABLE "HR"."ÝNTEL_URUNLER" ADD CONSTRAINT "ÝNTEL_URUNLER_PK" PRIMARY KEY ("ÝNTEL_ÝD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."ÝNTEL_URUNLER" MODIFY ("ÝNTEL_ÝD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ÝNTEL_URUNLER
--------------------------------------------------------

  ALTER TABLE "HR"."ÝNTEL_URUNLER" ADD CONSTRAINT "ÝNTEL_URUNLER_FK1" FOREIGN KEY ("ÝD")
	  REFERENCES "HR"."ÝNTEL_TABLE" ("ÝD") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TR" 
before insert
on ÝNTEL_URUNLER
referencing new as new
for each row
begin select SQ.NEXTVAL into :new.ÝNTEL_ÝD from dual;
end;
/
ALTER TRIGGER "HR"."TR" ENABLE;
