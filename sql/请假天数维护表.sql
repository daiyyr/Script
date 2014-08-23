select t.*,t.rowid from SQB_WCSPD t
select t.*,t.rowid from SQB_JBTSWH t

--商务局
select t.*,t.rowid from SWJ_JBTSWH t
select t.*,t.rowid from SWJ_WCSPD t where xm='XM'

--数据拷贝：insert into SWJ_JBTSWH(xm,cs,nx,jb,ts) select xm,cs,nx,jb,ts from SQB_JBTSWH
--删除
delete fROM SQB_JBTSWH

select w.xm, sum(w.jbts)used  from swj_wcspd w where 1=1 group by w.xm
