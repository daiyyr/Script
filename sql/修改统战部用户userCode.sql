select * from tbl_sys_user where user_name='ͳս������Ա';
select * from tbl_sys_user where user_name='�а�ȫ�����ල�����';
select * from tbl_sys_department where dept_id='8a9a873945a5e6630145a79e70610e7f';
select * from tbl_sys_user where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a873945a5e6630145a79e70610e7f');

update tbl_sys_user set user_code='tzb' where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a873945a5e6630145a79e70610e7f');
update tbl_sys_user set user_code='tzb' where dept_id='8a9a873945a5e6630145a79e70610e7f';
