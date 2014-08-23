select * from s_org where PATH_ like '%两违%' for update
select * from s_user where login_name = 'slwzlb' for update
select * from s_user where login_name = 'duanhaiying' or login_name = 'yangjianbo' for update

insert into s_org_user(S_ORG_ID,s_User_Id) values (17102,11064);

--更改机构名称
select * from s_org where PATH_ like '%文产办%' for update

--中间表
select * from s_org_user where s_User_Id='11064' for update
select * from s_org_user where s_org_Id='14180' for update



select * from s_org where 
s_org_pid = (select s_org_id from s_org
 where name_ = '市府部门'
)
 order by seq_no
 for update;
