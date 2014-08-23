select b.show_level,t.comm_buiness_order, b.*,b.rowid
  from tbl_sys_module t
 inner join tbl_sys_basicdata b
    on t.permisson_id = b.permission_id
 where t.comm_record_identy = '1' and( b.name like '%办结%' or b.name like '%已阅%' or b.name like '%待阅%'
 or b.name='新建收文' or b.name like'待办%' or b.name like'已办%'
or b.name='%草稿' or b.name like'%文查询')
 order by b.show_level, t.comm_buiness_order 

select b.*,b.rowid from tbl_sys_basicdata b where 
b.name like '%办结%' or b.name like '%已阅%' or b.name like '%待阅%' 
or b.name='新建收文' or b.name like'待办%' or b.name like'已办%'
or b.name='%草稿' or b.name like'%文查询'
