--------------------------------------------------------
--  File created - Cuma-May�s-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table �NTEL_URUNLER
--------------------------------------------------------

  CREATE TABLE "HR"."�NTEL_URUNLER" 
   (	"�NTEL_�D" NUMBER(*,0), 
	"�D" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.�NTEL_URUNLER
SET DEFINE OFF;
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('9','i2');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('12','i3');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('41','i9');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('42','i9');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('61','i2');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('8','i1');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('11','i10');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('14','i7');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('1','i7');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('3','i8');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('4','i10');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('5','i3');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('10','i6');
Insert into HR.�NTEL_URUNLER (�NTEL_�D,�D) values ('13','i4');
--------------------------------------------------------
--  DDL for Index �NTEL_URUNLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."�NTEL_URUNLER_PK" ON "HR"."�NTEL_URUNLER" ("�NTEL_�D") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table �NTEL_URUNLER
--------------------------------------------------------

  ALTER TABLE "HR"."�NTEL_URUNLER" ADD CONSTRAINT "�NTEL_URUNLER_PK" PRIMARY KEY ("�NTEL_�D")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."�NTEL_URUNLER" MODIFY ("�NTEL_�D" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table �NTEL_URUNLER
--------------------------------------------------------

  ALTER TABLE "HR"."�NTEL_URUNLER" ADD CONSTRAINT "�NTEL_URUNLER_FK1" FOREIGN KEY ("�D")
	  REFERENCES "HR"."�NTEL_TABLE" ("�D") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Trigger TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TR" 
before insert
on �NTEL_URUNLER
referencing new as new
for each row
begin select SQ.NEXTVAL into :new.�NTEL_�D from dual;
end;
/
ALTER TRIGGER "HR"."TR" ENABLE;
