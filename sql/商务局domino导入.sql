--准备工作：修改表结构 tbl_sys_attachment 将DOC——SUFFIX的长度由10改为100

select * from tbl_portalwb_info_pub t where info_type_id='8a9a873946a90dbc0146b6d7092b038e'
select * from tbl_portalwb_info_pub t where info_type_id='8a9a873948170b36014820ded969697d' order by start_date desc for update
select t.*, t.rowid from tbl_portalwb_info_pub_type t where name='阅文库最终' 
8a9a873946a90dbc0146b6d769c20394

select * from tbl_portalwb_info_pub t 
where info_type_id !='8a9a873946178698014618c1d3490dbe' 
and info_type_id !='8a9a873946dff8f10146e008e9a50054'
and info_type_id !='8a9a87394584044301459289e27d0b44'

select * from tbl_portalwb_info_pub t 
where info_pub_sub_title='厦门市人民政府办公厅关于转发福建省防震减灾工作纲要(2013～2017)的通知'

select * from tbl_sys_department where dept_name like '%商务局'

update tbl_portalwb_info_pub set dept_id='8a9a8739442a666601442a71d9d70d0a', info_type_id='123456'
where dept_id='8a9a8739442a666601442a742c370fbc' and descript is null


8a9a8739442a666601442a742c370fbc
select t.*, t.rowid from tbl_portalwb_info_pub t where t.dept_id = '8a9a8739442a666601442a742c370fbc' and descript is null
select t.*, t.rowid from tbl_portalwb_info_pub_type t where id = '8a9a873946dca4670146ddfa0049006f'
select * from tbl_sys_department where dept_id='8a9a8739442a666601442a71d9d70d0a'
select * from tbl_sys_user where user_id='297e2a8a45402f870145404779fd037a'
select t.*,t.rowid from tbl_sys_user t where dept_id ='8a9a8739442a666601442a742c370fbc'order by comm_create_time
select t.*,t.rowid from tbl_sys_user t where user_name='许更松'
select t.*, t.rowid from tbl_portalwb_info_pub_type t
 where name='商务资料库'
  or name='发文库' 
  or name='阅文库'
  or name='财务库'
  or name='信息发布'
  or name='财务公开'
  or name='历史文件库'
  or name='保密宣传'

--or name='公开公示'



update tbl_sys_attachment set doc_path=replace(doc_path, 'Z:', 'E:') 
where doc_path like 'Z:\swj%'

update tbl_sys_attachment set doc_path=replace(doc_path, 'Z:\swj', 'E:\domino\swj') 
where doc_path like 'Z:\swj%'

select count (attachment_id) from tbl_sys_attachment where doc_path like 'Z:\swj%'

delete from tbl_sys_attachment where doc_path like 'E:\swj%'
delete from tbl_portalwb_info_pub where info_type_id is null
select t.*,t.rowid from tbl_sys_attachment t order by comm_create_time desc

select t.*, t.rowid from tbl_sys_attachment t 
where t.biz_id not in
(select info_pub_id from tbl_portalwb_info_pub)
and
( doc_path like 'E:\domino%' or
  doc_path like 'E:\数据割%')
  
select t.*, t.rowid from tbl_sys_attachment t where doc_name='厦纪发[2009]18号.GD'

select count(doc_name),doc_name doc_name from tbl_sys_attachment  t
where t.biz_id not in
(select info_pub_id from tbl_portalwb_info_pub)
and
( doc_path like 'E:\domino%' or
  doc_path like 'E:\数据割%')
group by doc_name


select * from tbl_portalwb_info_pub t 
where info_type_id not in 
(select id from tbl_portalwb_info_pub_type )


update tbl_portalwb_info_pub set info_type_id='8a9a873946a90dbc0146b6d7092b038e'
where info_type_id='8a9a873948170b36014820e12f5569e2'
and start_date > '2014-05-20 08:53:50'

delete from tbl_portalwb_info_pub t 
where info_type_id not in 
(select id from tbl_portalwb_info_pub_type )

