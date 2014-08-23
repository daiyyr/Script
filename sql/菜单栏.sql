select t.*,t.rowid from tbl_sys_module t 
where modu_name='已阅发文' or modu_name='待阅发文' or modu_name='新建发文' or modu_name='待办发文' or modu_name='已办发文' or modu_name='发文草稿' or modu_name='发文查询'
