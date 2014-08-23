select * from SYS_SMS;
select * from SYS_SMS_log;
select * from sys_user where user_id='800ee3f953fa43639262a0b0e7e6e479'
select distinct user_name from SYS_SMS_LOG  ;
select  distinct user_id from SYS_SMS  where to_char(create_date,'YYYY-MM-DD HH24:MI:SS') > '2014-03-01 00:00:00'and sms_source is NULL;
select   *  from SYS_SMS  where   to_char(create_date,'YYYY-MM-DD HH24:MI:SS') > '2014-03-01 00:00:00'and sms_source_id  in ('JCSJB', 'DZJC','DZSP','APAS','XMAS','OceanFax','ITYW');
select  * from SYS_SMS  where sms_source is null;
select * from sys_org where org_id in (select org_id from Sys_User where user_id in (select distinct user_id from SYS_SMS));

select * from sys_org where org_id in
(select PID from sys_org where org_id in (select org_id from Sys_User where user_id in (select distinct user_id from SYS_SMS where to_char(create_date,'YYYY-MM-DD HH24:MI:SS' ) > '2014-03-01 00:00:00' and sms_source is NULL )))


