prompt PL/SQL Developer import file
prompt Created on 2014年3月31日 by xaajxt
set feedback off
set define off
prompt Creating TBL_SYS_SCHEDULE...
create table TBL_SYS_SCHEDULE
(
  SCHEDULE_ID     VARCHAR2(32) not null,
  BUSINESS_ID     VARCHAR2(32),
  TRIGGER_RULE    VARCHAR2(100),
  JOB_NAME        VARCHAR2(50),
  JOB_CLS_NAME    VARCHAR2(100),
  JOB_DESCRIPTION VARCHAR2(500),
  JOB_DATA        VARCHAR2(1000),
  MODEL_ID        VARCHAR2(32)
)
tablespace OATBS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table TBL_SYS_SCHEDULE
  add constraint PK_TBL_SYS_SCHEDULE primary key (SCHEDULE_ID)
  using index 
  tablespace OAIDXTBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Disabling triggers for TBL_SYS_SCHEDULE...
alter table TBL_SYS_SCHEDULE disable all triggers;
prompt Deleting TBL_SYS_SCHEDULE...
delete from TBL_SYS_SCHEDULE;
commit;
prompt Loading TBL_SYS_SCHEDULE...
prompt Table is empty
prompt Enabling triggers for TBL_SYS_SCHEDULE...
alter table TBL_SYS_SCHEDULE enable all triggers;
set feedback on
set define on
prompt Done.
