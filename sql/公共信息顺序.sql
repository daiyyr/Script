select t.*, t.rowid from tbl_portalwb_data_source t where  datasource_name like'%ί��%'

--��������*****************************
select t.name, d.dept_name,a.datasource_id,a.datasource_name, a.createtime,t.rowid,a.rowid,d.rowid
from tbl_portalwb_info_pub_type t,
tbl_portalwb_data_source a,
tbl_sys_department d
where t.id = a.business_params and d.dept_id =t.org_id and d.dept_name like'%����%'
order by a.createtime asc
--******************************

-- type���department��*****************************
select t.*,t.rowid
from tbl_portalwb_info_pub_type t,
tbl_sys_department d
where d.dept_id =t.org_id and d.dept_name like '%��֯%'
--******************************
select t.*, t.rowid from tbl_portalwb_data_source t where  t.business_params='8a9a873947eca9ba0147ede7015e2634'

select t.*,t.rowid from tbl_portalwb_info_pub t where t.info_type_id='297e2a8a4490293901449034333a005d' order by create_date desc

select * from tbl_sys_department where dept_id = '8a9a8739442a666601442a746f980fbf'
select * from tbl_sys_department where dept_name = '��֯���´�'

--8a9a8739442a666601442a742c370fbc           


select * from tbl_sys_department where dept_name='�������'

select * from tbl_sys_user where user_accounts = 'gaolinna' for update
select * from tbl_sys_department where dept_id = '8a9a873946a90dbc0146b6d7092b038e'
select * from tbl_sys_user where user_id = '8a9a8739442a666601442a846da9109b'


select t.*, t.rowid from tbl_portalwb_data_source t where datasource_name like'֪ͨ����%' and business_params in 
(select id from tbl_portalwb_info_pub_type where org_id = '8a9a8739442a666601442a71d9d70d0a')

select t.*, t.rowid from tbl_portalwb_data_source t where  business_params in 
(select id from tbl_portalwb_info_pub_type where org_id = '297e2a8a45402f870145403eaafe009b')

select t.*, t.rowid from tbl_portalwb_data_source t where datasource_name like'ÿ�վ���%'
select t.*, t.rowid from tbl_portalwb_data_source t where datasource_name like'������������%'
select t.*, t.rowid from tbl_portalwb_data_source t where datasource_name like'%2%'


select * from tbl_portalwb_info_pub_type where name='���óɹ���ʾ'

select t.*, t.rowid from tbl_portalwb_info_pub_type t where name like'������ʾ%' or name like '�����' or name like '֪ͨ����'

select t.*, t.rowid from tbl_portalwb_data_source t where datasource_name like '%�����ƶ�%' or datasource_name = '��ó����'  or datasource_name = 'Ч�ܽ���' 
select t.*, t.rowid from tbl_portalwb_data_source t where datasource_id = '297e2a8a4490293901449034c3050079'

select s.*, s.rowid from tbl_portalwb_info_pub_type t,tbl_portalwb_data_source s
  where t.org_id = '8a9a8739442a666601442a71d9d70d0a' 
  and s.business_params=t.id
order by comm_create_time desc


select s.*, s.rowid from tbl_portalwb_data_source s
 where s.business_params='8a9a8739470fe9cc0147102359ed0100'

select t.*, t.rowid from tbl_portalwb_data_source t where datasource_name like'����԰��%'


--��������Ϣ����
select t.*, t.rowid from tbl_portalwb_info_pub_type t where name like'%��ǰ��ʾ%'
select * from tbl_portalwb_info_pub where info_type_id='8a9a8739470fe9cc01471021a9e100f8' for update
select * from tbl_portalwb_info_pub where info_type_id='8a9a8739470fe9cc01471021a9e100f8' and dept_id not in
(select dept_id from tbl_sys_department ) for update

select * from tbl_sys_user where user_id='8a9a8739442a666601442a846da9109b' for update
8a9a8739442a666601442a746f980fbf
select * from tbl_sys_user where user_name='������' or user_name='�����' for update


select t.*, t.rowid from tbl_portalwb_data_source t where 
datasource_name like'������ʾ' 
or datasource_name like'�����' 
or datasource_name like'֪ͨ����' 
