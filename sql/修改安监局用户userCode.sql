select * from tbl_sys_user where user_name='������';
select * from tbl_sys_user where user_name='�а�ȫ�����ල�����';
select * from tbl_sys_department where dept_id='8a9a873945a5e6630145c9fb958331fd';
select * from tbl_sys_department where dept_pid='8a9a873945a5e6630145c9f8da602f39';
select * from tbl_sys_user where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a873945a5e6630145c9f8da602f39');

update tbl_sys_user set user_code='ajj' where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a873945a5e6630145c9f8da602f39');
update tbl_sys_user set user_code='ajj' where dept_id='8a9a873945a5e6630145c9f8da602f39';
