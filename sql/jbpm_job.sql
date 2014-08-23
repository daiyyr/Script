prompt PL/SQL Developer import file
prompt Created on 2014年3月31日 by xaajxt
set feedback off
set define off
prompt Creating JBPM_JOB...
create table JBPM_JOB
(
  ID_               NUMBER(19) not null,
  CLASS_            CHAR(1 CHAR) not null,
  VERSION_          NUMBER(10) not null,
  DUEDATE_          TIMESTAMP(6),
  PROCESSINSTANCE_  NUMBER(19),
  TOKEN_            NUMBER(19),
  TASKINSTANCE_     NUMBER(19),
  ISSUSPENDED_      NUMBER(1),
  ISEXCLUSIVE_      NUMBER(1),
  LOCKOWNER_        VARCHAR2(255 CHAR),
  LOCKTIME_         TIMESTAMP(6),
  EXCEPTION_        VARCHAR2(4000 CHAR),
  RETRIES_          NUMBER(10),
  NAME_             VARCHAR2(255 CHAR),
  REPEAT_           VARCHAR2(255 CHAR),
  TRANSITIONNAME_   VARCHAR2(255 CHAR),
  ACTION_           NUMBER(19),
  GRAPHELEMENTTYPE_ VARCHAR2(255 CHAR),
  GRAPHELEMENT_     NUMBER(19),
  NODE_             NUMBER(19),
  MESSAGEKEY_       VARCHAR2(255 CHAR),
  TASKFLAG_         NUMBER(2),
  REPORTCOUNT_      NUMBER,
  RUNCOUNT_         NUMBER
)
tablespace OATBS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table JBPM_JOB
  add primary key (ID_)
  using index 
  tablespace OAIDXTBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table JBPM_JOB
  add constraint FK_JOB_ACTION foreign key (ACTION_)
  references JBPM_ACTION (ID_);
alter table JBPM_JOB
  add constraint FK_JOB_NODE foreign key (NODE_)
  references JBPM_NODE (ID_);
alter table JBPM_JOB
  add constraint FK_JOB_PRINST foreign key (PROCESSINSTANCE_)
  references JBPM_PROCESSINSTANCE (ID_);
alter table JBPM_JOB
  add constraint FK_JOB_TOKEN foreign key (TOKEN_)
  references JBPM_TOKEN (ID_);
alter table JBPM_JOB
  add constraint FK_JOB_TSKINST foreign key (TASKINSTANCE_)
  references JBPM_TASKINSTANCE (ID_);
create index IDX_JOB_PRINST on JBPM_JOB (PROCESSINSTANCE_)
  tablespace OAIDXTBS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_JOB_TOKEN on JBPM_JOB (TOKEN_)
  tablespace OAIDXTBS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_JOB_TSKINST on JBPM_JOB (TASKINSTANCE_)
  tablespace OAIDXTBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt Disabling triggers for JBPM_JOB...
alter table JBPM_JOB disable all triggers;
prompt Disabling foreign key constraints for JBPM_JOB...
alter table JBPM_JOB disable constraint FK_JOB_ACTION;
alter table JBPM_JOB disable constraint FK_JOB_NODE;
alter table JBPM_JOB disable constraint FK_JOB_PRINST;
alter table JBPM_JOB disable constraint FK_JOB_TOKEN;
alter table JBPM_JOB disable constraint FK_JOB_TSKINST;
prompt Deleting JBPM_JOB...
delete from JBPM_JOB;
commit;
prompt Loading JBPM_JOB...
prompt Table is empty
prompt Enabling foreign key constraints for JBPM_JOB...
alter table JBPM_JOB enable constraint FK_JOB_ACTION;
alter table JBPM_JOB enable constraint FK_JOB_NODE;
alter table JBPM_JOB enable constraint FK_JOB_PRINST;
alter table JBPM_JOB enable constraint FK_JOB_TOKEN;
alter table JBPM_JOB enable constraint FK_JOB_TSKINST;
prompt Enabling triggers for JBPM_JOB...
alter table JBPM_JOB enable all triggers;
set feedback on
set define on
prompt Done.
