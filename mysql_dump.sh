#!/bin/bash
user=${a:-root}
pass=${b:-"root pass"}
output=${c:-result}
mode=${d:-all}  ### specific,all,table

if [ $mode == "all" ] 
then
  echo "" > $output
  mysqldump -u $user -p"$pass" --single-transaction --routines --triggers --events --add-drop-database --add-drop-table --all-databases --master-data=2 --extended-insert --quick --log-error=/tmp/file.dump.log > "$output"
elif [ $mode == "specific" ]
then
  echo "" > $output
elif [ $mode == "table" ]
then
  echo "" > $output
fi
