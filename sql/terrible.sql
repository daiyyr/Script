select * from BPM_DEF_PROCESS;
select * from BPM_DEF_PROCESSDEFINITIONXML;
select * from tbl_sys_user;
select * from jbpm_node;
select userenv('language') from dual;


update jbpm_transition set NAME_ = replace(NAME_,'process','进程') where NAME_ like '%process%';


update jbpm_transition set NAME_ = replace(NAME_,'进程','process') where NAME_ like '%进程%';

select t.*,t.rowid from jbpm_node t where t.SHOWNAME_='test';
