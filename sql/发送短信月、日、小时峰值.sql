select * from sys_sms;

select substr(to_char(create_date,'YYYY-MM-DD'),0,4) year,substr(to_char(create_date,'YYYY-MM-DD'),6,2) month, count(sms_id) sms_count from sys_sms 
group by substr(to_char(create_date,'YYYY-MM-DD'),0,4),substr(to_char(create_date,'YYYY-MM-DD'),6,2) order by sms_count desc

select substr(to_char(create_date,'YYYY-MM-DD'),0,4) year,substr(to_char(create_date,'YYYY-MM-DD'),6,2) month,substr(to_char(create_date,'YYYY-MM-DD'),9,2) day,count(sms_id) sms_count from sys_sms 
group by substr(to_char(create_date,'YYYY-MM-DD'),0,4),substr(to_char(create_date,'YYYY-MM-DD'),6,2),substr(to_char(create_date,'YYYY-MM-DD'),9,2) order by sms_count desc;

select substr(to_char(create_date,'YYYY-MM-DD'),0,4) year,substr(to_char(create_date,'YYYY-MM-DD'),6,2) month,substr(to_char(create_date,'YYYY-MM-DD'),9,2) day,substr(to_char(create_date,'YYYY-MM-DD HH24:MI:SS'),12,2) hour,count(sms_id) sms_count from sys_sms 
group by substr(to_char(create_date,'YYYY-MM-DD'),0,4),substr(to_char(create_date,'YYYY-MM-DD'),6,2),substr(to_char(create_date,'YYYY-MM-DD'),9,2),substr(to_char(create_date,'YYYY-MM-DD HH24:MI:SS'),12,2) order by sms_count desc;
