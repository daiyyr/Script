select TABLESPACE_NAME from all_tables where table_name='TBL_SYS_SCHEDULE';


select * from qrtz_triggers_listeners;--ԭ������
select * from qrtz_fired_triggers;--�е���
select * from qrtz_simple_triggers;--�е���,ȴ�Ҳ���
select * from qrtz_cron_triggers;
select * from qrtz_blob_triggers;--δ����
select * from qrtz_triggers;
select * from qrtz_job_details;
select * from qrtz_celendars;--ԭ������
select * from qrtz_paused_trigger_grps;
select * from qrtz_locks;
select * from qrtz_scheduler_state;
select * from all_users;
