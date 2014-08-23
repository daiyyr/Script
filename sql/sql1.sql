select TABLESPACE_NAME from all_tables where table_name='TBL_SYS_SCHEDULE';


select * from qrtz_triggers_listeners;--原表不存在
select * from qrtz_fired_triggers;--有导出
select * from qrtz_simple_triggers;--有导入,却找不到
select * from qrtz_cron_triggers;
select * from qrtz_blob_triggers;--未导出
select * from qrtz_triggers;
select * from qrtz_job_details;
select * from qrtz_celendars;--原表不存在
select * from qrtz_paused_trigger_grps;
select * from qrtz_locks;
select * from qrtz_scheduler_state;
select * from all_users;
