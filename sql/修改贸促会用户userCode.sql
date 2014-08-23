select * from tbl_sys_user where user_name='周复兴';
select * from tbl_sys_user where user_name='贸促会管理员';
select * from tbl_sys_department where dept_id='8a9a87394573e03b0145743757c8026e';
select * from tbl_sys_department where dept_pid='8a9a87394573e03b01457436375d00f5';
select * from tbl_sys_user where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a87394573e03b01457436375d00f5');

update tbl_sys_user set user_code='mch' where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a87394573e03b01457436375d00f5');
update tbl_sys_user set user_code='mch' where dept_id='8a9a87394573e03b01457436375d00f5';
