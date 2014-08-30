select t.user_px,t.* from tbl_sys_user t where user_accounts='cailiangya' or user_accounts='yeyongxi' OR USER_ACCOUNTS='luoguxi' or user_accounts='chenxiaoling' OR user_accounts='rupeng' for update
select * from tbl_sys_user_department where user_SHOW_name='Ò¶ÓÀÎ÷' or user_SHOW_name='Âæ¹ÈêØ' or user_SHOW_name='³ÂÏşÁá' or user_SHOW_name='ÈêÅô' or user_SHOW_name='Ôø»İÁ«'

update tbl_sys_user u set u.user_px = 
(select i.sort_num from tbl_sys_user_department i where u.user_id=i.user_id)
--(select t.sort_num from (select i.user_id user_id,i.sort_num sort_num from tbl_sys_user_department i)t) 
--where u.user_id=i.user_id
where 
u.user_px='9999' 

and u.user_id = i.user_id

sort_num
