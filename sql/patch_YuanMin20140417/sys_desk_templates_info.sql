
create table SYS_DESK_TEMPLATES_INFO
(
  ID      VARCHAR2(32) not null,
  NAME    VARCHAR2(64),
  REMARKS VARCHAR2(250)
)
tablespace GWYPLATFORM;
alter table SYS_DESK_TEMPLATES_INFO
  add constraint PK_TEMPLATES primary key (ID)
  using index 
  tablespace GWYPLATFORM;

insert into SYS_DESK_TEMPLATES_INFO (ID, NAME, REMARKS)
values ('1', '»´Õ¯Õ¨“ª≈‰÷√', null);
commit;


