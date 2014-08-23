select * from tbl_archives_send where dept_id='8a9a8739442a666601442a71d9d70d0a'

select T.*,u.user_name,T.ROWID
from tbl_archives_send T, tbl_sys_user u 
where T.dept_id='8a9a8739442a666601442a71d9d70d0a'
  and T.COMM_CREATOR=u.user_id

select * from tbl_sys_department where dept_name='市商务局'
