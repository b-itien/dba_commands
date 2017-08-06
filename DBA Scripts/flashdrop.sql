##### steps to recover a dropped table###
show parameter recycebin;  ----- to ensure that it is 'on'
drop table hr.yinka;
select * from hr.yinka;
select original_name, object_name,createtime from dba_recyclebin;
flashback table hr.yinka to before drop; OR flashback table hr."BIN$MPFWsbHfUKPgUAB/AQASkw==$0" to before drop;
select * from hr.yinka;


