update sys_user set password=(select password from sys_user where login_name='linshunming')
where user_id not in (
select user_id from sys_user where
 org_id in (select org_id from sys_org where pid='0e3d26749c594dd99860bd36d4983061') 
 or org_id='0e3d26749c594dd99860bd36d4983061'
 or org_id in (select org_id from sys_org where pid='5a85cf8f43281c1301432d838fbf0000') 
 or org_id='5a85cf8f43281c1301432d838fbf0000'
 or org_id in (select org_id from sys_org where pid='b2163df6795e4b5c81658846196eb58b') 
 or org_id='b2163df6795e4b5c81658846196eb58b'
 )

 
select * from sys_user where user_id not in (
select user_id from sys_user where
 org_id in (select org_id from sys_org where pid='0e3d26749c594dd99860bd36d4983061') 
 or org_id='0e3d26749c594dd99860bd36d4983061'
 or org_id in (select org_id from sys_org where pid='5a85cf8f43281c1301432d838fbf0000') 
 or org_id='5a85cf8f43281c1301432d838fbf0000'
 or org_id in (select org_id from sys_org where pid='b2163df6795e4b5c81658846196eb58b') 
 or org_id='b2163df6795e4b5c81658846196eb58b'
 )


select * from sys_org where name like '%Í³Õ½²¿%';
select * from sys_org where pid='0e3d26749c594dd99860bd36d4983061';

select user_id from sys_user where
 org_id in (select org_id from sys_org where pid='0e3d26749c594dd99860bd36d4983061') 
 or org_id='0e3d26749c594dd99860bd36d4983061'
 or org_id in (select org_id from sys_org where pid='5a85cf8f43281c1301432d838fbf0000') 
 or org_id='5a85cf8f43281c1301432d838fbf0000'
 or org_id in (select org_id from sys_org where pid='b2163df6795e4b5c81658846196eb58b') 
 or org_id='b2163df6795e4b5c81658846196eb58b'
