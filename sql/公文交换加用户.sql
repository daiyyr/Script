select * from s_org where PATH_ like '%��Υ%' for update
select * from s_user where login_name = 'slwzlb' for update
select * from s_user where login_name = 'duanhaiying' or login_name = 'yangjianbo' for update

insert into s_org_user(S_ORG_ID,s_User_Id) values (17102,11064);

--���Ļ�������
select * from s_org where PATH_ like '%�Ĳ���%' for update

--�м��
select * from s_org_user where s_User_Id='11064' for update
select * from s_org_user where s_org_Id='14180' for update



select * from s_org where 
s_org_pid = (select s_org_id from s_org
 where name_ = '�и�����'
)
 order by seq_no
 for update;
