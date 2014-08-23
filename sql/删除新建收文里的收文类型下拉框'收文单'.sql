select * from bpm_def_process where name like '%传阅单%' and actor='贸促会管理员';
update bpm_def_process set delflag=1 where name like '%传阅单%' and actor='贸促会管理员';
--  del_flag = '1'
--  bpm是 xx_process_management的缩写
