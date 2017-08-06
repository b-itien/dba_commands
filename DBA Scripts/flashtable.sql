#### steps to recover from deleted data in a table####
alter table hr.yinka enable row movement;
select current_scn from v$database;
delete from hr.yinka where last_name like 'A%';
commit;
select count(*) from hr.yinka;
select count(*) from hr.yinka as of scn 12563654----- note DO NOT USE MY SCN!!!!
OR
select * from hr.yinka as of timestamp to_timestamp('2016-APR-20 16:27:00','YYYY-MON-DD HH24:MI:SS');
flashback table hr.yinka to timestamp to_timestamp('2016-APR-20 16:27:00','YYYY-MON-DD HH24:MI:SS');
OR flashback table hr.yinka to scn 12563654----- note DO NOT USE MY SCN!!!!



