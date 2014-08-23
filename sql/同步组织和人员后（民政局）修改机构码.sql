--menhu
select * from sys_user where login_name='lindongmei';
select * from sys_org where org_id = 'ff8080813ff5368f014249fd66091a84'
select * from sys_org where pid = 'ff8080813ff5368f014249f974b81a23'
--end


select t.*,t.rowid from tbl_sys_department t where dept_name like '%民政局%' or dept_name like '%商务局%'

select t.*,t.rowid from tbl_sys_department t where dept_id='96db30d8f44c4135a6b3ffc54a74cf9c';
select t.*,t.rowid from tbl_sys_department t where dept_pid='96db30d8f44c4135a6b3ffc54a74cf9c';

update tbl_sys_department 
set comm_org_level = replace(comm_org_level,'1001100710041072','1000100310021133'), 
    comm_org_identy = '1000100310021133'
where dept_pid='96db30d8f44c4135a6b3ffc54a74cf9c' or dept_id='96db30d8f44c4135a6b3ffc54a74cf9c';

update tbl_sys_user 
set comm_org_level = replace(comm_org_level,'1001100710041072','1000100310021133'), 
    comm_org_identy = '1000100310021133'
where dept_id in 
      (select dept_id from tbl_sys_department where dept_pid='96db30d8f44c4135a6b3ffc54a74cf9c')
      or dept_id = '96db30d8f44c4135a6b3ffc54a74cf9c'


select * from tbl_sys_user where dept_id in 
(select dept_id from tbl_sys_department where dept_pid='96db30d8f44c4135a6b3ffc54a74cf9c')
or dept_id = '96db30d8f44c4135a6b3ffc54a74cf9c'


update tbl_sys_user set user_code='mzj' where dept_id in (select dept_id from tbl_sys_department where dept_pid='96db30d8f44c4135a6b3ffc54a74cf9c');
update tbl_sys_user set user_code='mzj' where dept_id='96db30d8f44c4135a6b3ffc54a74cf9c';

