##### here are the steps to perform a flashback database###
sqlplus / as sysdba
alter system set log_archvie_dest_1='location=/home/oracle/archive';---- this is if you are not using the db_recovery_file_dest, which is the default!
create table hr.yinka as select * from hr.employees;
select * from hr.yinka;
set time on
select current_scn from v$database--- to get this current scn 
drop table hr.yinka;
select * from hr.yinka;--- table should be gone
shutdown immediate;
startup mount;
flashback database to timestamp to_timestamp('2016-APR-20 16:07:15','YYYY-MON-DD HH24:MI:SS');
alter database open read only;--- to see if the data is there or not
select count(*) from hr.yinka;--- to see if the data is there or not
shutdown immediate;
startup mount;
alter database open resetlogs;







