select * from s_org where name_ = '市府部门'

select * from s_org where path_ like '%政务中心管委会%' for update

update s_org set 
--s_org_pid = 14044,
--G_org_pid = 'a7716a5c80204261934dfee14ebaa2c9',
level_ = 5
where s_org_id = 14872
