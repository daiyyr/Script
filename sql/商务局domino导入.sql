--׼���������޸ı�ṹ tbl_sys_attachment ��DOC����SUFFIX�ĳ�����10��Ϊ100

select * from tbl_portalwb_info_pub t where info_type_id='8a9a873946a90dbc0146b6d7092b038e'

select * from tbl_portalwb_info_pub t 
where info_type_id !='8a9a873946178698014618c1d3490dbe' 
and info_type_id !='8a9a873946dff8f10146e008e9a50054'
and info_type_id !='8a9a87394584044301459289e27d0b44'

select * from tbl_portalwb_info_pub t 
where info_pub_sub_title='���������������칫������ת������ʡ������ֹ�����Ҫ(2013��2017)��֪ͨ'



update tbl_portalwb_info_pub set dept_id='8a9a8739442a666601442a71d9d70d0a', info_type_id='123456'
where dept_id='8a9a8739442a666601442a742c370fbc' and descript is null


8a9a8739442a666601442a742c370fbc
select t.*, t.rowid from tbl_portalwb_info_pub t where t.dept_id = '8a9a8739442a666601442a742c370fbc' and descript is null
select t.*, t.rowid from tbl_portalwb_info_pub_type t where id = '8a9a873946dca4670146ddfa0049006f'
select * from tbl_sys_department where dept_id='8a9a8739442a666601442a71d9d70d0a'
select * from tbl_sys_user where user_id='297e2a8a45402f870145404779fd037a'
select t.*,t.rowid from tbl_sys_user t where dept_id ='8a9a8739442a666601442a742c370fbc'order by comm_create_time
select t.*,t.rowid from tbl_sys_user t where user_name='�����'
select t.*, t.rowid from tbl_portalwb_info_pub_type t
 where name='�������Ͽ�'
  or name='���Ŀ�' 
  or name='���Ŀ�'
  or name='�����'
  or name='��Ϣ����'
  or name='���񹫿�'
  or name='��ʷ�ļ���'
  
--or name='������ʾ'



update tbl_sys_attachment set doc_path=replace(doc_path, 'Z:', 'E:') 
where doc_path like 'Z:\swj%'

update tbl_sys_attachment set doc_path=replace(doc_path, 'E:\swj', 'E:\domino\swj') 
where doc_path like 'E:\swj%'

select count (attachment_id) from tbl_sys_attachment where doc_path like 'Z:\swj%'

delete from tbl_sys_attachment where doc_path like 'E:\swj%'
delete from tbl_portalwb_info_pub where info_type_id is null
select t.*,t.rowid from tbl_sys_attachment t order by comm_create_time desc

select t.*, t.rowid from tbl_sys_attachment t 
where t.biz_id not in
(select info_pub_id from tbl_portalwb_info_pub)
and
( doc_path like 'E:\domino%' or
  doc_path like 'E:\���ݸ�%')
  
select t.*, t.rowid from tbl_sys_attachment t where doc_name='�üͷ�[2009]18��.GD'

select count(doc_name),doc_name doc_name from tbl_sys_attachment  t
where t.biz_id not in
(select info_pub_id from tbl_portalwb_info_pub)
and
( doc_path like 'E:\domino%' or
  doc_path like 'E:\���ݸ�%')
group by doc_name
