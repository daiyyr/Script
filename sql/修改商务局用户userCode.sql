--menhu
select t.rowid,t.* from sys_user t where login_name='dengluquan' or login_name='xugengsong'
select * from sys_org where org_id = 'ff8080813ff5368f014249fd66091a84'
select * from sys_org where pid = 'ff8080813ff5368f014249f974b81a23'
update sys_org set code='zzb' where pid='ff8080813ff5368f014249f974b81a23'

select * from tbl_sys_user where user_accounts like'xugengsong%'

select * from tbl_sys_department where dept_id='8a9a8739442a666601442a742c370fbc';
select * from tbl_sys_department where dept_pid='8a9a8739442a666601442a71d9d70d0a';
select * from tbl_sys_user where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a8739442a666601442a71d9d70d0a');

update tbl_sys_user set user_code='swj' where dept_id in (select dept_id from tbl_sys_department where dept_pid='8a9a8739442a666601442a71d9d70d0a');
update tbl_sys_user set user_code='swj' where dept_id='8a9a8739442a666601442a71d9d70d0a';

--清理商务局用户
update tbl_sys_user set user_accounts=user_accounts||2 
where user_accounts in 
       (select user_accounts from tbl_sys_user where dept_id in 
              (select dept_id from tbl_sys_department where dept_pid='8a9a8739442a666601442a71d9d70d0a')
        )
and user_id not in
        (select user_id from tbl_sys_user where dept_id in 
              (select dept_id from tbl_sys_department where dept_pid='8a9a8739442a666601442a71d9d70d0a')
        )


--市委办
select t.rowid,t.* from sys_user t where login_name='lihuiyang'
select * from tbl_sys_user where dept_id in (select dept_id from tbl_sys_department where dept_pid='');

update tbl_sys_user set user_code='swb' where dept_id in (select dept_id from tbl_sys_department where dept_pid='');
update tbl_sys_user set user_code='swb' where dept_id='';
