select t.*,t.rowid from SQB_WCSPD t
select t.*,t.rowid from SQB_JBTSWH t

--�����
select t.*,t.rowid from SWJ_JBTSWH t
select t.*,t.rowid from SWJ_WCSPD t where xm='XM'

--���ݿ�����insert into SWJ_JBTSWH(xm,cs,nx,jb,ts) select xm,cs,nx,jb,ts from SQB_JBTSWH
--ɾ��
delete fROM SQB_JBTSWH

select w.xm, sum(w.jbts)used  from swj_wcspd w where 1=1 group by w.xm
