#!/bin/sh

. ./oracle.env

exec_sql <<EOF 
select object_name,original_name,type from user_recyclebin;
EOF

sure_and_exit "purge all table?"

exec_sql <<EOF 
purge user_recyclebin;
EOF

