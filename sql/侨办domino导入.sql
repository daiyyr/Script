select t.start_date,t.user_id,t.info_pub_subject,t.info_type_Id,t.rowid from tbl_portalwb_info_pub t 
where info_type_id='8a9a873946dff8f10146e26536c804ee' and dept_id='297e2a8a45402f870145403eaafe009b'
order by start_date desc;

--找到无用户的bug纪录
select t.start_date,t.user_id,t.info_pub_subject,t.info_type_Id,t.rowid from tbl_portalwb_info_pub t 
where info_type_id='8a9a873946dff8f10146e26536c804ee' and dept_id='297e2a8a45402f870145403eaafe009b'
and t.user_id not in (select user_id from tbl_sys_user)

--将错误用户改为存在用户
update tbl_portalwb_info_pub t 
set t.user_id = '402881a924476324012447f225f00003'
where t.user_id not in (select user_id from tbl_sys_user)

select * from tbl_sys_user where user_accounts='admin'

select info_pub_subject,count(t.info_pub_subject) repeat from tbl_portalwb_info_pub t 
where info_type_id='8a9a873946dff8f10146e26536c804ee' and dept_id='297e2a8a45402f870145403eaafe009b'
group by (t.info_pub_subject) order by repeat desc

select t.info_pub_subject,t.info_type_Id,t.rowid from tbl_portalwb_info_pub t 
where info_type_id !='8a9a873946178698014618c1d3490dbe' --收文库
and info_type_id !='8a9a873946dff8f10146e008e9a50054'--公文库
and info_type_id !='8a9a873946178698014618c23f250dd3'--公文库2
and info_type_id !='8a9a873946dca4670146ddfa0049006f'--历史收文文档
and info_type_id !='8a9a873946dff8f10146e26536c804ee'--行政事务库(maybe..)

select t.info_pub_subject,t.info_type_Id,t.rowid from tbl_portalwb_info_pub t 
where info_type_id is null


select t.*,t.rowid from tbl_portalwb_info_pub t 
where info_pub_subject='关于参加2008年厦门市荣誉市民侨界人士新春座谈会的邀请函'



update tbl_portalwb_info_pub set dept_id='297e2a8a45402f870145403eaafe009b', info_type_id='8a9a873946dff8f10146e26536c804ee'
where info_type_id='8a9a873946dff8f10146e26536c804ee'

update tbl_portalwb_info_pub set info_type_id='8a9a873946dff8f10146e26536c804ee'
where info_type_id='8a9a8739458404430145928a554c0b52'

select t.*, t.rowid from tbl_portalwb_info_pub_type t where id = '8a9a873946dff8f10146e26536c804ee'
select t.*, t.rowid from tbl_portalwb_info_pub_type t where id = '8a9a873946dff8f10146e008e9a50054'
select t.*, t.rowid from tbl_portalwb_info_pub_type t where id = '8a9a8739458404430145928a554c0b52'
select * from tbl_sys_department where dept_id='297e2a8a45402f870145403eaafe009b'
select * from tbl_sys_user where user_id='297e2a8a45402f870145404779fd037a'
select t.*, t.rowid from tbl_portalwb_info_pub_type t where name='行政事务库' or name='收文库' or name='公文库'



select * from tbl_sys_attachment where doc_path like 'Z:\sqb%'

update tbl_sys_attachment set doc_path=replace(doc_path, 'Z:', 'E:') 
where doc_path like 'Z:\sqb%' AND attachment_id='ab35ae1af3f14e3e89ddfc7fdceb6e7a'

--Z:\sqb\ab35ae1af3f14e3e89ddfc7fdceb6e7a.GD
select * from tbl_sys_attachment 
where attachment_id='ab35ae1af3f14e3e89ddfc7fdceb6e7a'

select t.info_pub_subject,t.info_type_Id,t.rowid from tbl_portalwb_info_pub t 
where biz_id = '8aafd8c31f2e47a894b3c37935acf376'

select * from tbl_portalwb_info_pub

delete from tbl_portalwb_info_pub 
where info_type_id = '8a9a873946dff8f10146e26536c804ee'


