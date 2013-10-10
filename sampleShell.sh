#!/bin/sh

. ./oracle.env


exec_sql <<EOF 

-- elect * from dual ;
-- select * from dualx ;
select * from dual ;
-- select count(*) from bigdata1;
-- select count(*) from bigdata2;

EOF

ret=$?
echo "end status=$ret"