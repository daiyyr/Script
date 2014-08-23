
create table SYS_DESK_TEMPLATE_APP
(
  ID          VARCHAR2(32) not null,
  APP_ID      VARCHAR2(32),
  TEMPLATE_ID VARCHAR2(32),
  LOCATION    VARCHAR2(32),
  APP_TYPE    VARCHAR2(32)
)
tablespace GWYPLATFORM;
comment on table SYS_DESK_TEMPLATE_APP
  is '应用所在位置
(desk1,desk2,desk3,desk4,dock,folder)
';
alter table SYS_DESK_TEMPLATE_APP
  add constraint PK_DESK_TEMPLATE primary key (ID)
  using index 
  tablespace GWYPLATFORM;

insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('1', '402881e53a96aa95013a96ecc4050005', '1', 'dockapp', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('2', '402881e43b01d509013b0226de350005', '1', 'dockapp', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('3', '402881e539f633d10139f641e6f90001', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('4', '402881e53a8b2b5b013a8b8289cc000e', '1', 'dockapp', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('5', '5a85cf8f4298981c014298b763b70003', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('6', '4028af8142e0975b0142e0ca9adf0005', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('7', '5a85cf8f4298981c014298b20c560000', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('8', '4028af8142e0975b0142e0da1de50013', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('9', '4028af8142e0975b0142e0da9dee0014', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('10', '4028af8142e0975b0142e0dd66af0018', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('11', '4028af8142e1cec00142e20c86ff0003', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('12', '4028af8142e1cec00142e20dc2c70004', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('13', '4028af8142e1cec00142e212c5f0000b', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('14', '4028af8142e1cec00142e2167e74000c', '1', 'desk3app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('15', '5a85cf8f4298981c014298b3baec0001', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('16', '5a85cf8f4298981c014298b53bae0002', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('17', '4028af8142dfc1970142e030f42a0008', '1', 'dockapp', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('18', '4028af8142dfc1970142e031cbcc0009', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('19', '4028af8142e0975b0142e0d8fa2d0011', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('20', '4028af8142e0975b0142e0d9c96e0012', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('21', '4028af8142e0975b0142e0e05f6e0019', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('22', '4028af8142e0975b0142e0db229d0016', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('23', '4028af8142e0975b0142e0e15fcb001b', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('24', '4028af8142e1cec00142e20a631b0001', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('25', '4028af8142e1cec00142e20bf1080002', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('26', '4028af8142e1cec00142e20f88940005', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('27', '4028af8142e0975b0142e0cb6c500006', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('28', '5a85cf8f4298981c014298c2fab5000c', '1', 'desk1app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('29', '4028af8142e0975b0142e0dc895b0017', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('30', '4028af8142e1cec00142e217a111000d', '1', 'desk3app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('31', '297e2a8a455f0861014562f005da0006', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('32', '297e2a8a455f0861014562ef85b90005', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('33', '297e2a8a455f0861014562f08e230007', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('34', '297e2a8a455f0861014562f112790008', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('35', '297e2a8a455f0861014562f182590009', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('36', '297e2a8a455f0861014562ec261e0002', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('37', '297e2a8a455f0861014562ee05d10003', '1', 'desk2app', 'app');
insert into SYS_DESK_TEMPLATE_APP (ID, APP_ID, TEMPLATE_ID, LOCATION, APP_TYPE)
values ('38', '297e2a8a455f0861014562ee830b0004', '1', 'desk2app', 'app');
commit;

