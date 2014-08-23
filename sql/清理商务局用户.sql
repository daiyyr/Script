--清理商务局用户
update tbl_sys_user set user_accounts=user_accounts||2 
where user_accounts in 
       (select user_accounts from tbl_sys_user where dept_id in 
              (select dept_id from tbl_sys_department where dept_pid='8a9a8739442a666601442a71d9d70d0a')
        )
and user_id not in
        (select user_id from tbl_sys_user where dept_id in 
              (select dept_id from tbl_sys_department where dept_pid='8a9a8739442a666601442a71d9d70d0a')
        )
