### how to perform an incomplete recovery if you oost your redo log files##
create table hr.yinka2 as select * from scott.emp;
archive log list;                  -------------------not the sequence #
alter system switch logfile;
/
/
shutdown immediate;
rman target /
startup mount;
run {
set until sequence 5 thread 1;             ----------ensure that you add '1' to the highest sequence # you have. if you have 4 then let it be 5.
restore database;
recover database;
alter database open resetlogs;}

