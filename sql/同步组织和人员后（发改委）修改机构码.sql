--menhu
select * from sys_user where login_name='lindongmei';
select * from sys_org where org_id = 'ff8080813ff5368f014249fd66091a84'
select * from sys_org where pid = 'ff8080813ff5368f014249f974b81a23'
--end


select t.*,t.rowid from tbl_sys_department t where dept_name like '%发改委%' or dept_name like '%商务局%'

select t.*,t.rowid from tbl_sys_department t where dept_id='81483da9642f4b748465a0917134c1c8';
select t.*,t.rowid from tbl_sys_department t where dept_pid='81483da9642f4b748465a0917134c1c8';

update tbl_sys_department 
set comm_org_level = replace(comm_org_level,'1001100710041134','1000100310021070'), 
    comm_org_identy = '1000100310021070'
where dept_pid='81483da9642f4b748465a0917134c1c8' or dept_id='81483da9642f4b748465a0917134c1c8';

update tbl_sys_user 
set comm_org_level = replace(comm_org_level,'1001100710041134','1000100310021070'), 
    comm_org_identy = '1000100310021070'
where dept_id in 
      (select dept_id from tbl_sys_department where dept_pid='81483da9642f4b748465a0917134c1c8')
      or dept_id = '81483da9642f4b748465a0917134c1c8'




select * from tbl_sys_user where dept_id in 
(select dept_id from tbl_sys_department where dept_pid='81483da9642f4b748465a0917134c1c8')
or dept_id = '81483da9642f4b748465a0917134c1c8'


update tbl_sys_user set user_code='fgw' where dept_id in (select dept_id from tbl_sys_department where dept_pid='81483da9642f4b748465a0917134c1c8');
update tbl_sys_user set user_code='fgw' where dept_id='81483da9642f4b748465a0917134c1c8';

select * from tbl_sys_user where user_accounts='lvcongcheng'
