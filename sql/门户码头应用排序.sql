
select * from sys_desk_template_app where app_id = (select apps_id from sys_desk_apps where name='��������')

alter table sys_desk_template_app add SEQ_NO NUMBER(10)

update sys_desk_template_app set seq_no=5;
update sys_desk_template_app set seq_no=3 where app_id in (select apps_id from sys_desk_apps where name='���Ľ���');
update sys_desk_template_app set seq_no=2 where app_id in (select apps_id from sys_desk_apps where name='��������');
update sys_desk_template_app set seq_no=1 where app_id in (select apps_id from sys_desk_apps where name='�ڲ��칫');
