select * from tbl_sys_user where user_name='�ܸ���';
select * from tbl_sys_user where user_name='ó�ٻ����Ա';
select * from tbl_sys_department where dept_id='8a9a87394573e03b0145743757c8026e';
select * from tbl_sys_department where dept_pid='8a9a87394573e03b01457436375d00f5';
select * from tbl_sys_user where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a87394573e03b01457436375d00f5');

update tbl_sys_user set user_code='mch' where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a87394573e03b01457436375d00f5');
update tbl_sys_user set user_code='mch' where dept_id='8a9a87394573e03b01457436375d00f5';
