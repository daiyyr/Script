select b.show_level,t.comm_buiness_order, b.*,b.rowid
  from tbl_sys_module t
 inner join tbl_sys_basicdata b
    on t.permisson_id = b.permission_id
 where t.comm_record_identy = '1' and( b.name like '%���%' or b.name like '%����%' or b.name like '%����%'
 or b.name='�½�����' or b.name like'����%' or b.name like'�Ѱ�%'
or b.name='%�ݸ�' or b.name like'%�Ĳ�ѯ')
 order by b.show_level, t.comm_buiness_order 

select b.*,b.rowid from tbl_sys_basicdata b where 
b.name like '%���%' or b.name like '%����%' or b.name like '%����%' 
or b.name='�½�����' or b.name like'����%' or b.name like'�Ѱ�%'
or b.name='%�ݸ�' or b.name like'%�Ĳ�ѯ'
