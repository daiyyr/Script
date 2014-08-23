select t.*,t.rowid from tbl_sys_module t where modu_name = '发起流程'
select t.*,t.rowid from tbl_sys_basicdata t  where name = '发起流程'

select t.*,t.rowid from tbl_sys_module t where modu_name = '流程查询' or modu_name like '%委托%' or modu_name = '个人事务'
select t.*,t.rowid from tbl_sys_basicdata t  where name = '流程查询' or name like '%委托%' or name='个人事务'

select t.*,t.rowid from tbl_sys_module t where modu_ID='402881be2c39e924012c39edc7bc0003'
