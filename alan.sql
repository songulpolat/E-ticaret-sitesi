--------------------------------------------------------
--  File created - Cuma-Mayýs-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ALAN
--------------------------------------------------------

  CREATE TABLE "HR"."ALAN" 
   (	"AD" VARCHAR2(20 BYTE), 
	"PAROLA" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.ALAN
SET DEFINE OFF;
Insert into HR.ALAN (AD,PAROLA) values ('songul','seyma');
Insert into HR.ALAN (AD,PAROLA) values ('polat','alemdar');
Insert into HR.ALAN (AD,PAROLA) values (null,null);
